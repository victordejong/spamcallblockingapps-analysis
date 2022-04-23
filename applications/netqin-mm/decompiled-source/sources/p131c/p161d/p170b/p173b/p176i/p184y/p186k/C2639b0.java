package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.Set;
import p131c.p161d.p170b.p173b.C2493b;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.C2561g;
import p131c.p161d.p170b.p173b.p176i.p177a0.AbstractC2541a;
import p131c.p161d.p170b.p173b.p176i.p178b0.C2552a;
import p131c.p161d.p170b.p173b.p176i.p182w.C2601a;
import p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a;
/* renamed from: c.d.b.b.i.y.k.b0 */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/b0.class */
public class C2639b0 implements AbstractC2644c, AbstractC2680a {

    /* renamed from: e */
    public static final C2493b f9762e = C2493b.m29661a("proto");

    /* renamed from: a */
    public final C2659h0 f9763a;

    /* renamed from: b */
    public final AbstractC2541a f9764b;

    /* renamed from: c */
    public final AbstractC2541a f9765c;

    /* renamed from: d */
    public final AbstractC2646d f9766d;

    /* renamed from: c.d.b.b.i.y.k.b0$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/b0$b.class */
    public interface AbstractC2641b<T, U> {
        U apply(T t);
    }

    /* renamed from: c.d.b.b.i.y.k.b0$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/b0$c.class */
    public static class C2642c {

        /* renamed from: a */
        public final String f9767a;

        /* renamed from: b */
        public final String f9768b;

        public C2642c(String str, String str2) {
            this.f9767a = str;
            this.f9768b = str2;
        }
    }

    /* renamed from: c.d.b.b.i.y.k.b0$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/b0$d.class */
    public interface AbstractC2643d<T> {
        /* renamed from: a */
        T mo29307a();
    }

    public C2639b0(AbstractC2541a aVar, AbstractC2541a aVar2, AbstractC2646d dVar, C2659h0 h0Var) {
        this.f9763a = h0Var;
        this.f9764b = aVar;
        this.f9765c = aVar2;
        this.f9766d = dVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Boolean m29391a(C2639b0 b0Var, AbstractC2571m mVar, SQLiteDatabase sQLiteDatabase) {
        Long b = b0Var.m29380b(sQLiteDatabase, mVar);
        if (b == null) {
            return false;
        }
        return (Boolean) m29397a(b0Var.m29401a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{b.toString()}), C2674u.m29304a());
    }

    /* renamed from: a */
    public static /* synthetic */ Long m29398a(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: a */
    public static /* synthetic */ Long m29390a(C2639b0 b0Var, AbstractC2571m mVar, AbstractC2562h hVar, SQLiteDatabase sQLiteDatabase) {
        if (b0Var.m29371d()) {
            return -1L;
        }
        long a = b0Var.m29395a(sQLiteDatabase, mVar);
        int d = b0Var.f9766d.mo29355d();
        byte[] a2 = hVar.mo29542c().m29548a();
        boolean z = a2.length <= d;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(a));
        contentValues.put("transport_name", hVar.mo29538f());
        contentValues.put("timestamp_ms", Long.valueOf(hVar.mo29540d()));
        contentValues.put("uptime_ms", Long.valueOf(hVar.mo29537g()));
        contentValues.put("payload_encoding", hVar.mo29542c().m29547b().m29662a());
        contentValues.put("code", hVar.mo29544b());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put("payload", z ? a2 : new byte[0]);
        long insert = sQLiteDatabase.insert(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues);
        if (!z) {
            double length = a2.length;
            double d2 = d;
            Double.isNaN(length);
            Double.isNaN(d2);
            int ceil = (int) Math.ceil(length / d2);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(a2, (i - 1) * d, Math.min(i * d, a2.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : hVar.m29539e().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put("value", entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29399a(long j, AbstractC2571m mVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{mVar.mo29506a(), String.valueOf(C2552a.m29552a(mVar.mo29503c()))}) >= 1) {
            return null;
        }
        contentValues.put("backend_name", mVar.mo29506a());
        contentValues.put("priority", Integer.valueOf(C2552a.m29552a(mVar.mo29503c())));
        sQLiteDatabase.insert("transport_contexts", null, contentValues);
        return null;
    }

    /* renamed from: a */
    public static <T> T m29397a(Cursor cursor, AbstractC2641b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29389a(C2639b0 b0Var, List list, AbstractC2571m mVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            AbstractC2562h.AbstractC2563a i = AbstractC2562h.m29535i();
            i.mo29530a(cursor.getString(1));
            i.mo29533a(cursor.getLong(2));
            i.mo29524b(cursor.getLong(3));
            if (z) {
                i.mo29532a(new C2561g(m29378b(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                i.mo29532a(new C2561g(m29378b(cursor.getString(4)), b0Var.m29370d(j)));
            }
            if (!cursor.isNull(6)) {
                i.mo29531a(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(AbstractC2661i.m29321a(j, mVar, i.mo29534a()));
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29387a(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29386a(Throwable th) {
        throw new SynchronizationException("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m29384a(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            Set set2 = set;
            if (set == null) {
                set2 = new HashSet();
                map.put(Long.valueOf(j), set2);
            }
            set2.add(new C2642c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m29388a(String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* renamed from: b */
    public static /* synthetic */ SQLiteDatabase m29377b(Throwable th) {
        throw new SynchronizationException("Timed out while trying to open db.", th);
    }

    /* renamed from: b */
    public static C2493b m29378b(String str) {
        return str == null ? f9762e : C2493b.m29661a(str);
    }

    /* renamed from: b */
    public static /* synthetic */ Long m29382b(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* renamed from: b */
    public static /* synthetic */ List m29379b(C2639b0 b0Var, AbstractC2571m mVar, SQLiteDatabase sQLiteDatabase) {
        List<AbstractC2661i> c = b0Var.m29373c(sQLiteDatabase, mVar);
        b0Var.m29385a(c, b0Var.m29394a(sQLiteDatabase, c));
        return c;
    }

    /* renamed from: c */
    public static String m29372c(Iterable<AbstractC2661i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC2661i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo29320b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: c */
    public static /* synthetic */ List m29375c(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            AbstractC2571m.AbstractC2572a d = AbstractC2571m.m29502d();
            d.mo29499a(cursor.getString(1));
            d.mo29500a(C2552a.m29553a(cursor.getInt(2)));
            d.mo29498a(m29388a(cursor.getString(3)));
            arrayList.add(d.mo29501a());
        }
        return arrayList;
    }

    /* renamed from: c */
    public static /* synthetic */ List m29374c(SQLiteDatabase sQLiteDatabase) {
        return (List) m29397a(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C2673t.m29305a());
    }

    /* renamed from: d */
    public static /* synthetic */ byte[] m29369d(Cursor cursor) {
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

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: T0 */
    public Iterable<AbstractC2571m> mo29368T0() {
        return (Iterable) m29393a(C2665l.m29314a());
    }

    /* renamed from: a */
    public final long m29395a(SQLiteDatabase sQLiteDatabase, AbstractC2571m mVar) {
        Long b = m29380b(sQLiteDatabase, mVar);
        if (b != null) {
            return b.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", mVar.mo29506a());
        contentValues.put("priority", Integer.valueOf(C2552a.m29552a(mVar.mo29503c())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (mVar.mo29504b() != null) {
            contentValues.put("extras", Base64.encodeToString(mVar.mo29504b(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    /* renamed from: a */
    public SQLiteDatabase m29401a() {
        C2659h0 h0Var = this.f9763a;
        h0Var.getClass();
        return (SQLiteDatabase) m29392a(C2672s.m29306a(h0Var), C2675v.m29303a());
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: a */
    public AbstractC2661i mo29365a(AbstractC2571m mVar, AbstractC2562h hVar) {
        C2601a.m29446a("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", mVar.mo29503c(), hVar.mo29538f(), mVar.mo29506a());
        long longValue = ((Long) m29393a(C2676w.m29302a(this, mVar, hVar))).longValue();
        if (longValue < 1) {
            return null;
        }
        return AbstractC2661i.m29321a(longValue, mVar, hVar);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: a */
    public Iterable<AbstractC2661i> mo29367a(AbstractC2571m mVar) {
        return (Iterable) m29393a(C2664k.m29315a(this, mVar));
    }

    /* renamed from: a */
    public final <T> T m29393a(AbstractC2641b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase a = m29401a();
        a.beginTransaction();
        try {
            T apply = bVar.apply(a);
            a.setTransactionSuccessful();
            return apply;
        } finally {
            a.endTransaction();
        }
    }

    /* renamed from: a */
    public final <T> T m29392a(AbstractC2643d<T> dVar, AbstractC2641b<Throwable, T> bVar) {
        long a = this.f9765c.mo29554a();
        while (true) {
            try {
                return dVar.mo29307a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f9765c.mo29554a() >= this.f9766d.mo29358a() + a) {
                    return bVar.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p187z.AbstractC2680a
    /* renamed from: a */
    public <T> T mo29298a(AbstractC2680a.AbstractC2681a<T> aVar) {
        SQLiteDatabase a = m29401a();
        m29396a(a);
        try {
            T execute = aVar.execute();
            a.setTransactionSuccessful();
            return execute;
        } finally {
            a.endTransaction();
        }
    }

    /* renamed from: a */
    public final List<AbstractC2661i> m29385a(List<AbstractC2661i> list, Map<Long, Set<C2642c>> map) {
        ListIterator<AbstractC2661i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractC2661i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo29320b()))) {
                AbstractC2562h.AbstractC2563a h = next.mo29322a().m29536h();
                for (C2642c cVar : map.get(Long.valueOf(next.mo29320b()))) {
                    h.m29527a(cVar.f9767a, cVar.f9768b);
                }
                listIterator.set(AbstractC2661i.m29321a(next.mo29320b(), next.mo29319c(), h.mo29534a()));
            }
        }
        return list;
    }

    /* renamed from: a */
    public final Map<Long, Set<C2642c>> m29394a(SQLiteDatabase sQLiteDatabase, List<AbstractC2661i> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo29320b());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m29397a(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), C2669p.m29310a(hashMap));
        return hashMap;
    }

    /* renamed from: a */
    public final void m29396a(SQLiteDatabase sQLiteDatabase) {
        m29392a(C2670q.m29309a(sQLiteDatabase), C2671r.m29308a());
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: a */
    public void mo29366a(AbstractC2571m mVar, long j) {
        m29393a(C2663j.m29316a(j, mVar));
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: a */
    public void mo29364a(Iterable<AbstractC2661i> iterable) {
        if (iterable.iterator().hasNext()) {
            m29401a().compileStatement("DELETE FROM events WHERE _id in " + m29372c(iterable)).execute();
        }
    }

    /* renamed from: b */
    public final long m29383b() {
        return m29401a().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: b */
    public long mo29363b(AbstractC2571m mVar) {
        return ((Long) m29397a(m29401a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{mVar.mo29506a(), String.valueOf(C2552a.m29552a(mVar.mo29503c()))}), C2679z.m29299a())).longValue();
    }

    /* renamed from: b */
    public final Long m29380b(SQLiteDatabase sQLiteDatabase, AbstractC2571m mVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(mVar.mo29506a(), String.valueOf(C2552a.m29552a(mVar.mo29503c()))));
        if (mVar.mo29504b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(mVar.mo29504b(), 0));
        }
        return (Long) m29397a(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), C2677x.m29301a());
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: b */
    public void mo29362b(Iterable<AbstractC2661i> iterable) {
        if (iterable.iterator().hasNext()) {
            m29393a(C2678y.m29300a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m29372c(iterable)));
        }
    }

    /* renamed from: c */
    public final long m29376c() {
        return m29401a().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    /* renamed from: c */
    public final List<AbstractC2661i> m29373c(SQLiteDatabase sQLiteDatabase, AbstractC2571m mVar) {
        ArrayList arrayList = new ArrayList();
        Long b = m29380b(sQLiteDatabase, mVar);
        if (b == null) {
            return arrayList;
        }
        m29397a(sQLiteDatabase.query(Constants.VIDEO_TRACKING_EVENTS_KEY, new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", "payload", "code", "inline"}, "context_id = ?", new String[]{b.toString()}, null, null, null, String.valueOf(this.f9766d.mo29356c())), C2667n.m29312a(this, arrayList, mVar));
        return arrayList;
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    /* renamed from: c */
    public boolean mo29361c(AbstractC2571m mVar) {
        return ((Boolean) m29393a(C2637a0.m29402a(this, mVar))).booleanValue();
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.AbstractC2644c
    public int cleanUp() {
        return ((Integer) m29393a(C2666m.m29313a(this.f9764b.mo29554a() - this.f9766d.mo29357b()))).intValue();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f9763a.close();
    }

    /* renamed from: d */
    public final boolean m29371d() {
        return m29383b() * m29376c() >= this.f9766d.mo29354e();
    }

    /* renamed from: d */
    public final byte[] m29370d(long j) {
        return (byte[]) m29397a(m29401a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C2668o.m29311a());
    }
}
