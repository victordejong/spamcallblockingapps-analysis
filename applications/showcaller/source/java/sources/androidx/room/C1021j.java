package androidx.room;

import android.database.Cursor;
import androidx.room.p011p.AbstractC1030a;
import java.util.List;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
import p020b.p070r.p071a.C1771a;
/* renamed from: androidx.room.j */
/* loaded from: classes-dex2jar.jar:androidx/room/j.class */
public class C1021j extends AbstractC1773c.AbstractC1774a {

    /* renamed from: b */
    private C0997a f4501b;

    /* renamed from: c */
    private final AbstractC1022a f4502c;

    /* renamed from: d */
    private final String f4503d;

    /* renamed from: e */
    private final String f4504e;

    /* renamed from: androidx.room.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$a.class */
    public static abstract class AbstractC1022a {

        /* renamed from: a */
        public final int f4505a;

        public AbstractC1022a(int i) {
            this.f4505a = i;
        }

        /* renamed from: a */
        protected abstract void mo30508a(AbstractC1772b abstractC1772b);

        /* renamed from: b */
        protected abstract void mo30507b(AbstractC1772b abstractC1772b);

        /* renamed from: c */
        protected abstract void mo30506c(AbstractC1772b abstractC1772b);

        /* renamed from: d */
        protected abstract void mo30505d(AbstractC1772b abstractC1772b);

        /* renamed from: e */
        protected abstract void mo30504e(AbstractC1772b abstractC1772b);

        /* renamed from: f */
        protected abstract void mo30503f(AbstractC1772b abstractC1772b);

        /* renamed from: g */
        protected abstract C1023b mo30502g(AbstractC1772b abstractC1772b);
    }

    /* renamed from: androidx.room.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$b.class */
    public static class C1023b {

        /* renamed from: a */
        public final boolean f4506a;

        /* renamed from: b */
        public final String f4507b;

        public C1023b(boolean z, String str) {
            this.f4506a = z;
            this.f4507b = str;
        }
    }

    public C1021j(C0997a c0997a, AbstractC1022a abstractC1022a, String str, String str2) {
        super(abstractC1022a.f4505a);
        this.f4501b = c0997a;
        this.f4502c = abstractC1022a;
        this.f4503d = str;
        this.f4504e = str2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    private void m31231h(AbstractC1772b abstractC1772b) {
        C1023b mo30502g;
        if (!m31228k(abstractC1772b)) {
            if (this.f4502c.mo30502g(abstractC1772b).f4506a) {
                this.f4502c.mo30504e(abstractC1772b);
                m31227l(abstractC1772b);
                return;
            }
            throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo30502g.f4507b);
        }
        Cursor mo28915S = abstractC1772b.mo28915S(new C1771a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        String str = null;
        try {
            if (mo28915S.moveToFirst()) {
                str = mo28915S.getString(0);
            }
            mo28915S.close();
            if (!this.f4503d.equals(str) && !this.f4504e.equals(str)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            mo28915S.close();
            throw th;
        }
    }

    /* renamed from: i */
    private void m31230i(AbstractC1772b abstractC1772b) {
        abstractC1772b.mo28910n("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: j */
    private static boolean m31229j(AbstractC1772b abstractC1772b) {
        Cursor mo28917M = abstractC1772b.mo28917M("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (mo28917M.moveToFirst()) {
                z = false;
                if (mo28917M.getInt(0) == 0) {
                    z = true;
                }
            }
            mo28917M.close();
            return z;
        } catch (Throwable th) {
            mo28917M.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: k */
    private static boolean m31228k(AbstractC1772b abstractC1772b) {
        Cursor mo28917M = abstractC1772b.mo28917M("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (mo28917M.moveToFirst()) {
                z = false;
                if (mo28917M.getInt(0) != 0) {
                    z = true;
                }
            }
            mo28917M.close();
            return z;
        } catch (Throwable th) {
            mo28917M.close();
            throw th;
        }
    }

    /* renamed from: l */
    private void m31227l(AbstractC1772b abstractC1772b) {
        m31230i(abstractC1772b);
        abstractC1772b.mo28910n(C1020i.m31232a(this.f4503d));
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1774a
    /* renamed from: b */
    public void mo28932b(AbstractC1772b abstractC1772b) {
        super.mo28932b(abstractC1772b);
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1774a
    /* renamed from: d */
    public void mo28930d(AbstractC1772b abstractC1772b) {
        boolean m31229j = m31229j(abstractC1772b);
        this.f4502c.mo30508a(abstractC1772b);
        if (!m31229j) {
            C1023b mo30502g = this.f4502c.mo30502g(abstractC1772b);
            if (!mo30502g.f4506a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo30502g.f4507b);
            }
        }
        m31227l(abstractC1772b);
        this.f4502c.mo30506c(abstractC1772b);
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1774a
    /* renamed from: e */
    public void mo28929e(AbstractC1772b abstractC1772b, int i, int i2) {
        mo28927g(abstractC1772b, i, i2);
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1774a
    /* renamed from: f */
    public void mo28928f(AbstractC1772b abstractC1772b) {
        super.mo28928f(abstractC1772b);
        m31231h(abstractC1772b);
        this.f4502c.mo30505d(abstractC1772b);
        this.f4501b = null;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c.AbstractC1774a
    /* renamed from: g */
    public void mo28927g(AbstractC1772b abstractC1772b, int i, int i2) {
        boolean z;
        List<AbstractC1030a> m31267c;
        C1023b mo30502g;
        C0997a c0997a = this.f4501b;
        if (c0997a == null || (m31267c = c0997a.f4440d.m31267c(i, i2)) == null) {
            z = false;
        } else {
            this.f4502c.mo30503f(abstractC1772b);
            for (AbstractC1030a abstractC1030a : m31267c) {
                abstractC1030a.mo30405a(abstractC1772b);
            }
            if (!this.f4502c.mo30502g(abstractC1772b).f4506a) {
                throw new IllegalStateException("Migration didn't properly handle: " + mo30502g.f4507b);
            }
            this.f4502c.mo30504e(abstractC1772b);
            m31227l(abstractC1772b);
            z = true;
        }
        if (!z) {
            C0997a c0997a2 = this.f4501b;
            if (c0997a2 != null && !c0997a2.m31265a(i, i2)) {
                this.f4502c.mo30507b(abstractC1772b);
                this.f4502c.mo30508a(abstractC1772b);
                return;
            }
            throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
    }
}
