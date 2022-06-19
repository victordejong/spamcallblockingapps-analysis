package androidx.room;

import android.database.Cursor;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0779c;
import androidx.p042i.p043a.C0768a;
import androidx.room.p049a.AbstractC1030a;
import java.util.List;
/* renamed from: androidx.room.l */
/* loaded from: classes-dex2jar.jar:androidx/room/l.class */
public class C1069l extends AbstractC0779c.AbstractC0780a {

    /* renamed from: b */
    private C1029a f3354b;

    /* renamed from: c */
    private final AbstractC1070a f3355c;

    /* renamed from: d */
    private final String f3356d;

    /* renamed from: e */
    private final String f3357e;

    /* renamed from: androidx.room.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/l$a.class */
    public static abstract class AbstractC1070a {

        /* renamed from: a */
        public final int f3358a;

        public AbstractC1070a(int i) {
            this.f3358a = i;
        }

        /* renamed from: a */
        protected abstract void mo1506a(AbstractC0778b abstractC0778b);

        /* renamed from: b */
        protected abstract void mo1505b(AbstractC0778b abstractC0778b);

        /* renamed from: c */
        protected abstract void mo1504c(AbstractC0778b abstractC0778b);

        /* renamed from: d */
        protected abstract void mo1503d(AbstractC0778b abstractC0778b);

        @Deprecated
        /* renamed from: e */
        protected void m4415e(AbstractC0778b abstractC0778b) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        /* renamed from: f */
        protected C1071b mo1502f(AbstractC0778b abstractC0778b) {
            m4415e(abstractC0778b);
            return new C1071b(true, null);
        }

        /* renamed from: g */
        protected void mo1501g(AbstractC0778b abstractC0778b) {
        }

        /* renamed from: h */
        protected void mo1500h(AbstractC0778b abstractC0778b) {
        }
    }

    /* renamed from: androidx.room.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/l$b.class */
    public static class C1071b {

        /* renamed from: a */
        public final boolean f3359a;

        /* renamed from: b */
        public final String f3360b;

        public C1071b(boolean z, String str) {
            this.f3359a = z;
            this.f3360b = str;
        }
    }

    public C1069l(C1029a c1029a, AbstractC1070a abstractC1070a, String str, String str2) {
        super(abstractC1070a.f3358a);
        this.f3354b = c1029a;
        this.f3355c = abstractC1070a;
        this.f3356d = str;
        this.f3357e = str2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private void m4420e(AbstractC0778b abstractC0778b) {
        C1071b mo1502f;
        if (!m4417h(abstractC0778b)) {
            if (this.f3355c.mo1502f(abstractC0778b).f3359a) {
                this.f3355c.mo1500h(abstractC0778b);
                m4419f(abstractC0778b);
                return;
            }
            throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo1502f.f3360b);
        }
        Cursor mo5371a = abstractC0778b.mo5371a(new C0768a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
        String str = null;
        try {
            if (mo5371a.moveToFirst()) {
                str = mo5371a.getString(0);
            }
            mo5371a.close();
            if (!this.f3356d.equals(str) && !this.f3357e.equals(str)) {
                throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
            }
        } catch (Throwable th) {
            mo5371a.close();
            throw th;
        }
    }

    /* renamed from: f */
    private void m4419f(AbstractC0778b abstractC0778b) {
        m4418g(abstractC0778b);
        abstractC0778b.mo5365c(C1068k.m4426a(this.f3356d));
    }

    /* renamed from: g */
    private void m4418g(AbstractC0778b abstractC0778b) {
        abstractC0778b.mo5365c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: h */
    private static boolean m4417h(AbstractC0778b abstractC0778b) {
        Cursor mo5367b = abstractC0778b.mo5367b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (mo5367b.moveToFirst()) {
                z = false;
                if (mo5367b.getInt(0) != 0) {
                    z = true;
                }
            }
            mo5367b.close();
            return z;
        } catch (Throwable th) {
            mo5367b.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: i */
    private static boolean m4416i(AbstractC0778b abstractC0778b) {
        Cursor mo5367b = abstractC0778b.mo5367b("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (mo5367b.moveToFirst()) {
                z = false;
                if (mo5367b.getInt(0) == 0) {
                    z = true;
                }
            }
            mo5367b.close();
            return z;
        } catch (Throwable th) {
            mo5367b.close();
            throw th;
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0780a
    /* renamed from: a */
    public void mo4425a(AbstractC0778b abstractC0778b) {
        super.mo4425a(abstractC0778b);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0780a
    /* renamed from: a */
    public void mo4424a(AbstractC0778b abstractC0778b, int i, int i2) {
        boolean z;
        List<AbstractC1030a> m4428a;
        C1071b mo1502f;
        C1029a c1029a = this.f3354b;
        if (c1029a == null || (m4428a = c1029a.f3232d.m4428a(i, i2)) == null) {
            z = false;
        } else {
            this.f3355c.mo1501g(abstractC0778b);
            for (AbstractC1030a abstractC1030a : m4428a) {
                abstractC1030a.m4502a(abstractC0778b);
            }
            if (!this.f3355c.mo1502f(abstractC0778b).f3359a) {
                throw new IllegalStateException("Migration didn't properly handle: " + mo1502f.f3360b);
            }
            this.f3355c.mo1500h(abstractC0778b);
            m4419f(abstractC0778b);
            z = true;
        }
        if (!z) {
            C1029a c1029a2 = this.f3354b;
            if (c1029a2 != null && !c1029a2.m4503a(i, i2)) {
                this.f3355c.mo1506a(abstractC0778b);
                this.f3355c.mo1505b(abstractC0778b);
                return;
            }
            throw new IllegalStateException("A migration from " + i + " to " + i2 + " was required but not found. Please provide the necessary Migration path via RoomDatabase.Builder.addMigration(Migration ...) or allow for destructive migrations via one of the RoomDatabase.Builder.fallbackToDestructiveMigration* methods.");
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0780a
    /* renamed from: b */
    public void mo4423b(AbstractC0778b abstractC0778b) {
        boolean m4416i = m4416i(abstractC0778b);
        this.f3355c.mo1505b(abstractC0778b);
        if (!m4416i) {
            C1071b mo1502f = this.f3355c.mo1502f(abstractC0778b);
            if (!mo1502f.f3359a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo1502f.f3360b);
            }
        }
        m4419f(abstractC0778b);
        this.f3355c.mo1503d(abstractC0778b);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0780a
    /* renamed from: b */
    public void mo4422b(AbstractC0778b abstractC0778b, int i, int i2) {
        mo4424a(abstractC0778b, i, i2);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c.AbstractC0780a
    /* renamed from: c */
    public void mo4421c(AbstractC0778b abstractC0778b) {
        super.mo4421c(abstractC0778b);
        m4420e(abstractC0778b);
        this.f3355c.mo1504c(abstractC0778b);
        this.f3354b = null;
    }
}
