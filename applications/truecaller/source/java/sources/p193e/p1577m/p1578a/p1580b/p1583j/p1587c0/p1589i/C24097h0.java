package p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import javax.inject.Named;
import javax.inject.Singleton;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1580b.C23987b;
import p193e.p1577m.p1578a.p1580b.EnumC23989d;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24151n;
import p193e.p1577m.p1578a.p1580b.p1583j.AbstractC24158r;
import p193e.p1577m.p1578a.p1580b.p1583j.C24141i;
import p193e.p1577m.p1578a.p1580b.p1583j.C24150m;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24032a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1584a0.p1585a.C24035c;
import p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0;
import p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b;
import p193e.p1577m.p1578a.p1580b.p1583j.p1591e0.AbstractC24130a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1592f0.C24138a;
import p193e.p1577m.p1578a.p1580b.p1583j.p1594z.AbstractC24182a;
@Singleton
/* renamed from: e.m.a.b.j.c0.i.h0 */
/* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/h0.class */
public class C24097h0 implements AbstractC24080a0, AbstractC24127b, AbstractC24124z {

    /* renamed from: f */
    public static final C23987b f66773f = new C23987b("proto");

    /* renamed from: a */
    public final C24105j0 f66774a;

    /* renamed from: b */
    public final AbstractC24130a f66775b;

    /* renamed from: c */
    public final AbstractC24130a f66776c;

    /* renamed from: d */
    public final AbstractC24082b0 f66777d;

    /* renamed from: e */
    public final AbstractC24182a<String> f66778e;

    /* renamed from: e.m.a.b.j.c0.i.h0$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/h0$b.class */
    public interface AbstractC24099b<T, U> {
        U apply(T t);
    }

    /* renamed from: e.m.a.b.j.c0.i.h0$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/h0$c.class */
    public static class C24100c {

        /* renamed from: a */
        public final String f66779a;

        /* renamed from: b */
        public final String f66780b;

        public C24100c(String str, String str2, C24098a c24098a) {
            this.f66779a = str;
            this.f66780b = str2;
        }
    }

    /* renamed from: e.m.a.b.j.c0.i.h0$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/b/j/c0/i/h0$d.class */
    public interface AbstractC24101d<T> {
        /* renamed from: a */
        T mo5562a();
    }

    @Inject
    public C24097h0(AbstractC24130a abstractC24130a, AbstractC24130a abstractC24130a2, AbstractC24082b0 abstractC24082b0, C24105j0 c24105j0, @Named("PACKAGE_NAME") AbstractC24182a<String> abstractC24182a) {
        this.f66774a = c24105j0;
        this.f66775b = abstractC24130a;
        this.f66776c = abstractC24130a2;
        this.f66777d = abstractC24082b0;
        this.f66778e = abstractC24182a;
    }

    /* renamed from: I */
    public static String m5577I(Iterable<AbstractC24095g0> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC24095g0> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo5555b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: J */
    public static <T> T m5576J(Cursor cursor, AbstractC24099b<Cursor, T> abstractC24099b) {
        try {
            return abstractC24099b.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: E */
    public final <T> T m5579E(AbstractC24101d<T> abstractC24101d, AbstractC24099b<Throwable, T> abstractC24099b) {
        long mo5549a = this.f66776c.mo5549a();
        while (true) {
            try {
                return abstractC24101d.mo5562a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f66776c.mo5549a() >= this.f66777d.mo5561a() + mo5549a) {
                    return abstractC24099b.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: G */
    public void mo5578G(final AbstractC24158r abstractC24158r, final long j) {
        m5568s(new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.f
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
            public final Object apply(Object obj) {
                long j2 = j;
                AbstractC24158r abstractC24158r2 = abstractC24158r;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j2));
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC24158r2.mo5526b(), String.valueOf(C24138a.m5548a(abstractC24158r2.mo5524d()))}) < 1) {
                    contentValues.put("backend_name", abstractC24158r2.mo5526b());
                    contentValues.put(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(C24138a.m5548a(abstractC24158r2.mo5524d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                    return null;
                }
                return null;
            }
        });
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: K1 */
    public Iterable<AbstractC24095g0> mo5575K1(final AbstractC24158r abstractC24158r) {
        return (Iterable) m5568s(new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.d
            /* JADX WARN: Finally extract failed */
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
            public final Object apply(Object obj) {
                final C24097h0 c24097h0 = C24097h0.this;
                final AbstractC24158r abstractC24158r2 = abstractC24158r;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                Objects.requireNonNull(c24097h0);
                final List arrayList = new ArrayList();
                Long m5570q = c24097h0.m5570q(sQLiteDatabase, abstractC24158r2);
                if (m5570q != null) {
                    C24097h0.m5576J(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m5570q.toString()}, null, null, null, String.valueOf(c24097h0.f66777d.mo5559c())), new C24097h0.AbstractC24099b() { // from class: e.m.a.b.j.c0.i.l
                        @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
                        public final Object apply(Object obj2) {
                            C24097h0 c24097h02 = C24097h0.this;
                            List list = arrayList;
                            AbstractC24158r abstractC24158r3 = abstractC24158r2;
                            Cursor cursor = (Cursor) obj2;
                            Objects.requireNonNull(c24097h02);
                            while (cursor.moveToNext()) {
                                long j = cursor.getLong(0);
                                boolean z = cursor.getInt(7) != 0;
                                AbstractC24151n.AbstractC24152a m5545a = AbstractC24151n.m5545a();
                                m5545a.mo5530f(cursor.getString(1));
                                m5545a.mo5531e(cursor.getLong(2));
                                m5545a.mo5529g(cursor.getLong(3));
                                if (z) {
                                    String string = cursor.getString(4);
                                    m5545a.mo5532d(new C24150m(string == null ? C24097h0.f66773f : new C23987b(string), cursor.getBlob(5)));
                                } else {
                                    String string2 = cursor.getString(4);
                                    m5545a.mo5532d(new C24150m(string2 == null ? C24097h0.f66773f : new C23987b(string2), (byte[]) C24097h0.m5576J(c24097h02.m5571l().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C24094g.f66771a)));
                                }
                                if (!cursor.isNull(6)) {
                                    ((C24141i.C24143b) m5545a).f66855b = Integer.valueOf(cursor.getInt(6));
                                }
                                list.add(new C24123y(j, abstractC24158r3, m5545a.mo5534b()));
                            }
                            return null;
                        }
                    });
                }
                HashMap hashMap = new HashMap();
                StringBuilder sb = new StringBuilder("event_id IN (");
                for (int i = 0; i < arrayList.size(); i++) {
                    sb.append(((AbstractC24095g0) arrayList.get(i)).mo5555b());
                    if (i < arrayList.size() - 1) {
                        sb.append(',');
                    }
                }
                sb.append(')');
                Cursor query = sQLiteDatabase.query("event_metadata", new String[]{"event_id", AnalyticsConstants.NAME, "value"}, sb.toString(), null, null, null, null);
                while (query.moveToNext()) {
                    try {
                        long j = query.getLong(0);
                        Set set = (Set) hashMap.get(Long.valueOf(j));
                        Set set2 = set;
                        if (set == null) {
                            set2 = new HashSet();
                            hashMap.put(Long.valueOf(j), set2);
                        }
                        set2.add(new C24097h0.C24100c(query.getString(1), query.getString(2), null));
                    } catch (Throwable th) {
                        query.close();
                        throw th;
                    }
                }
                query.close();
                ListIterator listIterator = arrayList.listIterator();
                while (listIterator.hasNext()) {
                    AbstractC24095g0 abstractC24095g0 = (AbstractC24095g0) listIterator.next();
                    if (hashMap.containsKey(Long.valueOf(abstractC24095g0.mo5555b()))) {
                        AbstractC24151n.AbstractC24152a m5536j = abstractC24095g0.mo5556a().m5536j();
                        for (C24097h0.C24100c c24100c : (Set) hashMap.get(Long.valueOf(abstractC24095g0.mo5555b()))) {
                            m5536j.m5535a(c24100c.f66779a, c24100c.f66780b);
                        }
                        listIterator.set(new C24123y(abstractC24095g0.mo5555b(), abstractC24095g0.mo5554c(), m5536j.mo5534b()));
                    }
                }
                return arrayList;
            }
        });
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: P0 */
    public void mo5574P0(Iterable<AbstractC24095g0> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("DELETE FROM events WHERE _id in ");
        m8728C.append(m5577I(iterable));
        m5571l().compileStatement(m8728C.toString()).execute();
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: Y0 */
    public Iterable<AbstractC24158r> mo5573Y0() {
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            List list = (List) m5576J(m5571l.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C24096h.f66772a);
            m5571l.setTransactionSuccessful();
            return list;
        } finally {
            m5571l.endTransaction();
        }
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: a2 */
    public AbstractC24095g0 mo5572a2(final AbstractC24158r abstractC24158r, final AbstractC24151n abstractC24151n) {
        EnumC23989d mo5524d = abstractC24158r.mo5524d();
        String mo5538h = abstractC24151n.mo5538h();
        String mo5526b = abstractC24158r.mo5526b();
        C26232y.m2479C0("SQLiteEventStore");
        String.format("Storing event with priority=%s, name=%s for destination %s", mo5524d, mo5538h, mo5526b);
        long longValue = ((Long) m5568s(new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.m
            /* JADX WARN: Type inference failed for: r0v96, types: [long] */
            /* JADX WARN: Type inference failed for: r0v99, types: [long] */
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
            public final Object apply(Object obj) {
                Long l;
                char c;
                C24097h0 c24097h0 = C24097h0.this;
                AbstractC24151n abstractC24151n2 = abstractC24151n;
                AbstractC24158r abstractC24158r2 = abstractC24158r;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                if (c24097h0.m5571l().compileStatement("PRAGMA page_size").simpleQueryForLong() * c24097h0.m5571l().compileStatement("PRAGMA page_count").simpleQueryForLong() >= c24097h0.f66777d.mo5557e()) {
                    c24097h0.mo5551j(1L, C24035c.EnumC24036a.CACHE_FULL, abstractC24151n2.mo5538h());
                    l = -1L;
                } else {
                    Long m5570q = c24097h0.m5570q(sQLiteDatabase, abstractC24158r2);
                    if (m5570q != null) {
                        c = m5570q.longValue();
                    } else {
                        ContentValues contentValues = new ContentValues();
                        contentValues.put("backend_name", abstractC24158r2.mo5526b());
                        contentValues.put(RemoteMessageConst.Notification.PRIORITY, Integer.valueOf(C24138a.m5548a(abstractC24158r2.mo5524d())));
                        contentValues.put("next_request_ms", (Integer) 0);
                        if (abstractC24158r2.mo5525c() != null) {
                            contentValues.put("extras", Base64.encodeToString(abstractC24158r2.mo5525c(), 0));
                        }
                        c = sQLiteDatabase.insert("transport_contexts", null, contentValues);
                    }
                    int mo5558d = c24097h0.f66777d.mo5558d();
                    byte[] bArr = abstractC24151n2.mo5541e().f66880b;
                    boolean z = bArr.length <= mo5558d;
                    ContentValues contentValues2 = new ContentValues();
                    contentValues2.put("context_id", Long.valueOf(c));
                    contentValues2.put("transport_name", abstractC24151n2.mo5538h());
                    contentValues2.put("timestamp_ms", Long.valueOf(abstractC24151n2.mo5540f()));
                    contentValues2.put("uptime_ms", Long.valueOf(abstractC24151n2.mo5537i()));
                    contentValues2.put("payload_encoding", abstractC24151n2.mo5541e().f66879a.f66464a);
                    contentValues2.put("code", abstractC24151n2.mo5542d());
                    contentValues2.put("num_attempts", (Integer) 0);
                    contentValues2.put("inline", Boolean.valueOf(z));
                    contentValues2.put("payload", z ? bArr : new byte[0]);
                    long insert = sQLiteDatabase.insert("events", null, contentValues2);
                    if (!z) {
                        int ceil = (int) Math.ceil(bArr.length / mo5558d);
                        for (int i = 1; i <= ceil; i++) {
                            byte[] copyOfRange = Arrays.copyOfRange(bArr, (i - 1) * mo5558d, Math.min(i * mo5558d, bArr.length));
                            ContentValues contentValues3 = new ContentValues();
                            contentValues3.put("event_id", Long.valueOf(insert));
                            contentValues3.put("sequence_num", Integer.valueOf(i));
                            contentValues3.put("bytes", copyOfRange);
                            sQLiteDatabase.insert("event_payloads", null, contentValues3);
                        }
                    }
                    for (Map.Entry entry : Collections.unmodifiableMap(abstractC24151n2.mo5543c()).entrySet()) {
                        ContentValues contentValues4 = new ContentValues();
                        contentValues4.put("event_id", Long.valueOf(insert));
                        contentValues4.put(AnalyticsConstants.NAME, (String) entry.getKey());
                        contentValues4.put("value", (String) entry.getValue());
                        sQLiteDatabase.insert("event_metadata", null, contentValues4);
                    }
                    l = Long.valueOf(insert);
                }
                return l;
            }
        })).longValue();
        if (longValue < 1) {
            return null;
        }
        return new C24123y(longValue, abstractC24158r, abstractC24151n);
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24124z
    /* renamed from: b */
    public void mo5553b() {
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            Objects.requireNonNull(this);
            m5571l.compileStatement("DELETE FROM log_event_dropped").execute();
            m5571l.compileStatement("UPDATE global_log_event_state SET last_metrics_upload_ms=" + this.f66775b.mo5549a()).execute();
            m5571l.setTransactionSuccessful();
        } finally {
            m5571l.endTransaction();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f66774a.close();
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24124z
    /* renamed from: d */
    public C24032a mo5552d() {
        int i = C24032a.f66625e;
        final C24032a.C24033a c24033a = new C24032a.C24033a();
        final HashMap hashMap = new HashMap();
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            Objects.requireNonNull(this);
            C24032a c24032a = (C24032a) m5576J(m5571l.rawQuery("SELECT log_source, reason, events_dropped_count FROM log_event_dropped", new String[0]), new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.n
                @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                    To view partially-correct add '--show-bad-code' argument
                */
                public final java.lang.Object apply(java.lang.Object r11) {
                    /*
                        Method dump skipped, instructions count: 473
                        To view this dump add '--comments-level debug' option
                    */
                    throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24111n.apply(java.lang.Object):java.lang.Object");
                }
            });
            m5571l.setTransactionSuccessful();
            return c24032a;
        } finally {
            m5571l.endTransaction();
        }
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24124z
    /* renamed from: j */
    public void mo5551j(final long j, final C24035c.EnumC24036a enumC24036a, final String str) {
        m5568s(new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.i
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
            public final Object apply(Object obj) {
                String str2 = str;
                C24035c.EnumC24036a enumC24036a2 = enumC24036a;
                long j2 = j;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                if (((Boolean) C24097h0.m5576J(sQLiteDatabase.rawQuery("SELECT 1 FROM log_event_dropped WHERE log_source = ? AND reason = ?", new String[]{str2, Integer.toString(enumC24036a2.f66647a)}), C24113p.f66814a)).booleanValue()) {
                    sQLiteDatabase.execSQL(C22128a.m8575r2("UPDATE log_event_dropped SET events_dropped_count = events_dropped_count + ", j2, " WHERE log_source = ? AND reason = ?"), new String[]{str2, Integer.toString(enumC24036a2.f66647a)});
                    return null;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("log_source", str2);
                contentValues.put("reason", Integer.valueOf(enumC24036a2.f66647a));
                contentValues.put("events_dropped_count", Long.valueOf(j2));
                sQLiteDatabase.insert("log_event_dropped", null, contentValues);
                return null;
            }
        });
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1590d0.AbstractC24127b
    /* renamed from: k */
    public <T> T mo5550k(AbstractC24127b.AbstractC24128a<T> abstractC24128a) {
        final SQLiteDatabase m5571l = m5571l();
        m5579E(new AbstractC24101d() { // from class: e.m.a.b.j.c0.i.e
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24101d
            /* renamed from: a */
            public final Object mo5562a() {
                m5571l.beginTransaction();
                return null;
            }
        }, C24081b.f66759a);
        try {
            T execute = abstractC24128a.execute();
            m5571l.setTransactionSuccessful();
            return execute;
        } finally {
            m5571l.endTransaction();
        }
    }

    /* renamed from: l */
    public SQLiteDatabase m5571l() {
        final C24105j0 c24105j0 = this.f66774a;
        Objects.requireNonNull(c24105j0);
        return (SQLiteDatabase) m5579E(new AbstractC24101d() { // from class: e.m.a.b.j.c0.i.w
            @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24101d
            /* renamed from: a */
            public final Object mo5562a() {
                return C24105j0.this.getWritableDatabase();
            }
        }, C24079a.f66758a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: q */
    public final Long m5570q(SQLiteDatabase sQLiteDatabase, AbstractC24158r abstractC24158r) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC24158r.mo5526b(), String.valueOf(C24138a.m5548a(abstractC24158r.mo5524d()))));
        if (abstractC24158r.mo5525c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC24158r.mo5525c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        Cursor query = sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null);
        try {
            Long valueOf = !query.moveToNext() ? null : Long.valueOf(query.getLong(0));
            query.close();
            return valueOf;
        } catch (Throwable th) {
            query.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: r1 */
    public long mo5569r1(AbstractC24158r abstractC24158r) {
        Cursor rawQuery = m5571l().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC24158r.mo5526b(), String.valueOf(C24138a.m5548a(abstractC24158r.mo5524d()))});
        try {
            Long valueOf = rawQuery.moveToNext() ? Long.valueOf(rawQuery.getLong(0)) : 0L;
            rawQuery.close();
            return valueOf.longValue();
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    /* renamed from: s */
    public <T> T m5568s(AbstractC24099b<SQLiteDatabase, T> abstractC24099b) {
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            T apply = abstractC24099b.apply(m5571l);
            m5571l.setTransactionSuccessful();
            return apply;
        } finally {
            m5571l.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: t1 */
    public boolean mo5567t1(AbstractC24158r abstractC24158r) {
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            Long m5570q = m5570q(m5571l, abstractC24158r);
            Boolean bool = m5570q == null ? Boolean.FALSE : (Boolean) m5576J(m5571l().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m5570q.toString()}), C24119v.f66820a);
            m5571l.setTransactionSuccessful();
            m5571l.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th) {
            m5571l.endTransaction();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: x */
    public int mo5566x() {
        long mo5549a = this.f66775b.mo5549a();
        long mo5560b = this.f66777d.mo5560b();
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            Objects.requireNonNull(this);
            String[] strArr = {String.valueOf(mo5549a - mo5560b)};
            m5576J(m5571l.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE timestamp_ms < ? GROUP BY transport_name", strArr), new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.j
                @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
                public final Object apply(Object obj) {
                    C24097h0 c24097h0 = C24097h0.this;
                    Cursor cursor = (Cursor) obj;
                    Objects.requireNonNull(c24097h0);
                    while (cursor.moveToNext()) {
                        int i = cursor.getInt(0);
                        c24097h0.mo5551j(i, C24035c.EnumC24036a.MESSAGE_TOO_OLD, cursor.getString(1));
                    }
                    return null;
                }
            });
            int delete = m5571l.delete("events", "timestamp_ms < ?", strArr);
            m5571l.setTransactionSuccessful();
            m5571l.endTransaction();
            return Integer.valueOf(delete).intValue();
        } catch (Throwable th) {
            m5571l.endTransaction();
            throw th;
        }
    }

    @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.AbstractC24080a0
    /* renamed from: x1 */
    public void mo5565x1(Iterable<AbstractC24095g0> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        StringBuilder m8728C = C22128a.m8728C("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ");
        m8728C.append(m5577I(iterable));
        String sb = m8728C.toString();
        SQLiteDatabase m5571l = m5571l();
        m5571l.beginTransaction();
        try {
            Objects.requireNonNull(this);
            m5571l.compileStatement(sb).execute();
            m5576J(m5571l.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null), new AbstractC24099b() { // from class: e.m.a.b.j.c0.i.o
                @Override // p193e.p1577m.p1578a.p1580b.p1583j.p1587c0.p1589i.C24097h0.AbstractC24099b
                public final Object apply(Object obj) {
                    C24097h0 c24097h0 = C24097h0.this;
                    Cursor cursor = (Cursor) obj;
                    Objects.requireNonNull(c24097h0);
                    while (cursor.moveToNext()) {
                        int i = cursor.getInt(0);
                        c24097h0.mo5551j(i, C24035c.EnumC24036a.MAX_RETRIES_REACHED, cursor.getString(1));
                    }
                    return null;
                }
            });
            m5571l.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
            m5571l.setTransactionSuccessful();
        } finally {
            m5571l.endTransaction();
        }
    }
}
