package com.google.android.datatransport.runtime.scheduling.persistence;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.android.datatransport.runtime.time.Monotonic;
import com.google.android.datatransport.runtime.time.WallTime;
import com.google.android.datatransport.runtime.util.PriorityMapping;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.Constants;
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
@WorkerThread
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore.class */
public class SQLiteEventStore implements EventStore, SynchronizationGuard {

    /* renamed from: j */
    private static final Encoding f6785j = Encoding.m15560b("proto");

    /* renamed from: f */
    private final SchemaManager f6786f;

    /* renamed from: g */
    private final Clock f6787g;

    /* renamed from: h */
    private final Clock f6788h;

    /* renamed from: i */
    private final EventStoreConfig f6789i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Function.class */
    public interface Function<T, U> {
        U apply(T t);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Metadata.class */
    public static class Metadata {

        /* renamed from: a */
        final String f6790a;

        /* renamed from: b */
        final String f6791b;

        private Metadata(String str, String str2) {
            this.f6790a = str;
            this.f6791b = str2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/persistence/SQLiteEventStore$Producer.class */
    public interface Producer<T> {
        /* renamed from: a */
        T mo15214a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Inject
    public SQLiteEventStore(@WallTime Clock clock, @Monotonic Clock clock2, EventStoreConfig eventStoreConfig, SchemaManager schemaManager) {
        this.f6786f = schemaManager;
        this.f6787g = clock;
        this.f6788h = clock2;
        this.f6789i = eventStoreConfig;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: B */
    public static /* synthetic */ Object m15275B(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public static /* synthetic */ SQLiteDatabase m15273I(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: J */
    public static /* synthetic */ Long m15272J(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: K */
    public static /* synthetic */ Long m15271K(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: N */
    public static /* synthetic */ List m15269N(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            TransportContext.Builder a = TransportContext.m15427a();
            a.mo15421b(cursor.getString(1));
            a.mo15419d(PriorityMapping.m15186b(cursor.getInt(2)));
            a.mo15420c(m15243o0(cursor.getString(3)));
            arrayList.add(a.mo15422a());
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: V */
    public static /* synthetic */ List m15268V(SQLiteDatabase sQLiteDatabase) {
        return (List) m15233y0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), SQLiteEventStore$$Lambda$20.m15222a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: W */
    public static /* synthetic */ List m15267W(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        List<PersistedEvent> i0 = sQLiteEventStore.m15252i0(sQLiteDatabase, transportContext);
        sQLiteEventStore.m15244o(i0, sQLiteEventStore.m15251j0(sQLiteDatabase, i0));
        return i0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: X */
    public static /* synthetic */ Object m15266X(SQLiteEventStore sQLiteEventStore, List list, TransportContext transportContext, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            EventInternal.Builder a = EventInternal.m15467a();
            a.mo15446j(cursor.getString(1));
            a.mo15447i(cursor.getLong(2));
            a.mo15445k(cursor.getLong(3));
            if (z) {
                a.mo15448h(new EncodedPayload(m15236w0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                a.mo15448h(new EncodedPayload(m15236w0(cursor.getString(4)), sQLiteEventStore.m15239u0(j)));
            }
            if (!cursor.isNull(6)) {
                a.mo15449g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(PersistedEvent.m15279a(j, transportContext, a.mo15452d()));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Y */
    public static /* synthetic */ Object m15265Y(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            Set set2 = set;
            if (set == null) {
                set2 = new HashSet();
                map.put(Long.valueOf(j), set2);
            }
            set2.add(new Metadata(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: Z */
    public static /* synthetic */ Long m15264Z(SQLiteEventStore sQLiteEventStore, TransportContext transportContext, EventInternal eventInternal, SQLiteDatabase sQLiteDatabase) {
        if (sQLiteEventStore.m15247m()) {
            return -1L;
        }
        long d = sQLiteEventStore.m15261d(sQLiteDatabase, transportContext);
        int e = sQLiteEventStore.f6789i.mo15299e();
        byte[] a = eventInternal.mo15463e().m15469a();
        boolean z = a.length <= e;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(d));
        contentValues.put("transport_name", eventInternal.mo15458j());
        contentValues.put("timestamp_ms", Long.valueOf(eventInternal.mo15462f()));
        contentValues.put("uptime_ms", Long.valueOf(eventInternal.mo15457k()));
        contentValues.put("payload_encoding", eventInternal.mo15463e().m15468b().m15561a());
        contentValues.put("code", eventInternal.mo15464d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put("payload", z ? a : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            int ceil = (int) Math.ceil(a.length / e);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(a, (i - 1) * e, Math.min(i * e, a.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : eventInternal.m15459i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put(FirebaseAnalytics.Param.VALUE, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: b */
    private void m15263b(SQLiteDatabase sQLiteDatabase) {
        m15237v0(SQLiteEventStore$$Lambda$18.m15224b(sQLiteDatabase), SQLiteEventStore$$Lambda$19.m15223a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b0 */
    public static /* synthetic */ byte[] m15262b0(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (cursor.moveToNext()) {
            byte[] blob = cursor.getBlob(0);
            arrayList.add(blob);
            i += blob.length;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < arrayList.size(); i3++) {
            byte[] bArr2 = (byte[]) arrayList.get(i3);
            System.arraycopy(bArr2, 0, bArr, i2, bArr2.length);
            i2 += bArr2.length;
        }
        return bArr;
    }

    /* renamed from: d */
    private long m15261d(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        Long k = m15250k(sQLiteDatabase, transportContext);
        if (k != null) {
            return k.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", transportContext.mo15426b());
        contentValues.put(Constants.FirelogAnalytics.PARAM_PRIORITY, Integer.valueOf(PriorityMapping.m15187a(transportContext.mo15424d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (transportContext.mo15425c() != null) {
            contentValues.put("extras", Base64.encodeToString(transportContext.mo15425c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d0 */
    public static /* synthetic */ Object m15260d0(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e0 */
    public static /* synthetic */ Object m15258e0(long j, TransportContext transportContext, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{transportContext.mo15426b(), String.valueOf(PriorityMapping.m15187a(transportContext.mo15424d()))}) >= 1) {
            return null;
        }
        contentValues.put("backend_name", transportContext.mo15426b());
        contentValues.put(Constants.FirelogAnalytics.PARAM_PRIORITY, Integer.valueOf(PriorityMapping.m15187a(transportContext.mo15424d())));
        sQLiteDatabase.insert("transport_contexts", null, contentValues);
        return null;
    }

    /* renamed from: h */
    private long m15254h() {
        return m15259e().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    /* renamed from: i */
    private long m15253i() {
        return m15259e().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    /* renamed from: i0 */
    private List<PersistedEvent> m15252i0(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        ArrayList arrayList = new ArrayList();
        Long k = m15250k(sQLiteDatabase, transportContext);
        if (k == null) {
            return arrayList;
        }
        m15233y0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{k.toString()}, null, null, null, String.valueOf(this.f6789i.mo15300d())), SQLiteEventStore$$Lambda$15.m15227a(this, arrayList, transportContext));
        return arrayList;
    }

    /* renamed from: j0 */
    private Map<Long, Set<Metadata>> m15251j0(SQLiteDatabase sQLiteDatabase, List<PersistedEvent> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo15277c());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m15233y0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", FirebaseAnalytics.Param.VALUE}, sb.toString(), null, null, null, null), SQLiteEventStore$$Lambda$17.m15225a(hashMap));
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    /* renamed from: k */
    public Long m15250k(SQLiteDatabase sQLiteDatabase, TransportContext transportContext) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(transportContext.mo15426b(), String.valueOf(PriorityMapping.m15187a(transportContext.mo15424d()))));
        if (transportContext.mo15425c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(transportContext.mo15425c(), 0));
        }
        return (Long) m15233y0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), SQLiteEventStore$$Lambda$6.m15218a());
    }

    /* renamed from: l */
    private <T> T m15248l(Function<SQLiteDatabase, T> function) {
        SQLiteDatabase e = m15259e();
        e.beginTransaction();
        try {
            T apply = function.apply(e);
            e.setTransactionSuccessful();
            return apply;
        } finally {
            e.endTransaction();
        }
    }

    /* renamed from: m */
    private boolean m15247m() {
        return m15254h() * m15253i() >= this.f6789i.mo15298f();
    }

    /* renamed from: o */
    private List<PersistedEvent> m15244o(List<PersistedEvent> list, Map<Long, Set<Metadata>> map) {
        ListIterator<PersistedEvent> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            PersistedEvent next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo15277c()))) {
                EventInternal.Builder l = next.mo15278b().m15456l();
                for (Metadata metadata : map.get(Long.valueOf(next.mo15277c()))) {
                    l.m15453c(metadata.f6790a, metadata.f6791b);
                }
                listIterator.set(PersistedEvent.m15279a(next.mo15277c(), next.mo15276d(), l.mo15452d()));
            }
        }
        return list;
    }

    /* renamed from: o0 */
    private static byte[] m15243o0(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: q */
    public static /* synthetic */ Object m15241q(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.delete("events", null, new String[0]);
        sQLiteDatabase.delete("transport_contexts", null, new String[0]);
        return null;
    }

    /* renamed from: u0 */
    private byte[] m15239u0(long j) {
        return (byte[]) m15233y0(m15259e().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), SQLiteEventStore$$Lambda$16.m15226a());
    }

    /* renamed from: v0 */
    private <T> T m15237v0(Producer<T> producer, Function<Throwable, T> function) {
        long a = this.f6788h.mo15188a();
        while (true) {
            try {
                return producer.mo15214a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f6788h.mo15188a() >= this.f6789i.mo15302b() + a) {
                    return function.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* renamed from: w0 */
    private static Encoding m15236w0(@Nullable String str) {
        return str == null ? f6785j : Encoding.m15560b(str);
    }

    /* renamed from: x0 */
    private static String m15234x0(Iterable<PersistedEvent> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<PersistedEvent> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo15277c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: y0 */
    private static <T> T m15233y0(Cursor cursor, Function<Cursor, T> function) {
        try {
            return function.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: C */
    public Iterable<TransportContext> mo15274C() {
        return (Iterable) m15248l(SQLiteEventStore$$Lambda$12.m15229a());
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard
    /* renamed from: a */
    public <T> T mo15197a(SynchronizationGuard.CriticalSection<T> criticalSection) {
        SQLiteDatabase e = m15259e();
        m15263b(e);
        try {
            T execute = criticalSection.execute();
            e.setTransactionSuccessful();
            return execute;
        } finally {
            e.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f6786f.close();
    }

    @VisibleForTesting
    /* renamed from: e */
    SQLiteDatabase m15259e() {
        SchemaManager schemaManager = this.f6786f;
        schemaManager.getClass();
        return (SQLiteDatabase) m15237v0(SQLiteEventStore$$Lambda$1.m15232b(schemaManager), SQLiteEventStore$$Lambda$4.m15220a());
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: f */
    public int mo15257f() {
        return ((Integer) m15248l(SQLiteEventStore$$Lambda$13.m15228a(this.f6787g.mo15188a() - this.f6789i.mo15301c()))).intValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    @Nullable
    /* renamed from: f0 */
    public PersistedEvent mo15256f0(TransportContext transportContext, EventInternal eventInternal) {
        Logging.m15375b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", transportContext.mo15424d(), eventInternal.mo15458j(), transportContext.mo15426b());
        long longValue = ((Long) m15248l(SQLiteEventStore$$Lambda$5.m15219a(this, transportContext, eventInternal))).longValue();
        if (longValue < 1) {
            return null;
        }
        return PersistedEvent.m15279a(longValue, transportContext, eventInternal);
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: g */
    public void mo15255g(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            m15259e().compileStatement("DELETE FROM events WHERE _id in " + m15234x0(iterable)).execute();
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: k0 */
    public long mo15249k0(TransportContext transportContext) {
        return ((Long) m15233y0(m15259e().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{transportContext.mo15426b(), String.valueOf(PriorityMapping.m15187a(transportContext.mo15424d()))}), SQLiteEventStore$$Lambda$8.m15216a())).longValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: m0 */
    public boolean mo15246m0(TransportContext transportContext) {
        return ((Boolean) m15248l(SQLiteEventStore$$Lambda$9.m15215a(this, transportContext))).booleanValue();
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: n0 */
    public void mo15245n0(Iterable<PersistedEvent> iterable) {
        if (iterable.iterator().hasNext()) {
            m15248l(SQLiteEventStore$$Lambda$7.m15217a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m15234x0(iterable)));
        }
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: v */
    public Iterable<PersistedEvent> mo15238v(TransportContext transportContext) {
        return (Iterable) m15248l(SQLiteEventStore$$Lambda$11.m15230a(this, transportContext));
    }

    @Override // com.google.android.datatransport.runtime.scheduling.persistence.EventStore
    /* renamed from: x */
    public void mo15235x(TransportContext transportContext, long j) {
        m15248l(SQLiteEventStore$$Lambda$10.m15231a(j, transportContext));
    }
}
