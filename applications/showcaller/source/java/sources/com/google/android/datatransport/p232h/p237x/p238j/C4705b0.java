package com.google.android.datatransport.p232h.p237x.p238j;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.allinone.callerid.bean.ShortCut;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
import com.google.android.datatransport.p232h.C4663g;
import com.google.android.datatransport.p232h.p235v.C4687a;
import com.google.android.datatransport.p232h.p239y.AbstractC4746a;
import com.google.android.datatransport.p232h.p240z.C4754a;
import com.google.android.datatransport.runtime.synchronization.AbstractC4794a;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
/* renamed from: com.google.android.datatransport.h.x.j.b0 */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/b0.class */
public class C4705b0 implements AbstractC4710c, AbstractC4794a {

    /* renamed from: d */
    private static final C4602b f14298d = C4602b.m22183b("proto");

    /* renamed from: e */
    private final C4725h0 f14299e;

    /* renamed from: f */
    private final AbstractC4746a f14300f;

    /* renamed from: g */
    private final AbstractC4746a f14301g;

    /* renamed from: h */
    private final AbstractC4712d f14302h;

    /* renamed from: com.google.android.datatransport.h.x.j.b0$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/b0$b.class */
    public interface AbstractC4707b<T, U> {
        /* renamed from: a */
        U mo21859a(T t);
    }

    /* renamed from: com.google.android.datatransport.h.x.j.b0$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/b0$c.class */
    public static class C4708c {

        /* renamed from: a */
        final String f14303a;

        /* renamed from: b */
        final String f14304b;

        private C4708c(String str, String str2) {
            this.f14303a = str;
            this.f14304b = str2;
        }
    }

    /* renamed from: com.google.android.datatransport.h.x.j.b0$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/j/b0$d.class */
    public interface AbstractC4709d<T> {
        /* renamed from: a */
        T mo21867a();
    }

    public C4705b0(AbstractC4746a abstractC4746a, AbstractC4746a abstractC4746a2, AbstractC4712d abstractC4712d, C4725h0 c4725h0) {
        this.f14299e = c4725h0;
        this.f14300f = abstractC4746a;
        this.f14301g = abstractC4746a2;
        this.f14302h = abstractC4712d;
    }

    /* renamed from: D */
    public static /* synthetic */ Object m21965D(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: E */
    public static /* synthetic */ SQLiteDatabase m21964E(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* renamed from: I */
    public static /* synthetic */ Long m21963I(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: L */
    public static /* synthetic */ Long m21962L(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* renamed from: P */
    public static /* synthetic */ List m21960P(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            arrayList.add(AbstractC4673m.m22024a().mo22018b(cursor.getString(1)).mo22016d(C4754a.m21845b(cursor.getInt(2))).mo22017c(m21946i0(cursor.getString(3))).mo22019a());
        }
        return arrayList;
    }

    /* renamed from: Q */
    public static /* synthetic */ List m21959Q(SQLiteDatabase sQLiteDatabase) {
        return (List) m21940o0(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C4739t.m21865b());
    }

    /* renamed from: U */
    public static /* synthetic */ Object m21957U(C4705b0 c4705b0, List list, AbstractC4673m abstractC4673m, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            AbstractC4664h.AbstractC4665a mo22043k = AbstractC4664h.m22065a().mo22044j(cursor.getString(1)).mo22045i(cursor.getLong(2)).mo22043k(cursor.getLong(3));
            if (z) {
                mo22043k.mo22046h(new C4663g(m21942m0(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                mo22043k.mo22046h(new C4663g(m21942m0(cursor.getString(4)), c4705b0.m21944k0(j)));
            }
            if (!cursor.isNull(6)) {
                mo22043k.mo22047g(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(AbstractC4727i.m21883a(j, abstractC4673m, mo22043k.mo22050d()));
        }
        return null;
    }

    /* renamed from: W */
    public static /* synthetic */ Object m21956W(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            HashSet hashSet = set;
            if (set == null) {
                hashSet = new HashSet();
                map.put(Long.valueOf(j), hashSet);
            }
            hashSet.add(new C4708c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* renamed from: Y */
    public static /* synthetic */ Long m21955Y(C4705b0 c4705b0, AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h, SQLiteDatabase sQLiteDatabase) {
        if (c4705b0.m21936y()) {
            return -1L;
        }
        long m21949f = c4705b0.m21949f(sQLiteDatabase, abstractC4673m);
        int mo21918e = c4705b0.f14302h.mo21918e();
        byte[] m22067a = abstractC4664h.mo22061e().m22067a();
        boolean z = m22067a.length <= mo21918e;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(m21949f));
        contentValues.put("transport_name", abstractC4664h.mo22056j());
        contentValues.put("timestamp_ms", Long.valueOf(abstractC4664h.mo22060f()));
        contentValues.put("uptime_ms", Long.valueOf(abstractC4664h.mo22055k()));
        contentValues.put("payload_encoding", abstractC4664h.mo22061e().m22066b().m22184a());
        contentValues.put("code", abstractC4664h.mo22062d());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put("payload", z ? m22067a : new byte[0]);
        long insert = sQLiteDatabase.insert("events", null, contentValues);
        if (!z) {
            int ceil = (int) Math.ceil(m22067a.length / mo21918e);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(m22067a, (i - 1) * mo21918e, Math.min(i * mo21918e, m22067a.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : abstractC4664h.m22057i().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put(ShortCut.NAME, entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: Z */
    public static /* synthetic */ byte[] m21954Z(Cursor cursor) {
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

    /* renamed from: a0 */
    public static /* synthetic */ Object m21953a0(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: d0 */
    public static /* synthetic */ Object m21952d0(long j, AbstractC4673m abstractC4673m, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC4673m.mo22023b(), String.valueOf(C4754a.m21846a(abstractC4673m.mo22021d()))}) < 1) {
            contentValues.put("backend_name", abstractC4673m.mo22023b());
            contentValues.put("priority", Integer.valueOf(C4754a.m21846a(abstractC4673m.mo22021d())));
            sQLiteDatabase.insert("transport_contexts", null, contentValues);
            return null;
        }
        return null;
    }

    /* renamed from: e */
    private void m21951e(SQLiteDatabase sQLiteDatabase) {
        m21943l0(C4736q.m21869b(sQLiteDatabase), C4737r.m21868b());
    }

    /* renamed from: e0 */
    public List<AbstractC4727i> m21950e0(SQLiteDatabase sQLiteDatabase, AbstractC4673m abstractC4673m) {
        ArrayList arrayList = new ArrayList();
        Long m21938q = m21938q(sQLiteDatabase, abstractC4673m);
        if (m21938q == null) {
            return arrayList;
        }
        m21940o0(sQLiteDatabase.query("events", new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{m21938q.toString()}, null, null, null, String.valueOf(this.f14302h.mo21919d())), C4733n.m21872b(this, arrayList, abstractC4673m));
        return arrayList;
    }

    /* renamed from: f */
    private long m21949f(SQLiteDatabase sQLiteDatabase, AbstractC4673m abstractC4673m) {
        Long m21938q = m21938q(sQLiteDatabase, abstractC4673m);
        if (m21938q != null) {
            return m21938q.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", abstractC4673m.mo22023b());
        contentValues.put("priority", Integer.valueOf(C4754a.m21846a(abstractC4673m.mo22021d())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (abstractC4673m.mo22022c() != null) {
            contentValues.put("extras", Base64.encodeToString(abstractC4673m.mo22022c(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    /* renamed from: h0 */
    private Map<Long, Set<C4708c>> m21947h0(SQLiteDatabase sQLiteDatabase, List<AbstractC4727i> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo21881c());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m21940o0(sQLiteDatabase.query("event_metadata", new String[]{"event_id", ShortCut.NAME, "value"}, sb.toString(), null, null, null, null), C4735p.m21870b(hashMap));
        return hashMap;
    }

    /* renamed from: i0 */
    private static byte[] m21946i0(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* renamed from: k */
    private long m21945k() {
        return m21948g().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    /* renamed from: k0 */
    private byte[] m21944k0(long j) {
        return (byte[]) m21940o0(m21948g().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C4734o.m21871b());
    }

    /* renamed from: l0 */
    private <T> T m21943l0(AbstractC4709d<T> abstractC4709d, AbstractC4707b<Throwable, T> abstractC4707b) {
        long mo21847a = this.f14301g.mo21847a();
        while (true) {
            try {
                return abstractC4709d.mo21867a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f14301g.mo21847a() >= this.f14302h.mo21921b() + mo21847a) {
                    return abstractC4707b.mo21859a(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* renamed from: m0 */
    private static C4602b m21942m0(String str) {
        return str == null ? f14298d : C4602b.m22183b(str);
    }

    /* renamed from: n0 */
    private static String m21941n0(Iterable<AbstractC4727i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC4727i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo21881c());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: o0 */
    static <T> T m21940o0(Cursor cursor, AbstractC4707b<Cursor, T> abstractC4707b) {
        try {
            return abstractC4707b.mo21859a(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: p */
    private long m21939p() {
        return m21948g().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    /* renamed from: q */
    public Long m21938q(SQLiteDatabase sQLiteDatabase, AbstractC4673m abstractC4673m) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC4673m.mo22023b(), String.valueOf(C4754a.m21846a(abstractC4673m.mo22021d()))));
        if (abstractC4673m.mo22022c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC4673m.mo22022c(), 0));
        } else {
            sb.append(" and extras is null");
        }
        return (Long) m21940o0(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), C4743x.m21861b());
    }

    /* renamed from: y */
    private boolean m21936y() {
        return m21945k() * m21939p() >= this.f14302h.mo21917f();
    }

    /* renamed from: z */
    private List<AbstractC4727i> m21935z(List<AbstractC4727i> list, Map<Long, Set<C4708c>> map) {
        ListIterator<AbstractC4727i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractC4727i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo21881c()))) {
                AbstractC4664h.AbstractC4665a m22054l = next.mo21882b().m22054l();
                for (C4708c c4708c : map.get(Long.valueOf(next.mo21881c()))) {
                    m22054l.m22051c(c4708c.f14303a, c4708c.f14304b);
                }
                listIterator.set(AbstractC4727i.m21883a(next.mo21881c(), next.mo21880d(), m22054l.mo22050d()));
            }
        }
        return list;
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: B */
    public Iterable<AbstractC4673m> mo21934B() {
        return (Iterable) m21937u(C4731l.m21874b());
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: X */
    public AbstractC4727i mo21933X(AbstractC4673m abstractC4673m, AbstractC4664h abstractC4664h) {
        C4687a.m21992b("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", abstractC4673m.mo22021d(), abstractC4664h.mo22056j(), abstractC4673m.mo22023b());
        long longValue = ((Long) m21937u(C4742w.m21862b(this, abstractC4673m, abstractC4664h))).longValue();
        if (longValue < 1) {
            return null;
        }
        return AbstractC4727i.m21883a(longValue, abstractC4673m, abstractC4664h);
    }

    @Override // com.google.android.datatransport.runtime.synchronization.AbstractC4794a
    /* renamed from: a */
    public <T> T mo21762a(AbstractC4794a.AbstractC4795a<T> abstractC4795a) {
        SQLiteDatabase m21948g = m21948g();
        m21951e(m21948g);
        try {
            T execute = abstractC4795a.execute();
            m21948g.setTransactionSuccessful();
            return execute;
        } finally {
            m21948g.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: b0 */
    public long mo21932b0(AbstractC4673m abstractC4673m) {
        return ((Long) m21940o0(m21948g().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC4673m.mo22023b(), String.valueOf(C4754a.m21846a(abstractC4673m.mo22021d()))}), C4745z.m21858b())).longValue();
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: c0 */
    public boolean mo21931c0(AbstractC4673m abstractC4673m) {
        return ((Boolean) m21937u(C4703a0.m21968b(this, abstractC4673m))).booleanValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f14299e.close();
    }

    /* renamed from: g */
    SQLiteDatabase m21948g() {
        C4725h0 c4725h0 = this.f14299e;
        c4725h0.getClass();
        return (SQLiteDatabase) m21943l0(C4738s.m21866b(c4725h0), C4741v.m21863b());
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: g0 */
    public void mo21930g0(Iterable<AbstractC4727i> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        m21937u(C4744y.m21860b("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m21941n0(iterable)));
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: i */
    public int mo21929i() {
        return ((Integer) m21937u(C4732m.m21873b(this.f14300f.mo21847a() - this.f14302h.mo21920c()))).intValue();
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: l */
    public void mo21928l(Iterable<AbstractC4727i> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        m21948g().compileStatement("DELETE FROM events WHERE _id in " + m21941n0(iterable)).execute();
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: t */
    public Iterable<AbstractC4727i> mo21927t(AbstractC4673m abstractC4673m) {
        return (Iterable) m21937u(C4730k.m21875b(this, abstractC4673m));
    }

    /* renamed from: u */
    <T> T m21937u(AbstractC4707b<SQLiteDatabase, T> abstractC4707b) {
        SQLiteDatabase m21948g = m21948g();
        m21948g.beginTransaction();
        try {
            T mo21859a = abstractC4707b.mo21859a(m21948g);
            m21948g.setTransactionSuccessful();
            return mo21859a;
        } finally {
            m21948g.endTransaction();
        }
    }

    @Override // com.google.android.datatransport.p232h.p237x.p238j.AbstractC4710c
    /* renamed from: w */
    public void mo21926w(AbstractC4673m abstractC4673m, long j) {
        m21937u(C4729j.m21876b(j, abstractC4673m));
    }
}
