package com.birbit.android.jobqueue.persistentQueue.sqlite;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDoneException;
import android.database.sqlite.SQLiteStatement;
import android.support.annotation.NonNull;
import com.birbit.android.jobqueue.Constraint;
import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.JobHolder;
import com.birbit.android.jobqueue.JobQueue;
import com.birbit.android.jobqueue.config.Configuration;
import com.birbit.android.jobqueue.log.JqLog;
import com.birbit.android.jobqueue.persistentQueue.sqlite.SqlHelper;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import org.apache.commons.p018io.IOUtils;
/* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue.class */
public class SqliteJobQueue implements JobQueue {

    /* renamed from: db */
    private SQLiteDatabase f90db;
    private DbOpenHelper dbOpenHelper;
    private JobSerializer jobSerializer;
    private FileStorage jobStorage;
    private final StringBuilder reusedStringBuilder = new StringBuilder();
    private final long sessionId;
    private SqlHelper sqlHelper;
    private final WhereQueryCache whereQueryCache;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$InvalidJobException.class */
    public static class InvalidJobException extends Exception {
        InvalidJobException(String str) {
            super(str);
        }

        InvalidJobException(String str, Throwable th) {
            super(str, th);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JavaSerializer.class */
    public static class JavaSerializer implements JobSerializer {
        @Override // com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.JobSerializer
        public <T extends Job> T deserialize(byte[] bArr) throws IOException, ClassNotFoundException {
            Throwable th;
            ObjectInputStream objectInputStream = null;
            if (bArr == null || bArr.length == 0) {
                return null;
            }
            try {
                ObjectInputStream objectInputStream2 = new ObjectInputStream(new ByteArrayInputStream(bArr));
                try {
                    T t = (T) ((Job) objectInputStream2.readObject());
                    if (objectInputStream2 != null) {
                        objectInputStream2.close();
                    }
                    return t;
                } catch (Throwable th2) {
                    th = th2;
                    objectInputStream = objectInputStream2;
                    if (objectInputStream != null) {
                        objectInputStream.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // com.birbit.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.JobSerializer
        public byte[] serialize(Object obj) throws IOException {
            Throwable th;
            ByteArrayOutputStream byteArrayOutputStream;
            ByteArrayOutputStream byteArrayOutputStream2;
            if (obj == null) {
                return null;
            }
            try {
                byteArrayOutputStream2 = new ByteArrayOutputStream();
            } catch (Throwable th2) {
                th = th2;
                byteArrayOutputStream = null;
            }
            try {
                new ObjectOutputStream(byteArrayOutputStream2).writeObject(obj);
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (byteArrayOutputStream2 != null) {
                    byteArrayOutputStream2.close();
                }
                return byteArray;
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = byteArrayOutputStream2;
                if (byteArrayOutputStream != null) {
                    byteArrayOutputStream.close();
                }
                throw th;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/birbit/android/jobqueue/persistentQueue/sqlite/SqliteJobQueue$JobSerializer.class */
    public interface JobSerializer {
        <T extends Job> T deserialize(byte[] bArr) throws IOException, ClassNotFoundException;

        byte[] serialize(Object obj) throws IOException;
    }

    public SqliteJobQueue(Configuration configuration, long j, JobSerializer jobSerializer) {
        String str;
        this.sessionId = j;
        this.jobStorage = new FileStorage(configuration.getAppContext(), "jobs_" + configuration.getId());
        this.whereQueryCache = new WhereQueryCache(j);
        Context appContext = configuration.getAppContext();
        if (configuration.isInTestMode()) {
            str = null;
        } else {
            str = "db_" + configuration.getId();
        }
        this.dbOpenHelper = new DbOpenHelper(appContext, str);
        this.f90db = this.dbOpenHelper.getWritableDatabase();
        this.sqlHelper = new SqlHelper(this.f90db, "job_holder", DbOpenHelper.ID_COLUMN.columnName, 12, "job_holder_tags", 3, j);
        this.jobSerializer = jobSerializer;
        if (configuration.resetDelaysOnRestart()) {
            this.sqlHelper.resetDelayTimesTo(Long.MIN_VALUE);
        }
        reEnablePendingCancellations();
        cleanupFiles();
    }

    private void bindTag(SQLiteStatement sQLiteStatement, String str, String str2) {
        sQLiteStatement.bindString(DbOpenHelper.TAGS_JOB_ID_COLUMN.columnIndex + 1, str);
        sQLiteStatement.bindString(DbOpenHelper.TAGS_NAME_COLUMN.columnIndex + 1, str2);
    }

    private void bindValues(SQLiteStatement sQLiteStatement, JobHolder jobHolder) {
        if (jobHolder.getInsertionOrder() != null) {
            sQLiteStatement.bindLong(DbOpenHelper.INSERTION_ORDER_COLUMN.columnIndex + 1, jobHolder.getInsertionOrder().longValue());
        }
        sQLiteStatement.bindString(DbOpenHelper.ID_COLUMN.columnIndex + 1, jobHolder.getId());
        sQLiteStatement.bindLong(DbOpenHelper.PRIORITY_COLUMN.columnIndex + 1, jobHolder.getPriority());
        if (jobHolder.getGroupId() != null) {
            sQLiteStatement.bindString(DbOpenHelper.GROUP_ID_COLUMN.columnIndex + 1, jobHolder.getGroupId());
        }
        sQLiteStatement.bindLong(DbOpenHelper.RUN_COUNT_COLUMN.columnIndex + 1, jobHolder.getRunCount());
        sQLiteStatement.bindLong(DbOpenHelper.CREATED_NS_COLUMN.columnIndex + 1, jobHolder.getCreatedNs());
        sQLiteStatement.bindLong(DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnIndex + 1, jobHolder.getDelayUntilNs());
        sQLiteStatement.bindLong(DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnIndex + 1, jobHolder.getRunningSessionId());
        sQLiteStatement.bindLong(DbOpenHelper.REQUIRED_NETWORK_TYPE_COLUMN.columnIndex + 1, jobHolder.getRequiredNetworkType());
        sQLiteStatement.bindLong(DbOpenHelper.DEADLINE_COLUMN.columnIndex + 1, jobHolder.getDeadlineNs());
        long j = 0;
        sQLiteStatement.bindLong(DbOpenHelper.CANCEL_ON_DEADLINE_COLUMN.columnIndex + 1, jobHolder.shouldCancelOnDeadline() ? 1L : 0L);
        int i = DbOpenHelper.CANCELLED_COLUMN.columnIndex;
        if (jobHolder.isCancelled()) {
            j = 1;
        }
        sQLiteStatement.bindLong(i + 1, j);
    }

    /* JADX WARN: Finally extract failed */
    private void cleanupFiles() {
        Cursor rawQuery = this.f90db.rawQuery(this.sqlHelper.LOAD_ALL_IDS_QUERY, null);
        HashSet hashSet = new HashSet();
        while (rawQuery.moveToNext()) {
            try {
                hashSet.add(rawQuery.getString(0));
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }
        rawQuery.close();
        this.jobStorage.truncateExcept(hashSet);
    }

    private JobHolder createJobHolderFromCursor(Cursor cursor) throws InvalidJobException {
        String string = cursor.getString(DbOpenHelper.ID_COLUMN.columnIndex);
        try {
            Job safeDeserialize = safeDeserialize(this.jobStorage.load(string));
            if (safeDeserialize == null) {
                throw new InvalidJobException("null job");
            }
            boolean z = true;
            JobHolder.Builder persistent = new JobHolder.Builder().insertionOrder(cursor.getLong(DbOpenHelper.INSERTION_ORDER_COLUMN.columnIndex)).priority(cursor.getInt(DbOpenHelper.PRIORITY_COLUMN.columnIndex)).groupId(cursor.getString(DbOpenHelper.GROUP_ID_COLUMN.columnIndex)).runCount(cursor.getInt(DbOpenHelper.RUN_COUNT_COLUMN.columnIndex)).job(safeDeserialize).m394id(string).tags(loadTags(string)).persistent(true);
            long j = cursor.getLong(DbOpenHelper.DEADLINE_COLUMN.columnIndex);
            if (cursor.getInt(DbOpenHelper.CANCEL_ON_DEADLINE_COLUMN.columnIndex) != 1) {
                z = false;
            }
            return persistent.deadline(j, z).createdNs(cursor.getLong(DbOpenHelper.CREATED_NS_COLUMN.columnIndex)).delayUntilNs(cursor.getLong(DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnIndex)).runningSessionId(cursor.getLong(DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnIndex)).requiredNetworkType(cursor.getInt(DbOpenHelper.REQUIRED_NETWORK_TYPE_COLUMN.columnIndex)).build();
        } catch (IOException e) {
            throw new InvalidJobException("cannot load job from disk", e);
        }
    }

    private Where createWhere(Constraint constraint) {
        return this.whereQueryCache.build(constraint, this.reusedStringBuilder);
    }

    private void delete(String str) {
        this.f90db.beginTransaction();
        try {
            SQLiteStatement deleteStatement = this.sqlHelper.getDeleteStatement();
            deleteStatement.clearBindings();
            deleteStatement.bindString(1, str);
            deleteStatement.execute();
            SQLiteStatement deleteJobTagsStatement = this.sqlHelper.getDeleteJobTagsStatement();
            deleteJobTagsStatement.bindString(1, str);
            deleteJobTagsStatement.execute();
            this.f90db.setTransactionSuccessful();
            this.jobStorage.delete(str);
        } finally {
            this.f90db.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    private boolean insertWithTags(JobHolder jobHolder) {
        SQLiteStatement insertStatement = this.sqlHelper.getInsertStatement();
        SQLiteStatement insertTagsStatement = this.sqlHelper.getInsertTagsStatement();
        this.f90db.beginTransaction();
        try {
            insertStatement.clearBindings();
            bindValues(insertStatement, jobHolder);
            if (insertStatement.executeInsert() != -1) {
                for (String str : jobHolder.getTags()) {
                    insertTagsStatement.clearBindings();
                    bindTag(insertTagsStatement, jobHolder.getId(), str);
                    insertTagsStatement.executeInsert();
                }
                this.f90db.setTransactionSuccessful();
                this.f90db.endTransaction();
                return true;
            }
        } catch (Throwable th) {
            try {
                JqLog.m390e(th, "error while inserting job with tags", new Object[0]);
            } catch (Throwable th2) {
                this.f90db.endTransaction();
                throw th2;
            }
        }
        this.f90db.endTransaction();
        return false;
    }

    private Set<String> loadTags(String str) {
        Cursor rawQuery = this.f90db.rawQuery(this.sqlHelper.LOAD_TAGS_QUERY, new String[]{str});
        try {
            if (rawQuery.getCount() == 0) {
                return Collections.EMPTY_SET;
            }
            HashSet hashSet = new HashSet();
            while (rawQuery.moveToNext()) {
                hashSet.add(rawQuery.getString(0));
            }
            return hashSet;
        } finally {
            rawQuery.close();
        }
    }

    private void persistJobToDisk(@NonNull JobHolder jobHolder) {
        try {
            this.jobStorage.save(jobHolder.getId(), this.jobSerializer.serialize(jobHolder.getJob()));
        } catch (IOException e) {
            throw new RuntimeException("cannot save job to disk", e);
        }
    }

    private void reEnablePendingCancellations() {
        this.f90db.execSQL(this.sqlHelper.RE_ENABLE_PENDING_CANCELLATIONS_QUERY);
    }

    private Job safeDeserialize(byte[] bArr) {
        try {
            return this.jobSerializer.deserialize(bArr);
        } catch (Throwable th) {
            JqLog.m390e(th, "error while deserializing job", new Object[0]);
            return null;
        }
    }

    private void setSessionIdOnJob(JobHolder jobHolder) {
        SQLiteStatement onJobFetchedForRunningStatement = this.sqlHelper.getOnJobFetchedForRunningStatement();
        jobHolder.setRunCount(jobHolder.getRunCount() + 1);
        jobHolder.setRunningSessionId(this.sessionId);
        onJobFetchedForRunningStatement.clearBindings();
        onJobFetchedForRunningStatement.bindLong(1, jobHolder.getRunCount());
        onJobFetchedForRunningStatement.bindLong(2, this.sessionId);
        onJobFetchedForRunningStatement.bindString(3, jobHolder.getId());
        onJobFetchedForRunningStatement.execute();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void clear() {
        this.sqlHelper.truncate();
        cleanupFiles();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int count() {
        SQLiteStatement countStatement = this.sqlHelper.getCountStatement();
        countStatement.clearBindings();
        countStatement.bindLong(1, this.sessionId);
        return (int) countStatement.simpleQueryForLong();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public int countReadyJobs(@NonNull Constraint constraint) {
        return (int) createWhere(constraint).countReady(this.f90db, this.reusedStringBuilder).simpleQueryForLong();
    }

    /* JADX WARN: Finally extract failed */
    @Override // com.birbit.android.jobqueue.JobQueue
    public JobHolder findJobById(@NonNull String str) {
        Cursor rawQuery = this.f90db.rawQuery(this.sqlHelper.FIND_BY_ID_QUERY, new String[]{str});
        try {
            try {
                if (!rawQuery.moveToFirst()) {
                    rawQuery.close();
                    return null;
                }
                JobHolder createJobHolderFromCursor = createJobHolderFromCursor(rawQuery);
                rawQuery.close();
                return createJobHolderFromCursor;
            } catch (InvalidJobException e) {
                JqLog.m390e(e, "invalid job on findJobById", new Object[0]);
                rawQuery.close();
                return null;
            }
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    @NonNull
    public Set<JobHolder> findJobs(@NonNull Constraint constraint) {
        Where createWhere = createWhere(constraint);
        Cursor rawQuery = this.f90db.rawQuery(createWhere.findJobs(this.sqlHelper), createWhere.args);
        HashSet hashSet = new HashSet();
        while (rawQuery.moveToNext()) {
            try {
                try {
                    hashSet.add(createJobHolderFromCursor(rawQuery));
                } catch (InvalidJobException e) {
                    JqLog.m390e(e, "invalid job found by tags.", new Object[0]);
                }
            } finally {
                rawQuery.close();
            }
        }
        return hashSet;
    }

    public SQLiteDatabase getDb() {
        return this.f90db;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public Long getNextJobDelayUntilNs(@NonNull Constraint constraint) {
        try {
            long simpleQueryForLong = createWhere(constraint).nextJobDelayUntil(this.f90db, this.sqlHelper).simpleQueryForLong();
            return simpleQueryForLong == Long.MAX_VALUE ? null : Long.valueOf(simpleQueryForLong);
        } catch (SQLiteDoneException e) {
            return null;
        }
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insert(@NonNull JobHolder jobHolder) {
        persistJobToDisk(jobHolder);
        if (jobHolder.hasTags()) {
            return insertWithTags(jobHolder);
        }
        SQLiteStatement insertStatement = this.sqlHelper.getInsertStatement();
        insertStatement.clearBindings();
        bindValues(insertStatement, jobHolder);
        long executeInsert = insertStatement.executeInsert();
        jobHolder.setInsertionOrder(executeInsert);
        return executeInsert != -1;
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public boolean insertOrReplace(@NonNull JobHolder jobHolder) {
        if (jobHolder.getInsertionOrder() == null) {
            return insert(jobHolder);
        }
        persistJobToDisk(jobHolder);
        jobHolder.setRunningSessionId(Long.MIN_VALUE);
        SQLiteStatement insertOrReplaceStatement = this.sqlHelper.getInsertOrReplaceStatement();
        insertOrReplaceStatement.clearBindings();
        bindValues(insertOrReplaceStatement, jobHolder);
        boolean z = insertOrReplaceStatement.executeInsert() != -1;
        JqLog.m392d("reinsert job result %s", Boolean.valueOf(z));
        return z;
    }

    /* JADX WARN: Finally extract failed */
    public String logJobs() {
        StringBuilder sb = new StringBuilder();
        Cursor rawQuery = this.f90db.rawQuery(this.sqlHelper.createSelect(null, 100, new SqlHelper.Order(DbOpenHelper.PRIORITY_COLUMN, SqlHelper.Order.Type.DESC), new SqlHelper.Order(DbOpenHelper.CREATED_NS_COLUMN, SqlHelper.Order.Type.ASC), new SqlHelper.Order(DbOpenHelper.INSERTION_ORDER_COLUMN, SqlHelper.Order.Type.ASC)), new String[0]);
        while (rawQuery.moveToNext()) {
            try {
                String string = rawQuery.getString(DbOpenHelper.ID_COLUMN.columnIndex);
                sb.append(rawQuery.getLong(DbOpenHelper.INSERTION_ORDER_COLUMN.columnIndex));
                sb.append(" ");
                sb.append(string);
                sb.append(" id:");
                sb.append(rawQuery.getString(DbOpenHelper.GROUP_ID_COLUMN.columnIndex));
                sb.append(" deadline:");
                sb.append(rawQuery.getLong(DbOpenHelper.DEADLINE_COLUMN.columnIndex));
                sb.append(" cancelled:");
                sb.append(rawQuery.getInt(DbOpenHelper.CANCELLED_COLUMN.columnIndex) == 1);
                sb.append(" delay until:");
                sb.append(rawQuery.getLong(DbOpenHelper.DELAY_UNTIL_NS_COLUMN.columnIndex));
                sb.append(" sessionId:");
                sb.append(rawQuery.getLong(DbOpenHelper.RUNNING_SESSION_ID_COLUMN.columnIndex));
                sb.append(" reqNetworkType:");
                sb.append(rawQuery.getLong(DbOpenHelper.REQUIRED_NETWORK_TYPE_COLUMN.columnIndex));
                SQLiteDatabase sQLiteDatabase = this.f90db;
                Cursor rawQuery2 = sQLiteDatabase.rawQuery("SELECT " + DbOpenHelper.TAGS_NAME_COLUMN.columnName + " FROM job_holder_tags WHERE " + DbOpenHelper.TAGS_JOB_ID_COLUMN.columnName + " = ?", new String[]{string});
                while (rawQuery2.moveToNext()) {
                    sb.append(", ");
                    sb.append(rawQuery2.getString(0));
                }
                rawQuery2.close();
                sb.append(IOUtils.LINE_SEPARATOR_UNIX);
            } catch (Throwable th) {
                rawQuery.close();
                throw th;
            }
        }
        rawQuery.close();
        return sb.toString();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public JobHolder nextJobAndIncRunCount(@NonNull Constraint constraint) {
        Where createWhere = createWhere(constraint);
        String nextJob = createWhere.nextJob(this.sqlHelper);
        while (true) {
            Cursor rawQuery = this.f90db.rawQuery(nextJob, createWhere.args);
            try {
                if (!rawQuery.moveToNext()) {
                    rawQuery.close();
                    return null;
                }
                JobHolder createJobHolderFromCursor = createJobHolderFromCursor(rawQuery);
                setSessionIdOnJob(createJobHolderFromCursor);
                return createJobHolderFromCursor;
            } catch (InvalidJobException e) {
                String string = rawQuery.getString(DbOpenHelper.ID_COLUMN.columnIndex);
                if (string == null) {
                    JqLog.m391e("cannot find job id on a retrieved job", new Object[0]);
                } else {
                    delete(string);
                }
            } finally {
                rawQuery.close();
            }
        }
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void onJobCancelled(JobHolder jobHolder) {
        SQLiteStatement markAsCancelledStatement = this.sqlHelper.getMarkAsCancelledStatement();
        markAsCancelledStatement.clearBindings();
        markAsCancelledStatement.bindString(1, jobHolder.getId());
        markAsCancelledStatement.execute();
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void remove(@NonNull JobHolder jobHolder) {
        delete(jobHolder.getId());
    }

    @Override // com.birbit.android.jobqueue.JobQueue
    public void substitute(@NonNull JobHolder jobHolder, @NonNull JobHolder jobHolder2) {
        this.f90db.beginTransaction();
        try {
            remove(jobHolder2);
            insert(jobHolder);
            this.f90db.setTransactionSuccessful();
        } finally {
            this.f90db.endTransaction();
        }
    }
}
