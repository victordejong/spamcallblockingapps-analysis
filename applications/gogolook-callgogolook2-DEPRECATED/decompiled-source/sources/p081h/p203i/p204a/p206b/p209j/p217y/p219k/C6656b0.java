package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.aotter.net.trek.model.AdFetch;
import com.mopub.common.Constants;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
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
import p081h.p203i.p204a.p206b.C6493b;
import p081h.p203i.p204a.p206b.p209j.AbstractC6571h;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.C6570g;
import p081h.p203i.p204a.p206b.p209j.p210a0.AbstractC6550a;
import p081h.p203i.p204a.p206b.p209j.p211b0.C6561a;
import p081h.p203i.p204a.p206b.p209j.p215w.C6613a;
import p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b;
import p081h.p203i.p204a.p206b.p209j.p220z.C6697a;
import p459j.p460a.p541n0.C13032a;
@Singleton
@WorkerThread
/* renamed from: h.i.a.b.j.y.k.b0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/b0.class */
public class C6656b0 implements AbstractC6661c, AbstractC6698b {

    /* renamed from: e */
    public static final C6493b f16529e = C6493b.m22467a("proto");

    /* renamed from: a */
    public final C6676h0 f16530a;

    /* renamed from: b */
    public final AbstractC6550a f16531b;

    /* renamed from: c */
    public final AbstractC6550a f16532c;

    /* renamed from: d */
    public final AbstractC6663d f16533d;

    /* renamed from: h.i.a.b.j.y.k.b0$b */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/b0$b.class */
    public interface AbstractC6658b<T, U> {
        U apply(T t);
    }

    /* renamed from: h.i.a.b.j.y.k.b0$c */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/b0$c.class */
    public static class C6659c {

        /* renamed from: a */
        public final String f16534a;

        /* renamed from: b */
        public final String f16535b;

        public C6659c(String str, String str2) {
            this.f16534a = str;
            this.f16535b = str2;
        }
    }

    /* renamed from: h.i.a.b.j.y.k.b0$d */
    /* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/b0$d.class */
    public interface AbstractC6660d<T> {
        /* renamed from: a */
        T mo22072a();
    }

    @Inject
    public C6656b0(AbstractC6550a aVar, AbstractC6550a aVar2, AbstractC6663d dVar, C6676h0 h0Var) {
        this.f16530a = h0Var;
        this.f16531b = aVar;
        this.f16532c = aVar2;
        this.f16533d = dVar;
    }

    /* renamed from: a */
    public static /* synthetic */ Boolean m22156a(C6656b0 b0Var, AbstractC6580m mVar, SQLiteDatabase sQLiteDatabase) {
        Long b = b0Var.m22145b(sQLiteDatabase, mVar);
        if (b == null) {
            return false;
        }
        return (Boolean) m22162a(b0Var.m22167a().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{b.toString()}), C6691u.m22069a());
    }

    /* renamed from: a */
    public static /* synthetic */ Long m22163a(Cursor cursor) {
        if (cursor.moveToNext()) {
            return Long.valueOf(cursor.getLong(0));
        }
        return 0L;
    }

    /* renamed from: a */
    public static /* synthetic */ Long m22155a(C6656b0 b0Var, AbstractC6580m mVar, AbstractC6571h hVar, SQLiteDatabase sQLiteDatabase) {
        if (b0Var.m22136d()) {
            return -1L;
        }
        long a = b0Var.m22160a(sQLiteDatabase, mVar);
        int d = b0Var.f16533d.mo22120d();
        byte[] a2 = hVar.mo22332c().m22338a();
        boolean z = a2.length <= d;
        ContentValues contentValues = new ContentValues();
        contentValues.put("context_id", Long.valueOf(a));
        contentValues.put("transport_name", hVar.mo22328f());
        contentValues.put("timestamp_ms", Long.valueOf(hVar.mo22330d()));
        contentValues.put("uptime_ms", Long.valueOf(hVar.mo22327g()));
        contentValues.put("payload_encoding", hVar.mo22332c().m22337b().m22468a());
        contentValues.put("code", hVar.mo22334b());
        contentValues.put("num_attempts", (Integer) 0);
        contentValues.put("inline", Boolean.valueOf(z));
        contentValues.put(AdFetch.AD_PAYLOAD_KEY, z ? a2 : new byte[0]);
        long insert = sQLiteDatabase.insert(Constants.VIDEO_TRACKING_EVENTS_KEY, null, contentValues);
        if (!z) {
            int ceil = (int) Math.ceil(a2.length / d);
            for (int i = 1; i <= ceil; i++) {
                byte[] copyOfRange = Arrays.copyOfRange(a2, (i - 1) * d, Math.min(i * d, a2.length));
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("event_id", Long.valueOf(insert));
                contentValues2.put("sequence_num", Integer.valueOf(i));
                contentValues2.put("bytes", copyOfRange);
                sQLiteDatabase.insert("event_payloads", null, contentValues2);
            }
        }
        for (Map.Entry<String, String> entry : hVar.m22329e().entrySet()) {
            ContentValues contentValues3 = new ContentValues();
            contentValues3.put("event_id", Long.valueOf(insert));
            contentValues3.put("name", entry.getKey());
            contentValues3.put(C13032a.f29462d, entry.getValue());
            sQLiteDatabase.insert("event_metadata", null, contentValues3);
        }
        return Long.valueOf(insert);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22164a(long j, AbstractC6580m mVar, SQLiteDatabase sQLiteDatabase) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("next_request_ms", Long.valueOf(j));
        if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{mVar.mo22296a(), String.valueOf(C6561a.m22342a(mVar.mo22293c()))}) >= 1) {
            return null;
        }
        contentValues.put("backend_name", mVar.mo22296a());
        contentValues.put(IapProductRealmObject.PRIORITY, Integer.valueOf(C6561a.m22342a(mVar.mo22293c())));
        sQLiteDatabase.insert("transport_contexts", null, contentValues);
        return null;
    }

    /* renamed from: a */
    public static <T> T m22162a(Cursor cursor, AbstractC6658b<Cursor, T> bVar) {
        try {
            return bVar.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22154a(C6656b0 b0Var, List list, AbstractC6580m mVar, Cursor cursor) {
        while (cursor.moveToNext()) {
            boolean z = false;
            long j = cursor.getLong(0);
            if (cursor.getInt(7) != 0) {
                z = true;
            }
            AbstractC6571h.AbstractC6572a i = AbstractC6571h.m22325i();
            i.mo22320a(cursor.getString(1));
            i.mo22323a(cursor.getLong(2));
            i.mo22314b(cursor.getLong(3));
            if (z) {
                i.mo22322a(new C6570g(m22143b(cursor.getString(4)), cursor.getBlob(5)));
            } else {
                i.mo22322a(new C6570g(m22143b(cursor.getString(4)), b0Var.m22166a(j)));
            }
            if (!cursor.isNull(6)) {
                i.mo22321a(Integer.valueOf(cursor.getInt(6)));
            }
            list.add(AbstractC6678i.m22086a(j, mVar, i.mo22324a()));
        }
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22152a(String str, SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.compileStatement(str).execute();
        sQLiteDatabase.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
        return null;
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22151a(Throwable th) {
        throw new C6697a("Timed out while trying to acquire the lock.", th);
    }

    /* renamed from: a */
    public static /* synthetic */ Object m22149a(Map map, Cursor cursor) {
        while (cursor.moveToNext()) {
            long j = cursor.getLong(0);
            Set set = (Set) map.get(Long.valueOf(j));
            Set set2 = set;
            if (set == null) {
                set2 = new HashSet();
                map.put(Long.valueOf(j), set2);
            }
            set2.add(new C6659c(cursor.getString(1), cursor.getString(2)));
        }
        return null;
    }

    /* renamed from: a */
    public static byte[] m22153a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return Base64.decode(str, 0);
    }

    /* renamed from: b */
    public static /* synthetic */ SQLiteDatabase m22142b(Throwable th) {
        throw new C6697a("Timed out while trying to open db.", th);
    }

    /* renamed from: b */
    public static C6493b m22143b(@Nullable String str) {
        return str == null ? f16529e : C6493b.m22467a(str);
    }

    /* renamed from: b */
    public static /* synthetic */ Long m22147b(Cursor cursor) {
        if (!cursor.moveToNext()) {
            return null;
        }
        return Long.valueOf(cursor.getLong(0));
    }

    /* renamed from: b */
    public static /* synthetic */ List m22144b(C6656b0 b0Var, AbstractC6580m mVar, SQLiteDatabase sQLiteDatabase) {
        List<AbstractC6678i> c = b0Var.m22138c(sQLiteDatabase, mVar);
        b0Var.m22150a(c, b0Var.m22159a(sQLiteDatabase, c));
        return c;
    }

    /* renamed from: c */
    public static String m22137c(Iterable<AbstractC6678i> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC6678i> it = iterable.iterator();
        while (it.hasNext()) {
            sb.append(it.next().mo22085b());
            if (it.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: c */
    public static /* synthetic */ List m22140c(Cursor cursor) {
        ArrayList arrayList = new ArrayList();
        while (cursor.moveToNext()) {
            AbstractC6580m.AbstractC6581a d = AbstractC6580m.m22292d();
            d.mo22289a(cursor.getString(1));
            d.mo22290a(C6561a.m22343a(cursor.getInt(2)));
            d.mo22288a(m22153a(cursor.getString(3)));
            arrayList.add(d.mo22291a());
        }
        return arrayList;
    }

    /* renamed from: c */
    public static /* synthetic */ List m22139c(SQLiteDatabase sQLiteDatabase) {
        return (List) m22162a(sQLiteDatabase.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C6690t.m22070a());
    }

    /* renamed from: d */
    public static /* synthetic */ byte[] m22135d(Cursor cursor) {
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

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: D */
    public int mo22134D() {
        return ((Integer) m22158a(C6683m.m22078a(this.f16531b.mo22344a() - this.f16533d.mo22122b()))).intValue();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: E */
    public Iterable<AbstractC6580m> mo22133E() {
        return (Iterable) m22158a(C6682l.m22079a());
    }

    /* renamed from: a */
    public final long m22160a(SQLiteDatabase sQLiteDatabase, AbstractC6580m mVar) {
        Long b = m22145b(sQLiteDatabase, mVar);
        if (b != null) {
            return b.longValue();
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("backend_name", mVar.mo22296a());
        contentValues.put(IapProductRealmObject.PRIORITY, Integer.valueOf(C6561a.m22342a(mVar.mo22293c())));
        contentValues.put("next_request_ms", (Integer) 0);
        if (mVar.mo22294b() != null) {
            contentValues.put("extras", Base64.encodeToString(mVar.mo22294b(), 0));
        }
        return sQLiteDatabase.insert("transport_contexts", null, contentValues);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: a */
    public long mo22132a(AbstractC6580m mVar) {
        return ((Long) m22162a(m22167a().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{mVar.mo22296a(), String.valueOf(C6561a.m22342a(mVar.mo22293c()))}), C6696z.m22064a())).longValue();
    }

    @VisibleForTesting
    /* renamed from: a */
    public SQLiteDatabase m22167a() {
        C6676h0 h0Var = this.f16530a;
        h0Var.getClass();
        return (SQLiteDatabase) m22157a(C6689s.m22071a(h0Var), C6692v.m22068a());
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    @Nullable
    /* renamed from: a */
    public AbstractC6678i mo22130a(AbstractC6580m mVar, AbstractC6571h hVar) {
        C6613a.m22233a("SQLiteEventStore", "Storing event with priority=%s, name=%s for destination %s", mVar.mo22293c(), hVar.mo22328f(), mVar.mo22296a());
        long longValue = ((Long) m22158a(C6693w.m22067a(this, mVar, hVar))).longValue();
        if (longValue < 1) {
            return null;
        }
        return AbstractC6678i.m22086a(longValue, mVar, hVar);
    }

    /* renamed from: a */
    public final <T> T m22158a(AbstractC6658b<SQLiteDatabase, T> bVar) {
        SQLiteDatabase a = m22167a();
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
    public final <T> T m22157a(AbstractC6660d<T> dVar, AbstractC6658b<Throwable, T> bVar) {
        long a = this.f16532c.mo22344a();
        while (true) {
            try {
                return dVar.mo22072a();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f16532c.mo22344a() >= this.f16533d.mo22123a() + a) {
                    return bVar.apply(e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p220z.AbstractC6698b
    /* renamed from: a */
    public <T> T mo22063a(AbstractC6698b.AbstractC6699a<T> aVar) {
        SQLiteDatabase a = m22167a();
        m22161a(a);
        try {
            T execute = aVar.execute();
            a.setTransactionSuccessful();
            return execute;
        } finally {
            a.endTransaction();
        }
    }

    /* renamed from: a */
    public final List<AbstractC6678i> m22150a(List<AbstractC6678i> list, Map<Long, Set<C6659c>> map) {
        ListIterator<AbstractC6678i> listIterator = list.listIterator();
        while (listIterator.hasNext()) {
            AbstractC6678i next = listIterator.next();
            if (map.containsKey(Long.valueOf(next.mo22085b()))) {
                AbstractC6571h.AbstractC6572a h = next.mo22087a().m22326h();
                for (C6659c cVar : map.get(Long.valueOf(next.mo22085b()))) {
                    h.m22317a(cVar.f16534a, cVar.f16535b);
                }
                listIterator.set(AbstractC6678i.m22086a(next.mo22085b(), next.mo22084c(), h.mo22324a()));
            }
        }
        return list;
    }

    /* renamed from: a */
    public final Map<Long, Set<C6659c>> m22159a(SQLiteDatabase sQLiteDatabase, List<AbstractC6678i> list) {
        HashMap hashMap = new HashMap();
        StringBuilder sb = new StringBuilder("event_id IN (");
        for (int i = 0; i < list.size(); i++) {
            sb.append(list.get(i).mo22085b());
            if (i < list.size() - 1) {
                sb.append(',');
            }
        }
        sb.append(')');
        m22162a(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", C13032a.f29462d}, sb.toString(), null, null, null, null), C6686p.m22075a(hashMap));
        return hashMap;
    }

    /* renamed from: a */
    public final void m22161a(SQLiteDatabase sQLiteDatabase) {
        m22157a(C6687q.m22074a(sQLiteDatabase), C6688r.m22073a());
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: a */
    public void mo22131a(AbstractC6580m mVar, long j) {
        m22158a(C6680j.m22081a(j, mVar));
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: a */
    public void mo22129a(Iterable<AbstractC6678i> iterable) {
        if (iterable.iterator().hasNext()) {
            m22167a().compileStatement("DELETE FROM events WHERE _id in " + m22137c(iterable)).execute();
        }
    }

    /* renamed from: a */
    public final byte[] m22166a(long j) {
        return (byte[]) m22162a(m22167a().query("event_payloads", new String[]{"bytes"}, "event_id = ?", new String[]{String.valueOf(j)}, null, null, "sequence_num"), C6685o.m22076a());
    }

    /* renamed from: b */
    public final long m22148b() {
        return m22167a().compileStatement("PRAGMA page_count").simpleQueryForLong();
    }

    @Nullable
    /* renamed from: b */
    public final Long m22145b(SQLiteDatabase sQLiteDatabase, AbstractC6580m mVar) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(mVar.mo22296a(), String.valueOf(C6561a.m22342a(mVar.mo22293c()))));
        if (mVar.mo22294b() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(mVar.mo22294b(), 0));
        }
        return (Long) m22162a(sQLiteDatabase.query("transport_contexts", new String[]{"_id"}, sb.toString(), (String[]) arrayList.toArray(new String[0]), null, null, null), C6694x.m22066a());
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: b */
    public void mo22127b(Iterable<AbstractC6678i> iterable) {
        if (iterable.iterator().hasNext()) {
            m22158a(C6695y.m22065a("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in " + m22137c(iterable)));
        }
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: b */
    public boolean mo22128b(AbstractC6580m mVar) {
        return ((Boolean) m22158a(C6654a0.m22168a(this, mVar))).booleanValue();
    }

    /* renamed from: c */
    public final long m22141c() {
        return m22167a().compileStatement("PRAGMA page_size").simpleQueryForLong();
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.AbstractC6661c
    /* renamed from: c */
    public Iterable<AbstractC6678i> mo22126c(AbstractC6580m mVar) {
        return (Iterable) m22158a(C6681k.m22080a(this, mVar));
    }

    /* renamed from: c */
    public final List<AbstractC6678i> m22138c(SQLiteDatabase sQLiteDatabase, AbstractC6580m mVar) {
        ArrayList arrayList = new ArrayList();
        Long b = m22145b(sQLiteDatabase, mVar);
        if (b == null) {
            return arrayList;
        }
        m22162a(sQLiteDatabase.query(Constants.VIDEO_TRACKING_EVENTS_KEY, new String[]{"_id", "transport_name", "timestamp_ms", "uptime_ms", "payload_encoding", AdFetch.AD_PAYLOAD_KEY, "code", "inline"}, "context_id = ?", new String[]{b.toString()}, null, null, null, String.valueOf(this.f16533d.mo22121c())), C6684n.m22077a(this, arrayList, mVar));
        return arrayList;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f16530a.close();
    }

    /* renamed from: d */
    public final boolean m22136d() {
        return m22148b() * m22141c() >= this.f16533d.mo22119e();
    }
}
