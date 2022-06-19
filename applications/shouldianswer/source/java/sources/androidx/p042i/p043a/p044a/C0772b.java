package androidx.p042i.p043a.p044a;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import androidx.p042i.p043a.AbstractC0778b;
import androidx.p042i.p043a.AbstractC0779c;
/* renamed from: androidx.i.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/b.class */
class C0772b implements AbstractC0779c {

    /* renamed from: a */
    private final C0773a f2538a;

    /* renamed from: androidx.i.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/a/b$a.class */
    public static class C0773a extends SQLiteOpenHelper {

        /* renamed from: a */
        final C0769a[] f2539a;

        /* renamed from: b */
        final AbstractC0779c.AbstractC0780a f2540b;

        /* renamed from: c */
        private boolean f2541c;

        C0773a(Context context, String str, final C0769a[] c0769aArr, final AbstractC0779c.AbstractC0780a abstractC0780a) {
            super(context, str, null, abstractC0780a.f2546a, new DatabaseErrorHandler() { // from class: androidx.i.a.a.b.a.1
                @Override // android.database.DatabaseErrorHandler
                public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    abstractC0780a.m5359d(C0773a.m5373a(c0769aArr, sQLiteDatabase));
                }
            });
            this.f2540b = abstractC0780a;
            this.f2539a = c0769aArr;
        }

        /* renamed from: a */
        static C0769a m5373a(C0769a[] c0769aArr, SQLiteDatabase sQLiteDatabase) {
            C0769a c0769a = c0769aArr[0];
            if (c0769a == null || !c0769a.m5377a(sQLiteDatabase)) {
                c0769aArr[0] = new C0769a(sQLiteDatabase);
            }
            return c0769aArr[0];
        }

        /* renamed from: a */
        C0769a m5374a(SQLiteDatabase sQLiteDatabase) {
            return m5373a(this.f2539a, sQLiteDatabase);
        }

        /* renamed from: a */
        AbstractC0778b m5375a() {
            synchronized (this) {
                this.f2541c = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (!this.f2541c) {
                    return m5374a(writableDatabase);
                }
                close();
                return m5375a();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.f2539a[0] = null;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f2540b.mo4425a(m5374a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f2540b.mo4423b(m5374a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f2541c = true;
            this.f2540b.mo4422b(m5374a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f2541c) {
                this.f2540b.mo4421c(m5374a(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f2541c = true;
            this.f2540b.mo4424a(m5374a(sQLiteDatabase), i, i2);
        }
    }

    public C0772b(Context context, String str, AbstractC0779c.AbstractC0780a abstractC0780a) {
        this.f2538a = m5376a(context, str, abstractC0780a);
    }

    /* renamed from: a */
    private C0773a m5376a(Context context, String str, AbstractC0779c.AbstractC0780a abstractC0780a) {
        return new C0773a(context, str, new C0769a[1], abstractC0780a);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: a */
    public String mo4403a() {
        return this.f2538a.getDatabaseName();
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: a */
    public void mo4400a(boolean z) {
        this.f2538a.setWriteAheadLoggingEnabled(z);
    }

    @Override // androidx.p042i.p043a.AbstractC0779c
    /* renamed from: b */
    public AbstractC0778b mo4399b() {
        return this.f2538a.m5375a();
    }
}
