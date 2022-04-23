package net.sqlcipher.database;

import android.content.ContentValues;
import android.content.Context;
import android.os.Debug;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import androidx.media2.exoplayer.external.audio.SilenceSkippingAudioProcessor;
import androidx.room.FtsOptions;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Pattern;
import java.util.zip.ZipInputStream;
import net.sqlcipher.CrossProcessCursorWrapper;
import net.sqlcipher.Cursor;
import net.sqlcipher.CursorWrapper;
import net.sqlcipher.DatabaseErrorHandler;
import net.sqlcipher.DatabaseUtils;
import net.sqlcipher.SQLException;
import net.sqlcipher.database.SQLiteDebug;
/* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDatabase.class */
public class SQLiteDatabase extends SQLiteClosable {
    public static final String COMMIT_SQL = "COMMIT;";
    public static final int CONFLICT_ABORT = 2;
    public static final int CONFLICT_FAIL = 3;
    public static final int CONFLICT_IGNORE = 4;
    public static final int CONFLICT_NONE = 0;
    public static final int CONFLICT_REPLACE = 5;
    public static final int CONFLICT_ROLLBACK = 1;
    public static final int CREATE_IF_NECESSARY = 268435456;
    public static final int EVENT_DB_CORRUPT = 75004;
    public static final int EVENT_DB_OPERATION = 52000;
    public static final String GET_LOCK_LOG_PREFIX = "GETLOCK:";
    public static final String KEY_ENCODING = "UTF-8";
    public static final int LOCK_ACQUIRED_WARNING_THREAD_TIME_IN_MS = 100;
    public static final int LOCK_ACQUIRED_WARNING_TIME_IN_MS = 300;
    public static final int LOCK_ACQUIRED_WARNING_TIME_IN_MS_ALWAYS_PRINT = 2000;
    public static final int LOCK_WARNING_WINDOW_IN_MS = 20000;
    public static final String LOG_SLOW_QUERIES_PROPERTY = "db.log.slow_query_threshold";
    public static final int MAX_SQL_CACHE_SIZE = 250;
    public static final int MAX_WARNINGS_ON_CACHESIZE_CONDITION = 1;
    public static final String MEMORY = ":memory:";
    public static final int NO_LOCALIZED_COLLATORS = 16;
    public static final int OPEN_READONLY = 1;
    public static final int OPEN_READWRITE = 0;
    public static final int OPEN_READ_MASK = 1;
    public static final int QUERY_LOG_SQL_LENGTH = 64;
    public static final int SLEEP_AFTER_YIELD_QUANTUM = 1000;
    public static final String SQLCIPHER_ANDROID_VERSION = "3.5.9";
    public static final int SQLITE_MAX_LIKE_PATTERN_LENGTH = 50000;
    public static final String TAG = "Database";
    public int mCacheFullWarnings;
    public Map<String, SQLiteCompiledSql> mCompiledQueries;
    public final DatabaseErrorHandler mErrorHandler;
    public CursorFactory mFactory;
    public int mFlags;
    public boolean mInnerTransactionIsSuccessful;
    public long mLastLockMessageTime;
    public String mLastSqlStatement;
    public final ReentrantLock mLock;
    public long mLockAcquiredThreadTime;
    public long mLockAcquiredWallTime;
    public boolean mLockingEnabled;
    public int mMaxSqlCacheSize;
    public long mNativeHandle;
    public int mNumCacheHits;
    public int mNumCacheMisses;
    public String mPath;
    public String mPathForLogs;
    public WeakHashMap<SQLiteClosable, Object> mPrograms;
    public final int mSlowQueryThreshold;
    public Throwable mStackTrace;
    public final Map<String, SyncUpdateInfo> mSyncUpdateInfo;
    public int mTempTableSequence;
    public String mTimeClosed;
    public String mTimeOpened;
    public boolean mTransactionIsSuccessful;
    public SQLiteTransactionListener mTransactionListener;
    public static WeakHashMap<SQLiteDatabase, Object> sActiveDatabases = new WeakHashMap<>();
    public static final String[] CONFLICT_VALUES = {"", " OR ROLLBACK ", " OR ABORT ", " OR FAIL ", " OR IGNORE ", " OR REPLACE "};
    public static final Pattern EMAIL_IN_DB_PATTERN = Pattern.compile("[\\w\\.\\-]+@[\\w\\.\\-]+");
    public static int sQueryLogTimeInMillis = 0;

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDatabase$CursorFactory.class */
    public interface CursorFactory {
        Cursor newCursor(SQLiteDatabase sQLiteDatabase, SQLiteCursorDriver sQLiteCursorDriver, String str, SQLiteQuery sQLiteQuery);
    }

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDatabase$LibraryLoader.class */
    public interface LibraryLoader {
        void loadLibraries(String... strArr);
    }

    /* loaded from: classes3-dex2jar.jar:net/sqlcipher/database/SQLiteDatabase$SyncUpdateInfo.class */
    public static class SyncUpdateInfo {
        public String deletedTable;
        public String foreignKey;
        public String masterTable;

        public SyncUpdateInfo(String str, String str2, String str3) {
            this.masterTable = str;
            this.deletedTable = str2;
            this.foreignKey = str3;
        }
    }

    public SQLiteDatabase(String str, CursorFactory cursorFactory, int i, DatabaseErrorHandler databaseErrorHandler) {
        this.mLock = new ReentrantLock(true);
        this.mLockAcquiredWallTime = 0L;
        this.mLockAcquiredThreadTime = 0L;
        this.mLastLockMessageTime = 0L;
        this.mLastSqlStatement = null;
        this.mNativeHandle = 0L;
        this.mTempTableSequence = 0;
        this.mPathForLogs = null;
        this.mCompiledQueries = new HashMap();
        this.mMaxSqlCacheSize = 250;
        this.mTimeOpened = null;
        this.mTimeClosed = null;
        this.mStackTrace = null;
        this.mLockingEnabled = true;
        this.mSyncUpdateInfo = new HashMap();
        if (str != null) {
            this.mFlags = i;
            this.mPath = str;
            this.mSlowQueryThreshold = -1;
            this.mStackTrace = new DatabaseObjectNotClosedException().fillInStackTrace();
            this.mFactory = cursorFactory;
            this.mPrograms = new WeakHashMap<>();
            this.mErrorHandler = databaseErrorHandler;
            return;
        }
        throw new IllegalArgumentException("path should not be null");
    }

    public SQLiteDatabase(String str, char[] cArr, CursorFactory cursorFactory, int i) {
        this(str, cursorFactory, i, (DatabaseErrorHandler) null);
        openDatabaseInternal(cArr, null);
    }

    public SQLiteDatabase(String str, char[] cArr, CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook) {
        this(str, cursorFactory, i, (DatabaseErrorHandler) null);
        openDatabaseInternal(cArr, sQLiteDatabaseHook);
    }

    private void checkLockHoldTime() {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.mLockAcquiredWallTime;
        int i = (j > 2000L ? 1 : (j == 2000L ? 0 : -1));
        if ((i >= 0 || Log.isLoggable(TAG, 2) || elapsedRealtime - this.mLastLockMessageTime >= SilenceSkippingAudioProcessor.PADDING_SILENCE_US) && j > 300) {
            int threadCpuTimeNanos = (int) ((Debug.threadCpuTimeNanos() - this.mLockAcquiredThreadTime) / 1000000);
            if (threadCpuTimeNanos > 100 || i > 0) {
                this.mLastLockMessageTime = elapsedRealtime;
                String str = "lock held on " + this.mPath + " for " + j + "ms. Thread time was " + threadCpuTimeNanos + "ms";
                if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING_STACK_TRACE) {
                    new Exception();
                }
            }
        }
    }

    private void closeClosable() {
        deallocCachedSqlStatements();
        for (Map.Entry<SQLiteClosable, Object> entry : this.mPrograms.entrySet()) {
            SQLiteClosable key = entry.getKey();
            if (key != null) {
                key.onAllReferencesReleasedFromContainer();
            }
        }
    }

    private boolean containsNull(char[] cArr) {
        boolean z = false;
        if (cArr != null) {
            z = false;
            if (cArr.length > 0) {
                int length = cArr.length;
                int i = 0;
                while (true) {
                    z = false;
                    if (i >= length) {
                        break;
                    } else if (cArr[i] == 0) {
                        z = true;
                        break;
                    } else {
                        i++;
                    }
                }
            }
        }
        return z;
    }

    public static SQLiteDatabase create(CursorFactory cursorFactory, String str) {
        return openDatabase(MEMORY, str == null ? null : str.toCharArray(), cursorFactory, 268435456);
    }

    public static SQLiteDatabase create(CursorFactory cursorFactory, char[] cArr) {
        return openDatabase(MEMORY, cArr, cursorFactory, 268435456);
    }

    private native void dbclose();

    private native void dbopen(String str, int i);

    private void deallocCachedSqlStatements() {
        synchronized (this.mCompiledQueries) {
            for (SQLiteCompiledSql sQLiteCompiledSql : this.mCompiledQueries.values()) {
                sQLiteCompiledSql.releaseSqlStatement();
            }
            this.mCompiledQueries.clear();
        }
    }

    private native void enableSqlProfiling(String str);

    private native void enableSqlTracing(String str);

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r0 < 0) goto L_0x003a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String findEditTable(java.lang.String r4) {
        /*
            r0 = r4
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L_0x0043
            r0 = r4
            r1 = 32
            int r0 = r0.indexOf(r1)
            r5 = r0
            r0 = r4
            r1 = 44
            int r0 = r0.indexOf(r1)
            r6 = r0
            r0 = r5
            if (r0 <= 0) goto L_0x0029
            r0 = r5
            r1 = r6
            if (r0 < r1) goto L_0x0022
            r0 = r6
            if (r0 >= 0) goto L_0x0029
        L_0x0022:
            r0 = r4
            r1 = 0
            r2 = r5
            java.lang.String r0 = r0.substring(r1, r2)
            return r0
        L_0x0029:
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 <= 0) goto L_0x0041
            r0 = r6
            r1 = r5
            if (r0 < r1) goto L_0x003a
            r0 = r4
            r7 = r0
            r0 = r5
            if (r0 >= 0) goto L_0x0041
        L_0x003a:
            r0 = r4
            r1 = 0
            r2 = r6
            java.lang.String r0 = r0.substring(r1, r2)
            r7 = r0
        L_0x0041:
            r0 = r7
            return r0
        L_0x0043:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Invalid tables"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sqlcipher.database.SQLiteDatabase.findEditTable(java.lang.String):java.lang.String");
    }

    public static ArrayList<SQLiteDatabase> getActiveDatabases() {
        ArrayList<SQLiteDatabase> arrayList = new ArrayList<>();
        synchronized (sActiveDatabases) {
            arrayList.addAll(sActiveDatabases.keySet());
        }
        return arrayList;
    }

    public static ArrayList<Pair<String, String>> getAttachedDbs(SQLiteDatabase sQLiteDatabase) {
        if (!sQLiteDatabase.isOpen()) {
            return null;
        }
        ArrayList<Pair<String, String>> arrayList = new ArrayList<>();
        Cursor rawQuery = sQLiteDatabase.rawQuery("pragma database_list;", (String[]) null);
        while (rawQuery.moveToNext()) {
            arrayList.add(new Pair<>(rawQuery.getString(1), rawQuery.getString(2)));
        }
        rawQuery.close();
        return arrayList;
    }

    private byte[] getBytes(char[] cArr) {
        if (cArr == null || cArr.length == 0) {
            return null;
        }
        ByteBuffer encode = Charset.forName("UTF-8").encode(CharBuffer.wrap(cArr));
        byte[] bArr = new byte[encode.limit()];
        encode.get(bArr);
        return bArr;
    }

    public static ArrayList<SQLiteDebug.DbStats> getDbStats() {
        ArrayList<SQLiteDebug.DbStats> arrayList = new ArrayList<>();
        Iterator<SQLiteDatabase> it = getActiveDatabases().iterator();
        while (it.hasNext()) {
            SQLiteDatabase next = it.next();
            if (next != null && next.isOpen()) {
                int native_getDbLookaside = next.native_getDbLookaside();
                String path = next.getPath();
                int lastIndexOf = path.lastIndexOf("/");
                String str = path.substring(lastIndexOf != -1 ? lastIndexOf + 1 : 0);
                ArrayList<Pair<String, String>> attachedDbs = getAttachedDbs(next);
                if (attachedDbs != null) {
                    for (int i = 0; i < attachedDbs.size(); i++) {
                        Pair<String, String> pair = attachedDbs.get(i);
                        long pragmaVal = getPragmaVal(next, ((String) pair.first) + ".page_count;");
                        if (i != 0) {
                            String str2 = "  (attached) " + ((String) pair.first);
                            str = str2;
                            if (((String) pair.second).trim().length() > 0) {
                                int lastIndexOf2 = ((String) pair.second).lastIndexOf("/");
                                StringBuilder sb = new StringBuilder();
                                sb.append(str2);
                                sb.append(" : ");
                                sb.append(((String) pair.second).substring(lastIndexOf2 != -1 ? lastIndexOf2 + 1 : 0));
                                str = sb.toString();
                            }
                            native_getDbLookaside = 0;
                        }
                        if (pragmaVal > 0) {
                            arrayList.add(new SQLiteDebug.DbStats(str, pragmaVal, next.getPageSize(), native_getDbLookaside));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    private String getPathForLogs() {
        String str = this.mPathForLogs;
        if (str != null) {
            return str;
        }
        String str2 = this.mPath;
        if (str2 == null) {
            return null;
        }
        if (str2.indexOf(64) == -1) {
            this.mPathForLogs = this.mPath;
        } else {
            this.mPathForLogs = EMAIL_IN_DB_PATTERN.matcher(this.mPath).replaceAll("XX@YY");
        }
        return this.mPathForLogs;
    }

    public static long getPragmaVal(SQLiteDatabase sQLiteDatabase, String str) {
        Throwable th;
        if (!sQLiteDatabase.isOpen()) {
            return 0L;
        }
        SQLiteStatement sQLiteStatement = null;
        try {
            SQLiteStatement sQLiteStatement2 = new SQLiteStatement(sQLiteDatabase, "PRAGMA " + str);
            try {
                long simpleQueryForLong = sQLiteStatement2.simpleQueryForLong();
                sQLiteStatement2.close();
                return simpleQueryForLong;
            } catch (Throwable th2) {
                th = th2;
                sQLiteStatement = sQLiteStatement2;
                if (sQLiteStatement != null) {
                    sQLiteStatement.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    private String getTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS ", Locale.US).format(Long.valueOf(System.currentTimeMillis()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void key(byte[] bArr) throws SQLException;

    private void keyDatabase(SQLiteDatabaseHook sQLiteDatabaseHook, Runnable runnable) {
        if (sQLiteDatabaseHook != null) {
            sQLiteDatabaseHook.preKey(this);
        }
        if (runnable != null) {
            runnable.run();
        }
        if (sQLiteDatabaseHook != null) {
            sQLiteDatabaseHook.postKey(this);
        }
        if (SQLiteDebug.DEBUG_SQL_CACHE) {
            this.mTimeOpened = getTime();
        }
        try {
            Cursor rawQuery = rawQuery("select count(*) from sqlite_master;", new String[0]);
            if (rawQuery != null) {
                rawQuery.moveToFirst();
                rawQuery.getInt(0);
                rawQuery.close();
            }
        } catch (RuntimeException e) {
            Log.e(TAG, e.getMessage(), e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public native void key_mutf8(char[] cArr) throws SQLException;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v0, types: [android.content.Context] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.util.zip.ZipInputStream] */
    /* JADX WARN: Type inference failed for: r5v17 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public static void loadICUData(Context context, File file) {
        Throwable th;
        FileOutputStream fileOutputStream;
        Exception e;
        ZipInputStream zipInputStream;
        ZipInputStream zipInputStream2;
        FileOutputStream fileOutputStream2;
        File file2 = new File(file, FtsOptions.TOKENIZER_ICU);
        File file3 = new File(file2, "icudt46l.dat");
        FileOutputStream fileOutputStream3 = null;
        try {
            try {
                if (!file2.exists()) {
                    file2.mkdirs();
                }
                if (!file3.exists()) {
                    zipInputStream = new ZipInputStream(context.getAssets().open("icudt46l.zip"));
                    try {
                        zipInputStream.getNextEntry();
                        fileOutputStream = new FileOutputStream(file3);
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream = null;
                    }
                    try {
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = zipInputStream.read(bArr);
                            zipInputStream2 = zipInputStream;
                            fileOutputStream2 = fileOutputStream;
                            if (read <= 0) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, read);
                        }
                    } catch (Exception e3) {
                        e = e3;
                        Log.e(TAG, "Error copying icu dat file", e);
                        if (file3.exists()) {
                            file3.delete();
                        }
                        throw new RuntimeException(e);
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream3 = fileOutputStream;
                        context = zipInputStream;
                        if (context != 0) {
                            try {
                                context.close();
                            } catch (IOException e4) {
                                Log.e(TAG, "Error in closing streams IO streams after expanding ICU dat file", e4);
                                throw new RuntimeException(e4);
                            }
                        }
                        if (fileOutputStream3 != null) {
                            fileOutputStream3.flush();
                            fileOutputStream3.close();
                        }
                        throw th;
                    }
                } else {
                    fileOutputStream2 = null;
                    zipInputStream2 = null;
                }
                if (zipInputStream2 != null) {
                    try {
                        zipInputStream2.close();
                    } catch (IOException e5) {
                        Log.e(TAG, "Error in closing streams IO streams after expanding ICU dat file", e5);
                        throw new RuntimeException(e5);
                    }
                }
                if (fileOutputStream2 != null) {
                    fileOutputStream2.flush();
                    fileOutputStream2.close();
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Exception e6) {
            e = e6;
            zipInputStream = null;
            fileOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            context = 0;
        }
    }

    public static void loadLibs(Context context) {
        synchronized (SQLiteDatabase.class) {
            try {
                loadLibs(context, context.getFilesDir());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadLibs(Context context, File file) {
        synchronized (SQLiteDatabase.class) {
            try {
                loadLibs(context, file, new LibraryLoader() { // from class: net.sqlcipher.database.SQLiteDatabase.1
                    @Override // net.sqlcipher.database.SQLiteDatabase.LibraryLoader
                    public void loadLibraries(String... strArr) {
                        for (String str : strArr) {
                            System.loadLibrary(str);
                        }
                    }
                });
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadLibs(Context context, File file, LibraryLoader libraryLoader) {
        synchronized (SQLiteDatabase.class) {
            try {
                libraryLoader.loadLibraries("sqlcipher");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static void loadLibs(Context context, LibraryLoader libraryLoader) {
        synchronized (SQLiteDatabase.class) {
            try {
                loadLibs(context, context.getFilesDir(), libraryLoader);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private void lockForced() {
        this.mLock.lock();
        if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING && this.mLock.getHoldCount() == 1) {
            this.mLockAcquiredWallTime = SystemClock.elapsedRealtime();
            this.mLockAcquiredThreadTime = Debug.threadCpuTimeNanos();
        }
    }

    /* JADX WARN: Finally extract failed */
    private void markTableSyncable(String str, String str2, String str3, String str4) {
        lock();
        try {
            native_execSQL("SELECT _sync_dirty FROM " + str3 + " LIMIT 0");
            native_execSQL("SELECT " + str2 + " FROM " + str + " LIMIT 0");
            unlock();
            SyncUpdateInfo syncUpdateInfo = new SyncUpdateInfo(str3, str4, str2);
            synchronized (this.mSyncUpdateInfo) {
                this.mSyncUpdateInfo.put(str, syncUpdateInfo);
            }
        } catch (Throwable th) {
            unlock();
            throw th;
        }
    }

    private native int native_getDbLookaside();

    private native void native_key(char[] cArr) throws SQLException;

    private native void native_rawExecSQL(String str);

    private native void native_rekey(String str) throws SQLException;

    private native int native_status(int i, boolean z);

    public static SQLiteDatabase openDatabase(String str, String str2, CursorFactory cursorFactory, int i) {
        return openDatabase(str, str2, cursorFactory, i, (SQLiteDatabaseHook) null);
    }

    public static SQLiteDatabase openDatabase(String str, String str2, CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook) {
        return openDatabase(str, str2, cursorFactory, i, sQLiteDatabaseHook, (DatabaseErrorHandler) null);
    }

    public static SQLiteDatabase openDatabase(String str, String str2, CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, str2 == null ? null : str2.toCharArray(), cursorFactory, i, sQLiteDatabaseHook, databaseErrorHandler);
    }

    public static SQLiteDatabase openDatabase(String str, char[] cArr, CursorFactory cursorFactory, int i) {
        return openDatabase(str, cArr, cursorFactory, i, (SQLiteDatabaseHook) null, (DatabaseErrorHandler) null);
    }

    public static SQLiteDatabase openDatabase(String str, char[] cArr, CursorFactory cursorFactory, int i, SQLiteDatabaseHook sQLiteDatabaseHook) {
        return openDatabase(str, cArr, cursorFactory, i, sQLiteDatabaseHook, (DatabaseErrorHandler) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008c  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0098 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static net.sqlcipher.database.SQLiteDatabase openDatabase(java.lang.String r7, char[] r8, net.sqlcipher.database.SQLiteDatabase.CursorFactory r9, int r10, net.sqlcipher.database.SQLiteDatabaseHook r11, net.sqlcipher.DatabaseErrorHandler r12) {
        /*
            r0 = r12
            if (r0 == 0) goto L_0x0008
            goto L_0x0011
        L_0x0008:
            net.sqlcipher.DefaultDatabaseErrorHandler r0 = new net.sqlcipher.DefaultDatabaseErrorHandler
            r1 = r0
            r1.<init>()
            r12 = r0
        L_0x0011:
            net.sqlcipher.database.SQLiteDatabase r0 = new net.sqlcipher.database.SQLiteDatabase     // Catch: SQLiteDatabaseCorruptException -> 0x0030
            r13 = r0
            r0 = r13
            r1 = r7
            r2 = r9
            r3 = r10
            r4 = r12
            r0.<init>(r1, r2, r3, r4)     // Catch: SQLiteDatabaseCorruptException -> 0x0030
            r0 = r13
            r1 = r8
            r2 = r11
            r0.openDatabaseInternal(r1, r2)     // Catch: SQLiteDatabaseCorruptException -> 0x002b
            goto L_0x007a
        L_0x002b:
            r14 = move-exception
            goto L_0x0035
        L_0x0030:
            r14 = move-exception
            r0 = 0
            r13 = r0
        L_0x0035:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r15 = r0
            r0 = r15
            java.lang.String r1 = "Calling error handler for corrupt database "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r15
            r1 = r7
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "Database"
            r1 = r15
            java.lang.String r1 = r1.toString()
            r2 = r14
            int r0 = android.util.Log.e(r0, r1, r2)
            r0 = r12
            r1 = r13
            r0.onCorruption(r1)
            net.sqlcipher.database.SQLiteDatabase r0 = new net.sqlcipher.database.SQLiteDatabase
            r1 = r0
            r2 = r7
            r3 = r9
            r4 = r10
            r5 = r12
            r1.<init>(r2, r3, r4, r5)
            r13 = r0
            r0 = r13
            r1 = r8
            r2 = r11
            r0.openDatabaseInternal(r1, r2)
        L_0x007a:
            boolean r0 = net.sqlcipher.database.SQLiteDebug.DEBUG_SQL_STATEMENTS
            if (r0 == 0) goto L_0x0086
            r0 = r13
            r1 = r7
            r0.enableSqlTracing(r1)
        L_0x0086:
            boolean r0 = net.sqlcipher.database.SQLiteDebug.DEBUG_SQL_TIME
            if (r0 == 0) goto L_0x0092
            r0 = r13
            r1 = r7
            r0.enableSqlProfiling(r1)
        L_0x0092:
            java.util.WeakHashMap<net.sqlcipher.database.SQLiteDatabase, java.lang.Object> r0 = net.sqlcipher.database.SQLiteDatabase.sActiveDatabases
            r7 = r0
            r0 = r7
            monitor-enter(r0)
            java.util.WeakHashMap<net.sqlcipher.database.SQLiteDatabase, java.lang.Object> r0 = net.sqlcipher.database.SQLiteDatabase.sActiveDatabases     // Catch: all -> 0x00a7
            r1 = r13
            r2 = 0
            java.lang.Object r0 = r0.put(r1, r2)     // Catch: all -> 0x00a7
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x00a7
            r0 = r13
            return r0
        L_0x00a7:
            r8 = move-exception
            r0 = r7
            monitor-exit(r0)     // Catch: all -> 0x00a7
            r0 = r8
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sqlcipher.database.SQLiteDatabase.openDatabase(java.lang.String, char[], net.sqlcipher.database.SQLiteDatabase$CursorFactory, int, net.sqlcipher.database.SQLiteDatabaseHook, net.sqlcipher.DatabaseErrorHandler):net.sqlcipher.database.SQLiteDatabase");
    }

    private void openDatabaseInternal(final char[] cArr, SQLiteDatabaseHook sQLiteDatabaseHook) {
        final byte[] bytes = getBytes(cArr);
        dbopen(this.mPath, this.mFlags);
        try {
            try {
                keyDatabase(sQLiteDatabaseHook, new Runnable() { // from class: net.sqlcipher.database.SQLiteDatabase.2
                    @Override // java.lang.Runnable
                    public void run() {
                        byte[] bArr = bytes;
                        if (bArr != null && bArr.length > 0) {
                            SQLiteDatabase.this.key(bArr);
                        }
                    }
                });
                if (bytes != null && bytes.length > 0) {
                    for (byte b : bytes) {
                    }
                }
            } catch (RuntimeException e) {
                if (containsNull(cArr)) {
                    keyDatabase(sQLiteDatabaseHook, new Runnable() { // from class: net.sqlcipher.database.SQLiteDatabase.3
                        @Override // java.lang.Runnable
                        public void run() {
                            char[] cArr2 = cArr;
                            if (cArr2 != null) {
                                SQLiteDatabase.this.key_mutf8(cArr2);
                            }
                        }
                    });
                    if (bytes != null && bytes.length > 0) {
                        rekey(bytes);
                    }
                    if (bytes != null && bytes.length > 0) {
                        for (byte b2 : bytes) {
                        }
                        return;
                    }
                    return;
                }
                throw e;
            }
        } catch (Throwable th) {
            dbclose();
            if (SQLiteDebug.DEBUG_SQL_CACHE) {
                this.mTimeClosed = getTime();
            }
            if (bytes != null && bytes.length > 0) {
                for (byte b3 : bytes) {
                }
            }
            throw th;
        }
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, String str, CursorFactory cursorFactory) {
        return openOrCreateDatabase(file, str, cursorFactory, (SQLiteDatabaseHook) null);
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, String str, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook) {
        return openOrCreateDatabase(file, str, cursorFactory, sQLiteDatabaseHook, (DatabaseErrorHandler) null);
    }

    public static SQLiteDatabase openOrCreateDatabase(File file, String str, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook, DatabaseErrorHandler databaseErrorHandler) {
        return openOrCreateDatabase(file == null ? null : file.getPath(), str, cursorFactory, sQLiteDatabaseHook, databaseErrorHandler);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, String str2, CursorFactory cursorFactory) {
        return openDatabase(str, str2, cursorFactory, 268435456, (SQLiteDatabaseHook) null);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, String str2, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook) {
        return openDatabase(str, str2, cursorFactory, 268435456, sQLiteDatabaseHook);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, String str2, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, str2 == null ? null : str2.toCharArray(), cursorFactory, 268435456, sQLiteDatabaseHook, databaseErrorHandler);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, char[] cArr, CursorFactory cursorFactory) {
        return openDatabase(str, cArr, cursorFactory, 268435456, (SQLiteDatabaseHook) null);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, char[] cArr, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook) {
        return openDatabase(str, cArr, cursorFactory, 268435456, sQLiteDatabaseHook);
    }

    public static SQLiteDatabase openOrCreateDatabase(String str, char[] cArr, CursorFactory cursorFactory, SQLiteDatabaseHook sQLiteDatabaseHook, DatabaseErrorHandler databaseErrorHandler) {
        return openDatabase(str, cArr, cursorFactory, 268435456, sQLiteDatabaseHook, databaseErrorHandler);
    }

    private native void rekey(byte[] bArr) throws SQLException;

    public static native int releaseMemory();

    public static native void setICURoot(String str);

    private void unlockForced() {
        if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING && this.mLock.getHoldCount() == 1) {
            checkLockHoldTime();
        }
        this.mLock.unlock();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r7v1, types: [long] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean yieldIfContendedHelper(boolean r6, long r7) {
        /*
            r5 = this;
            r0 = r5
            java.util.concurrent.locks.ReentrantLock r0 = r0.mLock
            int r0 = r0.getQueueLength()
            if (r0 != 0) goto L_0x001a
            r0 = r5
            long r1 = android.os.SystemClock.elapsedRealtime()
            r0.mLockAcquiredWallTime = r1
            r0 = r5
            long r1 = android.os.Debug.threadCpuTimeNanos()
            r0.mLockAcquiredThreadTime = r1
            r0 = 0
            return r0
        L_0x001a:
            r0 = r5
            r0.setTransactionSuccessful()
            r0 = r5
            net.sqlcipher.database.SQLiteTransactionListener r0 = r0.mTransactionListener
            r9 = r0
            r0 = r5
            r0.endTransaction()
            r0 = r6
            if (r0 == 0) goto L_0x0041
            r0 = r5
            boolean r0 = r0.isDbLockedByCurrentThread()
            if (r0 != 0) goto L_0x0036
            goto L_0x0041
        L_0x0036:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "Db locked more than once. yielfIfContended cannot yield"
            r1.<init>(r2)
            throw r0
        L_0x0041:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007e
        L_0x0047:
            r0 = r7
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x007e
            r0 = r7
            r1 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x005b
            r0 = r7
            r10 = r0
            goto L_0x0060
        L_0x005b:
            r0 = 1000(0x3e8, double:4.94E-321)
            r10 = r0
        L_0x0060:
            r0 = r10
            java.lang.Thread.sleep(r0)     // Catch: InterruptedException -> 0x0068
            goto L_0x006e
        L_0x0068:
            r12 = move-exception
            boolean r0 = java.lang.Thread.interrupted()
        L_0x006e:
            r0 = r7
            r1 = 1000(0x3e8, double:4.94E-321)
            long r0 = r0 - r1
            r7 = r0
            r0 = r5
            java.util.concurrent.locks.ReentrantLock r0 = r0.mLock
            int r0 = r0.getQueueLength()
            if (r0 != 0) goto L_0x0047
        L_0x007e:
            r0 = r5
            r1 = r9
            r0.beginTransactionWithListener(r1)
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sqlcipher.database.SQLiteDatabase.yieldIfContendedHelper(boolean, long):boolean");
    }

    public void addSQLiteClosable(SQLiteClosable sQLiteClosable) {
        lock();
        try {
            this.mPrograms.put(sQLiteClosable, null);
        } finally {
            unlock();
        }
    }

    public void addToCompiledQueries(String str, SQLiteCompiledSql sQLiteCompiledSql) {
        if (this.mMaxSqlCacheSize != 0) {
            synchronized (this.mCompiledQueries) {
                if (this.mCompiledQueries.get(str) == null) {
                    if (this.mCompiledQueries.size() == this.mMaxSqlCacheSize) {
                        int i = this.mCacheFullWarnings + 1;
                        this.mCacheFullWarnings = i;
                        if (i == 1) {
                            String str2 = "Reached MAX size for compiled-sql statement cache for database " + getPath() + "; i.e., NO space for this sql statement in cache: " + str + ". Please change your sql statements to use '?' for bindargs, instead of using actual values";
                        }
                    } else {
                        this.mCompiledQueries.put(str, sQLiteCompiledSql);
                        if (SQLiteDebug.DEBUG_SQL_CACHE) {
                            String str3 = "|adding_sql_to_cache|" + getPath() + "|" + this.mCompiledQueries.size() + "|" + str;
                        }
                    }
                }
            }
        } else if (SQLiteDebug.DEBUG_SQL_CACHE) {
            String str4 = "|NOT adding_sql_to_cache|" + getPath() + "|" + str;
        }
    }

    public void beginTransaction() {
        beginTransactionWithListener(null);
    }

    public void beginTransactionWithListener(SQLiteTransactionListener sQLiteTransactionListener) {
        lockForced();
        if (isOpen()) {
            try {
                if (this.mLock.getHoldCount() <= 1) {
                    execSQL("BEGIN EXCLUSIVE;");
                    this.mTransactionListener = sQLiteTransactionListener;
                    this.mTransactionIsSuccessful = true;
                    this.mInnerTransactionIsSuccessful = false;
                    if (sQLiteTransactionListener != null) {
                        try {
                            sQLiteTransactionListener.onBegin();
                        } catch (RuntimeException e) {
                            execSQL("ROLLBACK;");
                            throw e;
                        }
                    }
                } else if (this.mInnerTransactionIsSuccessful) {
                    IllegalStateException illegalStateException = new IllegalStateException("Cannot call beginTransaction between calling setTransactionSuccessful and endTransaction");
                    Log.e(TAG, "beginTransaction() failed", illegalStateException);
                    throw illegalStateException;
                }
            } catch (Throwable th) {
                unlockForced();
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public void changePassword(String str) throws SQLiteException {
        if (!isOpen()) {
            throw new SQLiteException("database not open");
        } else if (str != null) {
            byte[] bytes = getBytes(str.toCharArray());
            rekey(bytes);
            for (byte b : bytes) {
            }
        }
    }

    public void changePassword(char[] cArr) throws SQLiteException {
        if (!isOpen()) {
            throw new SQLiteException("database not open");
        } else if (cArr != null) {
            byte[] bytes = getBytes(cArr);
            rekey(bytes);
            for (byte b : bytes) {
            }
        }
    }

    public void close() {
        if (isOpen()) {
            lock();
            try {
                closeClosable();
                onAllReferencesReleased();
            } finally {
                unlock();
            }
        }
    }

    public SQLiteStatement compileStatement(String str) throws SQLException {
        lock();
        if (isOpen()) {
            try {
                return new SQLiteStatement(this, str);
            } finally {
                unlock();
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public int delete(String str, String str2, String[] strArr) {
        String str3;
        lock();
        if (isOpen()) {
            r12 = null;
            SQLiteStatement sQLiteStatement = null;
            try {
                try {
                    StringBuilder sb = new StringBuilder();
                    sb.append("DELETE FROM ");
                    sb.append(str);
                    if (!TextUtils.isEmpty(str2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(" WHERE ");
                        sb2.append(str2);
                        str3 = sb2.toString();
                    } else {
                        str3 = "";
                    }
                    sb.append(str3);
                    SQLiteStatement compileStatement = compileStatement(sb.toString());
                    if (strArr != null) {
                        int length = strArr.length;
                        int i = 0;
                        while (i < length) {
                            int i2 = i + 1;
                            DatabaseUtils.bindObjectToProgram(compileStatement, i2, strArr[i]);
                            i = i2;
                        }
                    }
                    compileStatement.execute();
                    sQLiteStatement = compileStatement;
                    sQLiteStatement = compileStatement;
                    int lastChangeCount = lastChangeCount();
                    if (compileStatement != null) {
                        compileStatement.close();
                    }
                    unlock();
                    return lastChangeCount;
                } catch (SQLiteDatabaseCorruptException e) {
                    onCorruption();
                    throw e;
                }
            } catch (Throwable th) {
                if (sQLiteStatement != null) {
                    sQLiteStatement.close();
                }
                unlock();
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public void endTransaction() {
        if (!isOpen()) {
            throw new IllegalStateException("database not open");
        } else if (this.mLock.isHeldByCurrentThread()) {
            try {
                if (this.mInnerTransactionIsSuccessful) {
                    this.mInnerTransactionIsSuccessful = false;
                } else {
                    this.mTransactionIsSuccessful = false;
                }
                if (this.mLock.getHoldCount() == 1) {
                    if (this.mTransactionListener != null) {
                        try {
                            if (this.mTransactionIsSuccessful) {
                                this.mTransactionListener.onCommit();
                            } else {
                                this.mTransactionListener.onRollback();
                            }
                        } catch (RuntimeException e) {
                            e = e;
                            this.mTransactionIsSuccessful = false;
                        }
                    }
                    e = null;
                    if (this.mTransactionIsSuccessful) {
                        execSQL(COMMIT_SQL);
                    } else {
                        try {
                            execSQL("ROLLBACK;");
                            if (e != null) {
                                throw e;
                            }
                        } catch (SQLException e2) {
                        }
                    }
                }
            } finally {
                this.mTransactionListener = null;
                unlockForced();
            }
        } else {
            throw new IllegalStateException("no transaction pending");
        }
    }

    public void execSQL(String str) throws SQLException {
        SystemClock.uptimeMillis();
        lock();
        if (isOpen()) {
            try {
                try {
                    native_execSQL(str);
                    unlock();
                } catch (SQLiteDatabaseCorruptException e) {
                    onCorruption();
                    throw e;
                }
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public void execSQL(String str, Object[] objArr) throws SQLException {
        if (objArr != null) {
            SystemClock.uptimeMillis();
            lock();
            if (isOpen()) {
                SQLiteStatement sQLiteStatement = null;
                SQLiteStatement sQLiteStatement2 = null;
                try {
                    try {
                        SQLiteStatement compileStatement = compileStatement(str);
                        if (objArr != null) {
                            int length = objArr.length;
                            int i = 0;
                            while (i < length) {
                                int i2 = i + 1;
                                DatabaseUtils.bindObjectToProgram(compileStatement, i2, objArr[i]);
                                i = i2;
                            }
                        }
                        sQLiteStatement2 = compileStatement;
                        sQLiteStatement = compileStatement;
                        compileStatement.execute();
                        if (compileStatement != null) {
                            compileStatement.close();
                        }
                        unlock();
                    } catch (SQLiteDatabaseCorruptException e) {
                        onCorruption();
                        throw e;
                    }
                } catch (Throwable th) {
                    if (sQLiteStatement2 != null) {
                        sQLiteStatement2.close();
                    }
                    unlock();
                    throw th;
                }
            } else {
                throw new IllegalStateException("database not open");
            }
        } else {
            throw new IllegalArgumentException("Empty bindArgs");
        }
    }

    public void finalize() {
        if (isOpen()) {
            Log.e(TAG, "close() was never explicitly called on database '" + this.mPath + "' ", this.mStackTrace);
            closeClosable();
            onAllReferencesReleased();
        }
    }

    public SQLiteCompiledSql getCompiledStatementForSql(String str) {
        synchronized (this.mCompiledQueries) {
            if (this.mMaxSqlCacheSize == 0) {
                if (SQLiteDebug.DEBUG_SQL_CACHE) {
                    String str2 = "|cache NOT found|" + getPath();
                }
                return null;
            }
            SQLiteCompiledSql sQLiteCompiledSql = this.mCompiledQueries.get(str);
            boolean z = sQLiteCompiledSql != null;
            if (z) {
                this.mNumCacheHits++;
            } else {
                this.mNumCacheMisses++;
            }
            if (SQLiteDebug.DEBUG_SQL_CACHE) {
                String str3 = "|cache_stats|" + getPath() + "|" + this.mCompiledQueries.size() + "|" + this.mNumCacheHits + "|" + this.mNumCacheMisses + "|" + z + "|" + this.mTimeOpened + "|" + this.mTimeClosed + "|" + str;
            }
            return sQLiteCompiledSql;
        }
    }

    public int getMaxSqlCacheSize() {
        int i;
        synchronized (this) {
            i = this.mMaxSqlCacheSize;
        }
        return i;
    }

    public long getMaximumSize() {
        Throwable th;
        lock();
        if (isOpen()) {
            SQLiteStatement sQLiteStatement = null;
            try {
                SQLiteStatement sQLiteStatement2 = new SQLiteStatement(this, "PRAGMA max_page_count;");
                try {
                    long simpleQueryForLong = sQLiteStatement2.simpleQueryForLong();
                    long pageSize = getPageSize();
                    sQLiteStatement2.close();
                    unlock();
                    return simpleQueryForLong * pageSize;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = sQLiteStatement2;
                    if (sQLiteStatement != null) {
                        sQLiteStatement.close();
                    }
                    unlock();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public long getPageSize() {
        Throwable th;
        lock();
        if (isOpen()) {
            SQLiteStatement sQLiteStatement = null;
            try {
                SQLiteStatement sQLiteStatement2 = new SQLiteStatement(this, "PRAGMA page_size;");
                try {
                    long simpleQueryForLong = sQLiteStatement2.simpleQueryForLong();
                    sQLiteStatement2.close();
                    unlock();
                    return simpleQueryForLong;
                } catch (Throwable th2) {
                    th = th2;
                    sQLiteStatement = sQLiteStatement2;
                    if (sQLiteStatement != null) {
                        sQLiteStatement.close();
                    }
                    unlock();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public final String getPath() {
        return this.mPath;
    }

    public Map<String, String> getSyncedTables() {
        HashMap hashMap;
        synchronized (this.mSyncUpdateInfo) {
            hashMap = new HashMap();
            for (String str : this.mSyncUpdateInfo.keySet()) {
                SyncUpdateInfo syncUpdateInfo = this.mSyncUpdateInfo.get(str);
                if (syncUpdateInfo.deletedTable != null) {
                    hashMap.put(str, syncUpdateInfo.deletedTable);
                }
            }
        }
        return hashMap;
    }

    public int getVersion() {
        Throwable th;
        SQLiteStatement sQLiteStatement;
        lock();
        if (isOpen()) {
            SQLiteStatement sQLiteStatement2 = null;
            try {
                sQLiteStatement = new SQLiteStatement(this, "PRAGMA user_version;");
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                int simpleQueryForLong = (int) sQLiteStatement.simpleQueryForLong();
                sQLiteStatement.close();
                unlock();
                return simpleQueryForLong;
            } catch (Throwable th3) {
                th = th3;
                sQLiteStatement2 = sQLiteStatement;
                if (sQLiteStatement2 != null) {
                    sQLiteStatement2.close();
                }
                unlock();
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public boolean inTransaction() {
        return this.mLock.getHoldCount() > 0;
    }

    public long insert(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 0);
        } catch (SQLException e) {
            Log.e(TAG, "Error inserting <redacted values> into " + str, e);
            return -1L;
        }
    }

    public long insertOrThrow(String str, String str2, ContentValues contentValues) throws SQLException {
        return insertWithOnConflict(str, str2, contentValues, 0);
    }

    public long insertWithOnConflict(String str, String str2, ContentValues contentValues, int i) {
        Set<Map.Entry<String, Object>> set;
        if (isOpen()) {
            StringBuilder sb = new StringBuilder(152);
            sb.append("INSERT");
            sb.append(CONFLICT_VALUES[i]);
            sb.append(" INTO ");
            sb.append(str);
            StringBuilder sb2 = new StringBuilder(40);
            int i2 = 0;
            SQLiteProgram sQLiteProgram = null;
            if (contentValues == null || contentValues.size() <= 0) {
                sb.append("(" + str2 + ") ");
                sb2.append("NULL");
                set = null;
            } else {
                set = contentValues.valueSet();
                sb.append('(');
                boolean z = false;
                for (Map.Entry<String, Object> entry : set) {
                    if (z) {
                        sb.append(UserProfile.CARD_CATE_SEPARATOR);
                        sb2.append(UserProfile.CARD_CATE_SEPARATOR);
                    }
                    sb.append(entry.getKey());
                    sb2.append('?');
                    z = true;
                }
                sb.append(')');
            }
            sb.append(" VALUES(");
            sb.append((CharSequence) sb2);
            sb.append(");");
            lock();
            try {
                try {
                    sQLiteProgram = compileStatement(sb.toString());
                    if (set != null) {
                        int size = set.size();
                        Iterator<Map.Entry<String, Object>> it = set.iterator();
                        while (i2 < size) {
                            i2++;
                            DatabaseUtils.bindObjectToProgram(sQLiteProgram, i2, it.next().getValue());
                        }
                    }
                    sQLiteProgram.execute();
                    long lastInsertRow = lastChangeCount() > 0 ? lastInsertRow() : -1L;
                    if (lastInsertRow == -1) {
                        StringBuilder sb3 = new StringBuilder();
                        sb3.append("Error inserting <redacted values> using <redacted sql> into ");
                        sb3.append(str);
                        Log.e(TAG, sb3.toString());
                    } else if (Log.isLoggable(TAG, 2)) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append("Inserting row ");
                        sb4.append(lastInsertRow);
                        sb4.append(" from <redacted values> using <redacted sql> into ");
                        sb4.append(str);
                        sb4.toString();
                    }
                    return lastInsertRow;
                } catch (SQLiteDatabaseCorruptException e) {
                    onCorruption();
                    throw e;
                }
            } finally {
                if (sQLiteProgram != null) {
                    sQLiteProgram.close();
                }
                unlock();
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public boolean isDbLockedByCurrentThread() {
        return this.mLock.isHeldByCurrentThread();
    }

    public boolean isDbLockedByOtherThreads() {
        return !this.mLock.isHeldByCurrentThread() && this.mLock.isLocked();
    }

    public boolean isInCompiledSqlCache(String str) {
        boolean containsKey;
        synchronized (this.mCompiledQueries) {
            containsKey = this.mCompiledQueries.containsKey(str);
        }
        return containsKey;
    }

    public boolean isOpen() {
        return this.mNativeHandle != 0;
    }

    public boolean isReadOnly() {
        boolean z = true;
        if ((this.mFlags & 1) != 1) {
            z = false;
        }
        return z;
    }

    public native int lastChangeCount();

    public native long lastInsertRow();

    public void lock() {
        if (this.mLockingEnabled) {
            this.mLock.lock();
            if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING && this.mLock.getHoldCount() == 1) {
                this.mLockAcquiredWallTime = SystemClock.elapsedRealtime();
                this.mLockAcquiredThreadTime = Debug.threadCpuTimeNanos();
            }
        }
    }

    public void markTableSyncable(String str, String str2) {
        if (isOpen()) {
            markTableSyncable(str, "_id", str, str2);
            return;
        }
        throw new SQLiteException("database not open");
    }

    public void markTableSyncable(String str, String str2, String str3) {
        if (isOpen()) {
            markTableSyncable(str, str2, str3, null);
            return;
        }
        throw new SQLiteException("database not open");
    }

    public native void native_execSQL(String str) throws SQLException;

    public native void native_setLocale(String str, int i);

    public boolean needUpgrade(int i) {
        return i > getVersion();
    }

    @Override // net.sqlcipher.database.SQLiteClosable
    public void onAllReferencesReleased() {
        if (isOpen()) {
            if (SQLiteDebug.DEBUG_SQL_CACHE) {
                this.mTimeClosed = getTime();
            }
            dbclose();
            synchronized (sActiveDatabases) {
                sActiveDatabases.remove(this);
            }
        }
    }

    public void onCorruption() {
        Log.e(TAG, "Calling error handler for corrupt database (detected) " + this.mPath);
        this.mErrorHandler.onCorruption(this);
    }

    public void purgeFromCompiledSqlCache(String str) {
        synchronized (this.mCompiledQueries) {
            this.mCompiledQueries.remove(str);
        }
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5) {
        return query(false, str, strArr, str2, strArr2, str3, str4, str5, null);
    }

    public Cursor query(String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return query(false, str, strArr, str2, strArr2, str3, str4, str5, str6);
    }

    public Cursor query(boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        return queryWithFactory(null, z, str, strArr, str2, strArr2, str3, str4, str5, str6);
    }

    public Cursor queryWithFactory(CursorFactory cursorFactory, boolean z, String str, String[] strArr, String str2, String[] strArr2, String str3, String str4, String str5, String str6) {
        if (isOpen()) {
            return rawQueryWithFactory(cursorFactory, SQLiteQueryBuilder.buildQueryString(z, str, strArr, str2, str3, str4, str5, str6), strArr2, findEditTable(str));
        }
        throw new IllegalStateException("database not open");
    }

    public void rawExecSQL(String str) {
        SystemClock.uptimeMillis();
        lock();
        if (isOpen()) {
            try {
                try {
                    native_rawExecSQL(str);
                    unlock();
                } catch (SQLiteDatabaseCorruptException e) {
                    onCorruption();
                    throw e;
                }
            } catch (Throwable th) {
                unlock();
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public Cursor rawQuery(String str, Object[] objArr) {
        SQLiteDirectCursorDriver sQLiteDirectCursorDriver;
        if (isOpen()) {
            long j = 0;
            int i = -1;
            if (this.mSlowQueryThreshold != -1) {
                j = System.currentTimeMillis();
            }
            try {
                Cursor query = new SQLiteDirectCursorDriver(this, str, null).query(this.mFactory, objArr);
                if (this.mSlowQueryThreshold != -1) {
                    if (query != null) {
                        i = query.getCount();
                    }
                    long currentTimeMillis = System.currentTimeMillis() - j;
                    if (currentTimeMillis >= this.mSlowQueryThreshold) {
                        String str2 = "query (" + currentTimeMillis + " ms): " + sQLiteDirectCursorDriver.toString() + ", args are <redacted>, count is " + i;
                    }
                }
                return new CrossProcessCursorWrapper(query);
            } catch (Throwable th) {
                if (this.mSlowQueryThreshold != -1) {
                    long currentTimeMillis2 = System.currentTimeMillis() - j;
                    if (currentTimeMillis2 >= this.mSlowQueryThreshold) {
                        String str3 = "query (" + currentTimeMillis2 + " ms): " + sQLiteDirectCursorDriver.toString() + ", args are <redacted>, count is -1";
                    }
                }
                throw th;
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    public Cursor rawQuery(String str, String[] strArr) {
        return rawQueryWithFactory(null, str, strArr, null);
    }

    public Cursor rawQuery(String str, String[] strArr, int i, int i2) {
        CursorWrapper cursorWrapper = (CursorWrapper) rawQueryWithFactory(null, str, strArr, null);
        ((SQLiteCursor) cursorWrapper.getWrappedCursor()).setLoadStyle(i, i2);
        return cursorWrapper;
    }

    public Cursor rawQueryWithFactory(CursorFactory cursorFactory, String str, String[] strArr, String str2) {
        if (isOpen()) {
            long j = 0;
            int i = -1;
            if (this.mSlowQueryThreshold != -1) {
                j = System.currentTimeMillis();
            }
            SQLiteDirectCursorDriver sQLiteDirectCursorDriver = new SQLiteDirectCursorDriver(this, str, str2);
            if (cursorFactory == null) {
                try {
                    cursorFactory = this.mFactory;
                } catch (Throwable th) {
                    if (this.mSlowQueryThreshold != -1) {
                        long currentTimeMillis = System.currentTimeMillis() - j;
                        if (currentTimeMillis >= this.mSlowQueryThreshold) {
                            String str3 = "query (" + currentTimeMillis + " ms): " + sQLiteDirectCursorDriver.toString() + ", args are <redacted>, count is -1";
                        }
                    }
                    throw th;
                }
            }
            Cursor query = sQLiteDirectCursorDriver.query(cursorFactory, strArr);
            if (this.mSlowQueryThreshold != -1) {
                if (query != null) {
                    i = query.getCount();
                }
                long currentTimeMillis2 = System.currentTimeMillis() - j;
                if (currentTimeMillis2 >= this.mSlowQueryThreshold) {
                    String str4 = "query (" + currentTimeMillis2 + " ms): " + sQLiteDirectCursorDriver.toString() + ", args are <redacted>, count is " + i;
                }
            }
            return new CrossProcessCursorWrapper(query);
        }
        throw new IllegalStateException("database not open");
    }

    public void removeSQLiteClosable(SQLiteClosable sQLiteClosable) {
        lock();
        try {
            this.mPrograms.remove(sQLiteClosable);
        } finally {
            unlock();
        }
    }

    public long replace(String str, String str2, ContentValues contentValues) {
        try {
            return insertWithOnConflict(str, str2, contentValues, 5);
        } catch (SQLException e) {
            Log.e(TAG, "Error inserting <redacted values> into " + str, e);
            return -1L;
        }
    }

    public long replaceOrThrow(String str, String str2, ContentValues contentValues) throws SQLException {
        return insertWithOnConflict(str, str2, contentValues, 5);
    }

    public void resetCompiledSqlCache() {
        synchronized (this.mCompiledQueries) {
            this.mCompiledQueries.clear();
        }
    }

    public void rowUpdated(String str, long j) {
        SyncUpdateInfo syncUpdateInfo;
        synchronized (this.mSyncUpdateInfo) {
            syncUpdateInfo = this.mSyncUpdateInfo.get(str);
        }
        if (syncUpdateInfo != null) {
            execSQL("UPDATE " + syncUpdateInfo.masterTable + " SET _sync_dirty=1 WHERE _id=(SELECT " + syncUpdateInfo.foreignKey + " FROM " + str + " WHERE _id=" + j + ")");
        }
    }

    public void setLocale(Locale locale) {
        lock();
        try {
            native_setLocale(locale.toString(), this.mFlags);
        } finally {
            unlock();
        }
    }

    public void setLockingEnabled(boolean z) {
        this.mLockingEnabled = z;
    }

    public void setMaxSqlCacheSize(int i) {
        synchronized (this) {
            if (i > 250 || i < 0) {
                throw new IllegalStateException("expected value between 0 and 250");
            } else if (i >= this.mMaxSqlCacheSize) {
                this.mMaxSqlCacheSize = i;
            } else {
                throw new IllegalStateException("cannot set cacheSize to a value less than the value set with previous setMaxSqlCacheSize() call.");
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v18, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [long] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long setMaximumSize(long r6) {
        /*
            r5 = this;
            r0 = r5
            r0.lock()
            r0 = r5
            boolean r0 = r0.isOpen()
            if (r0 == 0) goto L_0x0084
            r0 = 0
            r8 = r0
            r0 = r5
            long r0 = r0.getPageSize()     // Catch: all -> 0x0073
            r9 = r0
            r0 = r6
            r1 = r9
            long r0 = r0 / r1
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r6
            r1 = r9
            long r0 = r0 % r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x002c
            r0 = r11
            r1 = 1
            long r0 = r0 + r1
            r13 = r0
        L_0x002c:
            net.sqlcipher.database.SQLiteStatement r0 = new net.sqlcipher.database.SQLiteStatement     // Catch: all -> 0x0073
            r15 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder     // Catch: all -> 0x0073
            r16 = r0
            r0 = r16
            r0.<init>()     // Catch: all -> 0x0073
            r0 = r16
            java.lang.String r1 = "PRAGMA max_page_count = "
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0073
            r0 = r16
            r1 = r13
            java.lang.StringBuilder r0 = r0.append(r1)     // Catch: all -> 0x0073
            r0 = r15
            r1 = r5
            r2 = r16
            java.lang.String r2 = r2.toString()     // Catch: all -> 0x0073
            r0.<init>(r1, r2)     // Catch: all -> 0x0073
            r0 = r15
            long r0 = r0.simpleQueryForLong()     // Catch: all -> 0x006b
            r6 = r0
            r0 = r15
            r0.close()
            r0 = r5
            r0.unlock()
            r0 = r6
            r1 = r9
            long r0 = r0 * r1
            return r0
        L_0x006b:
            r16 = move-exception
            r0 = r15
            r8 = r0
            goto L_0x0075
        L_0x0073:
            r16 = move-exception
        L_0x0075:
            r0 = r8
            if (r0 == 0) goto L_0x007d
            r0 = r8
            r0.close()
        L_0x007d:
            r0 = r5
            r0.unlock()
            r0 = r16
            throw r0
        L_0x0084:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "database not open"
            r1.<init>(r2)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: net.sqlcipher.database.SQLiteDatabase.setMaximumSize(long):long");
    }

    public void setPageSize(long j) {
        execSQL("PRAGMA page_size = " + j);
    }

    public void setTransactionSuccessful() {
        if (!isOpen()) {
            throw new IllegalStateException("database not open");
        } else if (!this.mLock.isHeldByCurrentThread()) {
            throw new IllegalStateException("no transaction pending");
        } else if (!this.mInnerTransactionIsSuccessful) {
            this.mInnerTransactionIsSuccessful = true;
        } else {
            throw new IllegalStateException("setTransactionSuccessful may only be called once per call to beginTransaction");
        }
    }

    public void setVersion(int i) {
        execSQL("PRAGMA user_version = " + i);
    }

    public int status(int i, boolean z) {
        return native_status(i, z);
    }

    public void unlock() {
        if (this.mLockingEnabled) {
            if (SQLiteDebug.DEBUG_LOCK_TIME_TRACKING && this.mLock.getHoldCount() == 1) {
                checkLockHoldTime();
            }
            this.mLock.unlock();
        }
    }

    public int update(String str, ContentValues contentValues, String str2, String[] strArr) {
        return updateWithOnConflict(str, contentValues, str2, strArr, 0);
    }

    public int updateWithOnConflict(String str, ContentValues contentValues, String str2, String[] strArr, int i) {
        if (contentValues == null || contentValues.size() == 0) {
            throw new IllegalArgumentException("Empty values");
        }
        StringBuilder sb = new StringBuilder(120);
        sb.append("UPDATE ");
        sb.append(CONFLICT_VALUES[i]);
        sb.append(str);
        sb.append(" SET ");
        Set<Map.Entry<String, Object>> valueSet = contentValues.valueSet();
        Iterator<Map.Entry<String, Object>> it = valueSet.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getKey());
            sb.append("=?");
            if (it.hasNext()) {
                sb.append(UserProfile.CARD_CATE_SEPARATOR);
            }
        }
        if (!TextUtils.isEmpty(str2)) {
            sb.append(" WHERE ");
            sb.append(str2);
        }
        lock();
        if (isOpen()) {
            SQLiteStatement sQLiteStatement = null;
            SQLiteStatement sQLiteStatement2 = null;
            SQLiteStatement sQLiteStatement3 = null;
            try {
                try {
                    sQLiteStatement3 = compileStatement(sb.toString());
                    int size = valueSet.size();
                    Iterator<Map.Entry<String, Object>> it2 = valueSet.iterator();
                    int i2 = 1;
                    for (int i3 = 0; i3 < size; i3++) {
                        DatabaseUtils.bindObjectToProgram(sQLiteStatement3, i2, it2.next().getValue());
                        i2++;
                    }
                    if (strArr != null) {
                        int i4 = i2;
                        for (String str3 : strArr) {
                            sQLiteStatement3.bindString(i4, str3);
                            i4++;
                        }
                    }
                    sQLiteStatement3.execute();
                    int lastChangeCount = lastChangeCount();
                    if (Log.isLoggable(TAG, 2)) {
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("Updated ");
                        sb2.append(lastChangeCount);
                        sb2.append(" rows using <redacted values> and <redacted sql> for ");
                        sb2.append(str);
                        sQLiteStatement3 = sQLiteStatement3;
                        sQLiteStatement = sQLiteStatement3;
                        sQLiteStatement2 = sQLiteStatement3;
                        sb2.toString();
                    }
                    return lastChangeCount;
                } catch (SQLiteDatabaseCorruptException e) {
                    onCorruption();
                    throw e;
                } catch (SQLException e2) {
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("Error updating <redacted values> using <redacted sql> for ");
                    sb3.append(str);
                    Log.e(TAG, sb3.toString());
                    throw e2;
                }
            } finally {
                if (sQLiteStatement3 != null) {
                    sQLiteStatement3.close();
                }
                unlock();
            }
        } else {
            throw new IllegalStateException("database not open");
        }
    }

    @Deprecated
    public boolean yieldIfContended() {
        if (!isOpen()) {
            return false;
        }
        return yieldIfContendedHelper(false, -1L);
    }

    public boolean yieldIfContendedSafely() {
        if (!isOpen()) {
            return false;
        }
        return yieldIfContendedHelper(true, -1L);
    }

    public boolean yieldIfContendedSafely(long j) {
        if (!isOpen()) {
            return false;
        }
        return yieldIfContendedHelper(true, j);
    }
}
