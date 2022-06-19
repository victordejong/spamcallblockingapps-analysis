package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.facebook.applinks.AppLinkData;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.j256.ormlite.field.FieldType;
import com.pubmatic.sdk.common.POBCommonConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Singleton;
@Singleton
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore.class */
public class SQLiteEventStore implements EventStore, SynchronizationGuard {
    private static final int LOCK_RETRY_BACK_OFF_MILLIS = 50;
    private static final String LOG_TAG = "SQLiteEventStore";
    static final int MAX_RETRIES = 16;
    private static final Encoding PROTOBUF_ENCODING = Encoding.m1387of("proto");
    private final EventStoreConfig config;
    private final Clock monotonicClock;
    private final SchemaManager schemaManager;
    private final Clock wallClock;

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function.class */
    public interface Function<T, U> {
        U apply(T t);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata.class */
    public static class Metadata {
        final String key;
        final String value;

        private Metadata(String str, String str2) {
            this.key = str;
            this.value = str2;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer.class */
    public interface Producer<T> {
        T produce();
    }

    @Inject
    public SQLiteEventStore(Clock clock, Clock clock2, EventStoreConfig eventStoreConfig, SchemaManager schemaManager) {
        this.schemaManager = schemaManager;
        this.wallClock = clock;
        this.monotonicClock = clock2;
        this.config = eventStoreConfig;
    }

    private void ensureBeginTransaction(SQLiteDatabase sQLiteDatabase) {
        Function function;
        Producer lambdaFactory$ = SQLiteEventStore$$Lambda$18.lambdaFactory$(sQLiteDatabase);
        function = SQLiteEventStore$$Lambda$19.instance;
        retryIfDbLocked(lambdaFactory$, function);
    }

    private long ensureTransportContext(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long transportContextId = getTransportContextId(sQLiteDatabase, transportContext);
        if (transportContextId != null) {
            return transportContextId.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", transportContext.getBackendName());
        contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.getPriority())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (transportContext.getExtras() != null) {
            contentValues.put(AppLinkData.ARGUMENTS_EXTRAS_KEY, Base64.encodeToString(transportContext.getExtras(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    private long getPageCount() {
        return getDb().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    private long getPageSize() {
        return getDb().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    private Long getTransportContextId(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Function function;
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))));
        if (transportContext.getExtras() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.getExtras(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        function = SQLiteEventStore$$Lambda$6.instance;
        return (Long) tryWithCursor(query, function);
    }

    private boolean isStorageAtLimit() {
        return getPageCount() * getPageSize() >= this.config.getMaxStorageSizeInBytes();
    }

    private List<PersistedEvent> join(List<PersistedEvent> list, Map<Long, Set<Metadata>> map) {
        ListIterator<PersistedEvent> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            PersistedEvent next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.getId()))) {
                EventInternal.Builder builder = next.getEvent().toBuilder();
                for (Metadata metadata : map.get(Long.valueOf(next.getId()))) {
                    builder.addMetadata(metadata.key, metadata.value);
                }
                listIterator.set(PersistedEvent.create(next.getId(), next.getTransportContext(), builder.build()));
            }
        }
        return list;
    }

    public static /* synthetic */ Object lambda$clearDb$11(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("events", null, new String[0]);
        sQLiteDatabase.delete("transport_contexts", null, new String[0]);
        return null;
    }

    public static /* synthetic */ Object lambda$ensureBeginTransaction$16(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    public static /* synthetic */ SQLiteDatabase lambda$getDb$0(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    public static /* synthetic */ Long lambda$getNextCallTime$4(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    public static /* synthetic */ Long lambda$getTransportContextId$2(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    public static /* synthetic */ Boolean lambda$hasPendingEventsFor$5(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        Function function;
        Long transportContextId = sQLiteEventStore.getTransportContextId(sQLiteDatabase, transportContext);
        if (transportContextId == null) {
            return false;
        }
        Cursor rawQuery = sQLiteEventStore.getDb().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{transportContextId.toString()});
        function = SQLiteEventStore$$Lambda$21.instance;
        return (Boolean) tryWithCursor(rawQuery, function);
    }

    public static /* synthetic */ List lambda$loadActiveContexts$8(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(TransportContext.builder().setBackendName(cursor.getString(1)).setPriority(PriorityMapping.valueOf(cursor.getInt(2))).setExtras(maybeBase64Decode(cursor.getString(3))).build());
        }
        return arrayList;
    }

    public static /* synthetic */ List lambda$loadActiveContexts$9(SQLiteDatabase sQLiteDatabase) {
        Function function;
        Cursor rawQuery = sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]);
        function = SQLiteEventStore$$Lambda$20.instance;
        return (List) tryWithCursor(rawQuery, function);
    }

    public static /* synthetic */ Object lambda$loadEvents$12(SQLiteEventStore sQLiteEventStore, List list, TransportContext transportContext, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            EventInternal.Builder uptimeMillis = EventInternal.builder().setTransportName(cursor.getString(1)).setEventMillis(cursor.getLong(2)).setUptimeMillis(cursor.getLong(3));
            if (z) {
                uptimeMillis.setEncodedPayload(new EncodedPayload(toEncoding(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                uptimeMillis.setEncodedPayload(new EncodedPayload(toEncoding(cursor.getString(4)), sQLiteEventStore.readPayload(j)));
            }
            if (!cursor.isNull(6)) {
                uptimeMillis.setCode(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(PersistedEvent.create(j, transportContext, uptimeMillis.build()));
        }
        return null;
    }

    public static /* synthetic */ Object lambda$loadMetadata$14(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new Metadata(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    public static /* synthetic */ Long lambda$persist$1(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, EventInternal eventInternal, SQLiteDatabase sQLiteDatabase) {
        if (sQLiteEventStore.isStorageAtLimit()) {
            return -1L;
        }
        long ensureTransportContext = sQLiteEventStore.ensureTransportContext(sQLiteDatabase, transportContext);
        int maxBlobByteSizePerRow = sQLiteEventStore.config.getMaxBlobByteSizePerRow();
        byte[] bytes = eventInternal.getEncodedPayload().getBytes();
        boolean z = bytes.length <= maxBlobByteSizePerRow;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(ensureTransportContext));
        contentValues.put("transport_name", eventInternal.getTransportName());
        contentValues.put("timestamp_ms", Long.valueOf(eventInternal.getEventMillis()));
        contentValues.put("uptime_ms", Long.valueOf(eventInternal.getUptimeMillis()));
        contentValues.put("payload_encoding", eventInternal.getEncodedPayload().getEncoding().getName());
        contentValues.put("code", eventInternal.getCode());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put(POBCommonConstants.BANNER_PLACEMENT_TYPE, Boolean.valueOf(z));
        contentValues.put("payload", z ? bytes : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            int ceil = (int) Math.ceil(bytes.length / maxBlobByteSizePerRow);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(bytes, (i - 1) * maxBlobByteSizePerRow, Math.min(i * maxBlobByteSizePerRow, bytes.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : eventInternal.getMetadata().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    public static /* synthetic */ byte[] lambda$readPayload$13(Cursor cursor) {
        int i;
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            i = i2;
            if (!cursor.moveToNext()) {
                break;
            }
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i2 = i + blob.length;
        }
        byte[] bArr = new byte[i];
        int i3 = 0;
        for (int i4 = 0; i4 < arrayList.size(); i4++) {
            byte[] bArr2 = (byte[]) arrayList.get(i4);
            System.arraycopy(bArr2, 0, bArr, i3, bArr2.length);
            i3 += bArr2.length;
        }
        return bArr;
    }

    public static /* synthetic */ Object lambda$recordFailure$3(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    public static /* synthetic */ Object lambda$recordNextCallTime$6(long j, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))}) < 1) {
            contentValues.put("backend_name", transportContext.getBackendName());
            contentValues.put("priority", Integer.valueOf(PriorityMapping.toInt(transportContext.getPriority())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
            return null;
        }
        return null;
    }

    public List<PersistedEvent> loadEvents(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        ArrayList arrayList = new ArrayList();
        Long transportContextId = getTransportContextId(sQLiteDatabase, transportContext);
        if (transportContextId == null) {
            return arrayList;
        }
        tryWithCursor(sQLiteDatabase.query("events", new String[]{FieldType.FOREIGN_ID_FIELD_SUFFIX, "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", POBCommonConstants.BANNER_PLACEMENT_TYPE}, "context_id = ?", new String[]{transportContextId.toString()}, null, null, null, String.valueOf(this.config.getLoadBatchSize())), SQLiteEventStore$$Lambda$15.lambdaFactory$(this, arrayList, transportContext));
        return arrayList;
    }

    private Map<Long, Set<Metadata>> loadMetadata(SQLiteDatabase sQLiteDatabase, List<PersistedEvent> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).getId());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        tryWithCursor(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), SQLiteEventStore$$Lambda$17.lambdaFactory$(hashMap));
        return hashMap;
    }

    private static byte[] maybeBase64Decode(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    private byte[] readPayload(long j) {
        Function function;
        Cursor query = getDb().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num");
        function = SQLiteEventStore$$Lambda$16.instance;
        return (byte[]) tryWithCursor(query, function);
    }

    private <T> T retryIfDbLocked(Producer<T> producer, Function<Throwable, T> function) {
        long time = this.monotonicClock.getTime();
        while (true) {
            try {
                return producer.produce();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.monotonicClock.getTime() >= this.config.getCriticalSectionEnterTimeoutMs() + time) {
                    return function.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    private static Encoding toEncoding(String str) {
        return str == null ? PROTOBUF_ENCODING : Encoding.m1387of(str);
    }

    private static String toIdList(Iterable<PersistedEvent> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<PersistedEvent> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().getId());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    static <T> T tryWithCursor(Cursor cursor, Function<Cursor, T> function) {
        try {
            return function.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public int cleanUp() {
        return ((Integer) inTransaction(SQLiteEventStore$$Lambda$13.lambdaFactory$(this.wallClock.getTime() - this.config.getEventCleanUpAge()))).intValue();
    }

    public void clearDb() {
        Function function;
        function = SQLiteEventStore$$Lambda$14.instance;
        inTransaction(function);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.schemaManager.close();
    }

    long getByteSize() {
        return getPageCount() * getPageSize();
    }

    SQLiteDatabase getDb() {
        Function function;
        SchemaManager schemaManager = this.schemaManager;
        schemaManager.getClass();
        Producer lambdaFactory$ = SQLiteEventStore$$Lambda$1.lambdaFactory$(schemaManager);
        function = SQLiteEventStore$$Lambda$4.instance;
        return (SQLiteDatabase) retryIfDbLocked(lambdaFactory$, function);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public long getNextCallTime(TransportContext transportContext) {
        Function function;
        Cursor rawQuery = getDb().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.getBackendName(), String.valueOf(PriorityMapping.toInt(transportContext.getPriority()))});
        function = SQLiteEventStore$$Lambda$8.instance;
        return ((Long) tryWithCursor(rawQuery, function)).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public boolean hasPendingEventsFor(TransportContext transportContext) {
        return ((Boolean) inTransaction(SQLiteEventStore$$Lambda$9.lambdaFactory$(this, transportContext))).booleanValue();
    }

    <T> T inTransaction(Function<SQLiteDatabase, T> function) {
        SQLiteDatabase db = getDb();
        db.beginTransaction();
        try {
            T apply = function.apply(db);
            db.setTransactionSuccessful();
            return apply;
        } finally {
            db.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public Iterable<TransportContext> loadActiveContexts() {
        Function function;
        function = SQLiteEventStore$$Lambda$12.instance;
        return (Iterable) inTransaction(function);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public Iterable<PersistedEvent> loadBatch(TransportContext transportContext) {
        return (Iterable) inTransaction(SQLiteEventStore$$Lambda$11.lambdaFactory$(this, transportContext));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public PersistedEvent persist(TransportContext transportContext, EventInternal eventInternal) {
        Logging.m1382d(LOG_TAG, "Storing event with priority=%s, name=%s for destination %s", transportContext.getPriority(), eventInternal.getTransportName(), transportContext.getBackendName());
        long longValue = ((Long) inTransaction(SQLiteEventStore$$Lambda$5.lambdaFactory$(this, transportContext, eventInternal))).longValue();
        if (longValue < 1) {
            return null;
        }
        return PersistedEvent.create(longValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordFailure(Iterable<PersistedEvent> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        inTransaction(SQLiteEventStore$$Lambda$7.lambdaFactory$("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + toIdList(iterable)));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordNextCallTime(TransportContext transportContext, long j) {
        inTransaction(SQLiteEventStore$$Lambda$10.lambdaFactory$(j, transportContext));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    public void recordSuccess(Iterable<PersistedEvent> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        getDb().compileStatement("DELETE FROM events WHERE _id in " + toIdList(iterable)).execute();
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard
    public <T> T runCriticalSection(SynchronizationGuard.CriticalSection<T> criticalSection) {
        SQLiteDatabase db = getDb();
        ensureBeginTransaction(db);
        try {
            T execute = criticalSection.execute();
            db.setTransactionSuccessful();
            return execute;
        } finally {
            db.endTransaction();
        }
    }
}
