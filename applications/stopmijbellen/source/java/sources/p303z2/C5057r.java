package p303z2;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabaseLockedException;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.util.Base64;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import p004a3.AbstractC0011a;
import p018b3.AbstractC0721a;
import p028c3.C0816a;
import p134j4.C3260w0;
import p218r2.C4184b;
import p218r2.EnumC4186d;
import p250u2.AbstractC4463f;
import p250u2.AbstractC4469i;
import p293y2.C4989f;
/* renamed from: z2.r */
/* loaded from: classes-dex2jar.jar:z2/r.class */
public class C5057r implements AbstractC5039c, AbstractC0011a {

    /* renamed from: e */
    public static final C4184b f15360e = new C4184b("proto");

    /* renamed from: a */
    public final C5065w f15361a;

    /* renamed from: b */
    public final AbstractC0721a f15362b;

    /* renamed from: c */
    public final AbstractC0721a f15363c;

    /* renamed from: d */
    public final AbstractC5040d f15364d;

    /* renamed from: z2.r$b */
    /* loaded from: classes-dex2jar.jar:z2/r$b.class */
    public interface AbstractC5059b<T, U> {
        U apply(T t);
    }

    /* renamed from: z2.r$c */
    /* loaded from: classes-dex2jar.jar:z2/r$c.class */
    public static class C5060c {

        /* renamed from: a */
        public final String f15365a;

        /* renamed from: b */
        public final String f15366b;

        public C5060c(String str, String str2, C5058a c5058a) {
            this.f15365a = str;
            this.f15366b = str2;
        }
    }

    public C5057r(AbstractC0721a abstractC0721a, AbstractC0721a abstractC0721a2, AbstractC5040d abstractC5040d, C5065w c5065w) {
        this.f15361a = c5065w;
        this.f15362b = abstractC0721a;
        this.f15363c = abstractC0721a2;
        this.f15364d = abstractC5040d;
    }

    /* renamed from: p */
    public static String m83p(Iterable<AbstractC5047h> iterable) {
        StringBuilder sb = new StringBuilder("(");
        Iterator<AbstractC5047h> it2 = iterable.iterator();
        while (it2.hasNext()) {
            sb.append(it2.next().mo109b());
            if (it2.hasNext()) {
                sb.append(',');
            }
        }
        sb.append(')');
        return sb.toString();
    }

    /* renamed from: r */
    public static <T> T m82r(Cursor cursor, AbstractC5059b<Cursor, T> abstractC5059b) {
        try {
            return abstractC5059b.apply(cursor);
        } finally {
            cursor.close();
        }
    }

    @Override // p303z2.AbstractC5039c
    /* renamed from: I */
    public AbstractC5047h mo95I(AbstractC4469i abstractC4469i, AbstractC4463f abstractC4463f) {
        EnumC4186d mo890d = abstractC4469i.mo890d();
        String mo899g = abstractC4463f.mo899g();
        String mo892b = abstractC4469i.mo892b();
        C3260w0.m2478g("SQLiteEventStore");
        String.format("Storing event with priority=%s, name=%s for destination %s", mo890d, mo899g, mo892b);
        long longValue = ((Long) m84o(new C5052m(this, abstractC4469i, abstractC4463f))).longValue();
        if (longValue < 1) {
            return null;
        }
        return new C5038b(longValue, abstractC4469i, abstractC4463f);
    }

    @Override // p303z2.AbstractC5039c
    /* renamed from: M */
    public void mo94M(Iterable<AbstractC5047h> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ");
        m8752j.append(m83p(iterable));
        String sb = m8752j.toString();
        SQLiteDatabase m87k = m87k();
        m87k.beginTransaction();
        try {
            m87k.compileStatement(sb).execute();
            m87k.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
            m87k.setTransactionSuccessful();
        } finally {
            m87k.endTransaction();
        }
    }

    @Override // p303z2.AbstractC5039c
    /* renamed from: N */
    public void mo93N(final AbstractC4469i abstractC4469i, final long j) {
        m84o(new AbstractC5059b() { // from class: z2.i
            @Override // p303z2.C5057r.AbstractC5059b
            public final Object apply(Object obj) {
                long j2 = j;
                AbstractC4469i abstractC4469i2 = abstractC4469i;
                SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                ContentValues contentValues = new ContentValues();
                contentValues.put("next_request_ms", Long.valueOf(j2));
                if (sQLiteDatabase.update("transport_contexts", contentValues, "backend_name = ? and priority = ?", new String[]{abstractC4469i2.mo892b(), String.valueOf(C0816a.m7345a(abstractC4469i2.mo890d()))}) < 1) {
                    contentValues.put("backend_name", abstractC4469i2.mo892b());
                    contentValues.put("priority", Integer.valueOf(C0816a.m7345a(abstractC4469i2.mo890d())));
                    sQLiteDatabase.insert("transport_contexts", null, contentValues);
                    return null;
                }
                return null;
            }
        });
    }

    @Override // p303z2.AbstractC5039c
    /* renamed from: O */
    public Iterable<AbstractC5047h> mo92O(AbstractC4469i abstractC4469i) {
        return (Iterable) m84o(new C4989f(this, abstractC4469i));
    }

    /* JADX WARN: Finally extract failed */
    @Override // p303z2.AbstractC5039c
    /* renamed from: c */
    public int mo91c() {
        long mo7430a = this.f15362b.mo7430a();
        long mo114b = this.f15364d.mo114b();
        SQLiteDatabase m87k = m87k();
        m87k.beginTransaction();
        try {
            int delete = m87k.delete("events", "timestamp_ms < ?", new String[]{String.valueOf(mo7430a - mo114b)});
            m87k.setTransactionSuccessful();
            m87k.endTransaction();
            return Integer.valueOf(delete).intValue();
        } catch (Throwable th) {
            m87k.endTransaction();
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f15361a.close();
    }

    @Override // p004a3.AbstractC0011a
    /* renamed from: d */
    public <T> T mo90d(AbstractC0011a.AbstractC0012a<T> abstractC0012a) {
        SQLiteDatabase m87k = m87k();
        long mo7430a = this.f15363c.mo7430a();
        while (true) {
            try {
                m87k.beginTransaction();
                try {
                    T mo149e = abstractC0012a.mo149e();
                    m87k.setTransactionSuccessful();
                    return mo149e;
                } finally {
                    m87k.endTransaction();
                }
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f15363c.mo7430a() >= this.f15364d.mo115a() + mo7430a) {
                    throw new SynchronizationException("Timed out while trying to acquire the lock.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    @Override // p303z2.AbstractC5039c
    /* renamed from: e */
    public void mo89e(Iterable<AbstractC5047h> iterable) {
        if (!iterable.iterator().hasNext()) {
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("DELETE FROM events WHERE _id in ");
        m8752j.append(m83p(iterable));
        m87k().compileStatement(m8752j.toString()).execute();
    }

    /* JADX WARN: Finally extract failed */
    @Override // p303z2.AbstractC5039c
    /* renamed from: h */
    public boolean mo88h(AbstractC4469i abstractC4469i) {
        SQLiteDatabase m87k = m87k();
        m87k.beginTransaction();
        try {
            Long m86l = m86l(m87k, abstractC4469i);
            Boolean bool = m86l == null ? Boolean.FALSE : (Boolean) m82r(m87k().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{m86l.toString()}), C5054o.f15343b);
            m87k.setTransactionSuccessful();
            m87k.endTransaction();
            return bool.booleanValue();
        } catch (Throwable th) {
            m87k.endTransaction();
            throw th;
        }
    }

    /* renamed from: k */
    public SQLiteDatabase m87k() {
        C5065w c5065w = this.f15361a;
        Objects.requireNonNull(c5065w);
        long mo7430a = this.f15363c.mo7430a();
        while (true) {
            try {
                return c5065w.getWritableDatabase();
            } catch (SQLiteDatabaseLockedException e) {
                if (this.f15363c.mo7430a() >= this.f15364d.mo115a() + mo7430a) {
                    throw new SynchronizationException("Timed out while trying to open db.", e);
                }
                SystemClock.sleep(50L);
            }
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: l */
    public final Long m86l(SQLiteDatabase sQLiteDatabase, AbstractC4469i abstractC4469i) {
        StringBuilder sb = new StringBuilder("backend_name = ? and priority = ?");
        ArrayList arrayList = new ArrayList(Arrays.asList(abstractC4469i.mo892b(), String.valueOf(C0816a.m7345a(abstractC4469i.mo890d()))));
        if (abstractC4469i.mo891c() != null) {
            sb.append(" and extras = ?");
            arrayList.add(Base64.encodeToString(abstractC4469i.mo891c(), 0));
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
    @Override // p303z2.AbstractC5039c
    /* renamed from: n */
    public long mo85n(AbstractC4469i abstractC4469i) {
        Cursor rawQuery = m87k().rawQuery("SELECT next_request_ms FROM transport_contexts WHERE backend_name = ? and priority = ?", new String[]{abstractC4469i.mo892b(), String.valueOf(C0816a.m7345a(abstractC4469i.mo890d()))});
        try {
            Long valueOf = rawQuery.moveToNext() ? Long.valueOf(rawQuery.getLong(0)) : 0L;
            rawQuery.close();
            return valueOf.longValue();
        } catch (Throwable th) {
            rawQuery.close();
            throw th;
        }
    }

    /* renamed from: o */
    public <T> T m84o(AbstractC5059b<SQLiteDatabase, T> abstractC5059b) {
        SQLiteDatabase m87k = m87k();
        m87k.beginTransaction();
        try {
            T apply = abstractC5059b.apply(m87k);
            m87k.setTransactionSuccessful();
            return apply;
        } finally {
            m87k.endTransaction();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // p303z2.AbstractC5039c
    /* renamed from: y */
    public Iterable<AbstractC4469i> mo81y() {
        SQLiteDatabase m87k = m87k();
        m87k.beginTransaction();
        try {
            List list = (List) m82r(m87k.rawQuery("SELECT distinct t._id, t.backend_name, t.priority, t.extras FROM transport_contexts AS t, events AS e WHERE e.context_id = t._id", new String[0]), C5055p.f15351b);
            m87k.setTransactionSuccessful();
            m87k.endTransaction();
            return list;
        } catch (Throwable th) {
            m87k.endTransaction();
            throw th;
        }
    }
}
