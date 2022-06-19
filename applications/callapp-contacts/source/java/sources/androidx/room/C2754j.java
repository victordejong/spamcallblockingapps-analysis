package androidx.room;

import android.database.Cursor;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.C2783a;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
/* renamed from: androidx.room.j */
/* loaded from: classes-dex2jar.jar:androidx/room/j.class */
public final class C2754j extends SupportSQLiteOpenHelper.AbstractC2781a {

    /* renamed from: b */
    private DatabaseConfiguration f10444b;

    /* renamed from: c */
    private final AbstractC2755a f10445c;

    /* renamed from: d */
    private final String f10446d;

    /* renamed from: e */
    private final String f10447e;

    /* renamed from: androidx.room.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$a.class */
    public static abstract class AbstractC2755a {

        /* renamed from: a */
        public final int f10448a;

        public AbstractC2755a(int i) {
            this.f10448a = i;
        }

        /* renamed from: a */
        protected abstract void mo39467a();

        /* renamed from: a */
        protected abstract void mo39466a(AbstractC2792b abstractC2792b);

        /* renamed from: b */
        protected abstract void mo39465b(AbstractC2792b abstractC2792b);

        /* renamed from: c */
        protected abstract void mo39464c(AbstractC2792b abstractC2792b);

        /* renamed from: d */
        protected C2756b mo39463d(AbstractC2792b abstractC2792b) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        /* renamed from: e */
        protected void mo39462e(AbstractC2792b abstractC2792b) {
        }
    }

    /* renamed from: androidx.room.j$b */
    /* loaded from: classes-dex2jar.jar:androidx/room/j$b.class */
    public static final class C2756b {

        /* renamed from: a */
        public final boolean f10449a;

        /* renamed from: b */
        public final String f10450b;

        public C2756b(boolean z, String str) {
            this.f10449a = z;
            this.f10450b = str;
        }
    }

    public C2754j(DatabaseConfiguration databaseConfiguration, AbstractC2755a abstractC2755a, String str) {
        this(databaseConfiguration, abstractC2755a, "", str);
    }

    public C2754j(DatabaseConfiguration databaseConfiguration, AbstractC2755a abstractC2755a, String str, String str2) {
        super(abstractC2755a.f10448a);
        this.f10444b = databaseConfiguration;
        this.f10445c = abstractC2755a;
        this.f10446d = str;
        this.f10447e = str2;
    }

    /* renamed from: c */
    private void m39950c(AbstractC2792b abstractC2792b) {
        m39949d(abstractC2792b);
        abstractC2792b.mo39894c(C2753i.m39951a(this.f10446d));
    }

    /* renamed from: d */
    private static void m39949d(AbstractC2792b abstractC2792b) {
        abstractC2792b.mo39894c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    private static boolean m39948e(AbstractC2792b abstractC2792b) {
        Cursor mo39896b = abstractC2792b.mo39896b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (mo39896b.moveToFirst()) {
                z = false;
                if (mo39896b.getInt(0) != 0) {
                    z = true;
                }
            }
            mo39896b.close();
            return z;
        } catch (Throwable th) {
            mo39896b.close();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: f */
    private static boolean m39947f(AbstractC2792b abstractC2792b) {
        Cursor mo39896b = abstractC2792b.mo39896b("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (mo39896b.moveToFirst()) {
                z = false;
                if (mo39896b.getInt(0) == 0) {
                    z = true;
                }
            }
            mo39896b.close();
            return z;
        } catch (Throwable th) {
            mo39896b.close();
            throw th;
        }
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2781a
    /* renamed from: a */
    public final void mo39914a(AbstractC2792b abstractC2792b) {
        boolean m39947f = m39947f(abstractC2792b);
        this.f10445c.mo39465b(abstractC2792b);
        if (!m39947f) {
            C2756b mo39463d = this.f10445c.mo39463d(abstractC2792b);
            if (!mo39463d.f10449a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo39463d.f10450b);
            }
        }
        m39950c(abstractC2792b);
        this.f10445c.mo39467a();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010b A[RETURN] */
    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2781a
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo39913a(androidx.sqlite.p082db.AbstractC2792b r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.C2754j.mo39913a(androidx.sqlite.db.b, int, int):void");
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2781a
    /* renamed from: b */
    public final void mo39911b(AbstractC2792b abstractC2792b) {
        super.mo39911b(abstractC2792b);
        if (m39948e(abstractC2792b)) {
            Cursor mo39900a = abstractC2792b.mo39900a(new C2783a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                String string = mo39900a.moveToFirst() ? mo39900a.getString(0) : null;
                mo39900a.close();
                if (!this.f10446d.equals(string) && !this.f10447e.equals(string)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                }
            } catch (Throwable th) {
                mo39900a.close();
                throw th;
            }
        } else {
            C2756b mo39463d = this.f10445c.mo39463d(abstractC2792b);
            if (!mo39463d.f10449a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + mo39463d.f10450b);
            }
            m39950c(abstractC2792b);
        }
        this.f10445c.mo39464c(abstractC2792b);
        this.f10444b = null;
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2781a
    /* renamed from: b */
    public final void mo39910b(AbstractC2792b abstractC2792b, int i, int i2) {
        mo39913a(abstractC2792b, i, i2);
    }
}
