package androidx.room;

import android.database.Cursor;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
/* loaded from: classes-dex2jar.jar:androidx/room/j.class */
public final class j extends SupportSQLiteOpenHelper.a {

    /* renamed from: b  reason: collision with root package name */
    private DatabaseConfiguration f5580b;

    /* renamed from: c  reason: collision with root package name */
    private final a f5581c;

    /* renamed from: d  reason: collision with root package name */
    private final String f5582d;
    private final String e;

    /* loaded from: classes-dex2jar.jar:androidx/room/j$a.class */
    public static abstract class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f5583a;

        public a(int i) {
            this.f5583a = i;
        }

        protected abstract void a();

        protected abstract void a(androidx.sqlite.db.b bVar);

        protected abstract void b(androidx.sqlite.db.b bVar);

        protected abstract void c(androidx.sqlite.db.b bVar);

        protected b d(androidx.sqlite.db.b bVar) {
            throw new UnsupportedOperationException("validateMigration is deprecated");
        }

        protected void e(androidx.sqlite.db.b bVar) {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/room/j$b.class */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f5584a;

        /* renamed from: b  reason: collision with root package name */
        public final String f5585b;

        public b(boolean z, String str) {
            this.f5584a = z;
            this.f5585b = str;
        }
    }

    public j(DatabaseConfiguration databaseConfiguration, a aVar, String str) {
        this(databaseConfiguration, aVar, "", str);
    }

    public j(DatabaseConfiguration databaseConfiguration, a aVar, String str, String str2) {
        super(aVar.f5583a);
        this.f5580b = databaseConfiguration;
        this.f5581c = aVar;
        this.f5582d = str;
        this.e = str2;
    }

    private void c(androidx.sqlite.db.b bVar) {
        d(bVar);
        bVar.c(i.a(this.f5582d));
    }

    private static void d(androidx.sqlite.db.b bVar) {
        bVar.c("CREATE TABLE IF NOT EXISTS room_master_table (id INTEGER PRIMARY KEY,identity_hash TEXT)");
    }

    private static boolean e(androidx.sqlite.db.b bVar) {
        Cursor b2 = bVar.b("SELECT 1 FROM sqlite_master WHERE type = 'table' AND name='room_master_table'");
        try {
            boolean z = false;
            if (b2.moveToFirst()) {
                z = false;
                if (b2.getInt(0) != 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            b2.close();
        }
    }

    private static boolean f(androidx.sqlite.db.b bVar) {
        Cursor b2 = bVar.b("SELECT count(*) FROM sqlite_master WHERE name != 'android_metadata'");
        try {
            boolean z = false;
            if (b2.moveToFirst()) {
                z = false;
                if (b2.getInt(0) == 0) {
                    z = true;
                }
            }
            return z;
        } finally {
            b2.close();
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.a
    public final void a(androidx.sqlite.db.b bVar) {
        boolean f = f(bVar);
        this.f5581c.b(bVar);
        if (!f) {
            b d2 = this.f5581c.d(bVar);
            if (!d2.f5584a) {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + d2.f5585b);
            }
        }
        c(bVar);
        this.f5581c.a();
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x010b A[RETURN] */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(androidx.sqlite.db.b r7, int r8, int r9) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.room.j.a(androidx.sqlite.db.b, int, int):void");
    }

    /* JADX WARN: Finally extract failed */
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.a
    public final void b(androidx.sqlite.db.b bVar) {
        super.b(bVar);
        if (e(bVar)) {
            Cursor a2 = bVar.a(new androidx.sqlite.db.a("SELECT identity_hash FROM room_master_table WHERE id = 42 LIMIT 1"));
            try {
                String string = a2.moveToFirst() ? a2.getString(0) : null;
                a2.close();
                if (!this.f5582d.equals(string) && !this.e.equals(string)) {
                    throw new IllegalStateException("Room cannot verify the data integrity. Looks like you've changed schema but forgot to update the version number. You can simply fix this by increasing the version number.");
                }
            } catch (Throwable th) {
                a2.close();
                throw th;
            }
        } else {
            b d2 = this.f5581c.d(bVar);
            if (d2.f5584a) {
                c(bVar);
            } else {
                throw new IllegalStateException("Pre-packaged database has an invalid schema: " + d2.f5585b);
            }
        }
        this.f5581c.c(bVar);
        this.f5580b = null;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.a
    public final void b(androidx.sqlite.db.b bVar, int i, int i2) {
        a(bVar, i, i2);
    }
}
