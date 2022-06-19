package androidx.room;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import androidx.p042i.p043a.C0739a;
import androidx.room.p049a.AbstractC1011a;
import java.util.List;
/* renamed from: androidx.room.k */
/* loaded from: classes-dex2jar.jar:androidx/room/k.class */
public class C1050k extends AbstractC0750c.AbstractC0751a {

    /* renamed from: b */
    private C1010a f3564b;

    /* renamed from: c */
    private final AbstractC1051a f3565c;

    /* renamed from: d */
    private final String f3566d;

    /* renamed from: e */
    private final String f3567e;

    /* renamed from: androidx.room.k$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/k$a.class */
    public static abstract class AbstractC1051a {

        /* renamed from: a */
        public final int f3568a;

        public AbstractC1051a(int i) {
            this.f3568a = i;
        }

        /* renamed from: a */
        protected abstract void mo17878a(AbstractC0749b abstractC0749b);

        /* renamed from: b */
        protected abstract void mo17877b(AbstractC0749b abstractC0749b);

        /* renamed from: c */
        protected abstract void mo17876c(AbstractC0749b abstractC0749b);

        /* renamed from: d */
        protected abstract void mo17875d(AbstractC0749b abstractC0749b);

        @Deprecated
        /* renamed from: e */
        protected void m18259e(AbstractC0749b abstractC0749b) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        /* renamed from: f */
        protected C1052b mo17874f(AbstractC0749b abstractC0749b) {
            m18259e(abstractC0749b);
            return new C1052b(true, null);
        }

        /* renamed from: g */
        protected void mo17873g(AbstractC0749b abstractC0749b) {
        }

        /* renamed from: h */
        protected void mo17872h(AbstractC0749b abstractC0749b) {
        }
    }

    /* renamed from: androidx.room.k$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/k$b.class */
    public static class C1052b {

        /* renamed from: a */
        public final boolean f3569a;

        /* renamed from: b */
        public final String f3570b;

        public C1052b(boolean z, String str) {
            this.f3569a = z;
            this.f3570b = str;
        }
    }

    public C1050k(C1010a c1010a, AbstractC1051a abstractC1051a, String str, String str2) {
        super(abstractC1051a.f3568a);
        this.f3564b = c1010a;
        this.f3565c = abstractC1051a;
        this.f3566d = str;
        this.f3567e = str2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private void m18264e(AbstractC0749b abstractC0749b) {
        C1052b mo17874f;
        if (!m18261h(abstractC0749b)) {
            if (!this.f3565c.mo17874f(abstractC0749b).f3569a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo17874f.f3570b);
            }
            this.f3565c.mo17872h(abstractC0749b);
            m18263f(abstractC0749b);
            return;
        }
        Cursor mo19524a = abstractC0749b.mo19524a(new C0739a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        String str = null;
        try {
            if (mo19524a.moveToFirst()) {
                str = mo19524a.getString(0);
            }
            mo19524a.close();
            if (!this.f3566d.equals(str) && !this.f3567e.equals(str)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            mo19524a.close();
            throw th;
        }
    }

    /* renamed from: f */
    private void m18263f(AbstractC0749b abstractC0749b) {
        m18262g(abstractC0749b);
        abstractC0749b.mo19517c(C1049j.m18270a(this.f3566d));
    }

    /* renamed from: g */
    private void m18262g(AbstractC0749b abstractC0749b) {
        abstractC0749b.mo19517c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    private static boolean m18261h(AbstractC0749b abstractC0749b) {
        Cursor mo19519b = abstractC0749b.mo19519b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        boolean z = false;
        try {
            if (mo19519b.moveToFirst()) {
                z = false;
                if (mo19519b.getInt(0) != 0) {
                    z = true;
                }
            }
            mo19519b.close();
            return z;
        } catch (Throwable th) {
            mo19519b.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    private static boolean m18260i(AbstractC0749b abstractC0749b) {
        Cursor mo19519b = abstractC0749b.mo19519b("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        boolean z = false;
        try {
            if (mo19519b.moveToFirst()) {
                z = false;
                if (mo19519b.getInt(0) == 0) {
                    z = true;
                }
            }
            mo19519b.close();
            return z;
        } catch (Throwable th) {
            mo19519b.close();
            throw th;
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0751a
    /* renamed from: a */
    public void mo18269a(AbstractC0749b abstractC0749b) {
        super.mo18269a(abstractC0749b);
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0751a
    /* renamed from: a */
    public void mo18268a(AbstractC0749b abstractC0749b, int i, int i2) {
        C1052b mo17874f;
        boolean z = false;
        if (this.f3564b != null) {
            List<AbstractC1011a> m18274a = this.f3564b.f3439d.m18274a(i, i2);
            z = false;
            if (m18274a != null) {
                this.f3565c.mo17873g(abstractC0749b);
                for (AbstractC1011a abstractC1011a : m18274a) {
                    abstractC1011a.mo17671a(abstractC0749b);
                }
                if (!this.f3565c.mo17874f(abstractC0749b).f3569a) {
                    throw new IllegalStateException("Migration didn't properly handle: " + mo17874f.f3570b);
                }
                this.f3565c.mo17872h(abstractC0749b);
                m18263f(abstractC0749b);
                z = true;
            }
        }
        if (!z) {
            if (this.f3564b == null || this.f3564b.m18354a(i, i2)) {
                throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
            }
            this.f3565c.mo17878a(abstractC0749b);
            this.f3565c.mo17877b(abstractC0749b);
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0751a
    /* renamed from: b */
    public void mo18267b(AbstractC0749b abstractC0749b) {
        boolean m18260i = m18260i(abstractC0749b);
        this.f3565c.mo17877b(abstractC0749b);
        if (!m18260i) {
            C1052b mo17874f = this.f3565c.mo17874f(abstractC0749b);
            if (!mo17874f.f3569a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo17874f.f3570b);
            }
        }
        m18263f(abstractC0749b);
        this.f3565c.mo17875d(abstractC0749b);
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0751a
    /* renamed from: b */
    public void mo18266b(AbstractC0749b abstractC0749b, int i, int i2) {
        mo18268a(abstractC0749b, i, i2);
    }

    @Override // androidx.p042i.p043a.AbstractC0750c.AbstractC0751a
    /* renamed from: c */
    public void mo18265c(AbstractC0749b abstractC0749b) {
        super.mo18265c(abstractC0749b);
        m18264e(abstractC0749b);
        this.f3565c.mo17876c(abstractC0749b);
        this.f3564b = null;
    }
}
