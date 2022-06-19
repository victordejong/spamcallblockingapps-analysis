package androidx.p042i.p043a.p044a;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import androidx.p042i.p043a.AbstractC0749b;
import androidx.p042i.p043a.AbstractC0750c;
import java.io.File;
/* renamed from: androidx.i.a.a.b */
/* loaded from: classes-dex2jar.jar:androidx/i/a/a/b.class */
class C0743b implements AbstractC0750c {

    /* renamed from: a */
    private final Context f2639a;

    /* renamed from: b */
    private final String f2640b;

    /* renamed from: c */
    private final AbstractC0750c.AbstractC0751a f2641c;

    /* renamed from: d */
    private final boolean f2642d;

    /* renamed from: e */
    private final Object f2643e = new Object();

    /* renamed from: f */
    private C0744a f2644f;

    /* renamed from: g */
    private boolean f2645g;

    /* renamed from: androidx.i.a.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/a/b$a.class */
    public static class C0744a extends SQLiteOpenHelper {

        /* renamed from: a */
        final C0740a[] f2646a;

        /* renamed from: b */
        final AbstractC0750c.AbstractC0751a f2647b;

        /* renamed from: c */
        private boolean f2648c;

        C0744a(Context context, String str, final C0740a[] c0740aArr, final AbstractC0750c.AbstractC0751a abstractC0751a) {
            super(context, str, null, abstractC0751a.f2653a, new DatabaseErrorHandler() { // from class: androidx.i.a.a.b.a.1
                @Override // android.database.DatabaseErrorHandler
                public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    abstractC0751a.m19511d(C0744a.m19526a(c0740aArr, sQLiteDatabase));
                }
            });
            this.f2647b = abstractC0751a;
            this.f2646a = c0740aArr;
        }

        /* renamed from: a */
        static C0740a m19526a(C0740a[] c0740aArr, SQLiteDatabase sQLiteDatabase) {
            C0740a c0740a = c0740aArr[0];
            if (c0740a == null || !c0740a.m19530a(sQLiteDatabase)) {
                c0740aArr[0] = new C0740a(sQLiteDatabase);
            }
            return c0740aArr[0];
        }

        /* renamed from: a */
        C0740a m19527a(SQLiteDatabase sQLiteDatabase) {
            return m19526a(this.f2646a, sQLiteDatabase);
        }

        /* renamed from: a */
        AbstractC0749b m19528a() {
            C0740a m19527a;
            synchronized (this) {
                this.f2648c = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (this.f2648c) {
                    close();
                    m19527a = m19528a();
                } else {
                    m19527a = m19527a(writableDatabase);
                }
            }
            return m19527a;
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.f2646a[0] = null;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f2647b.mo18269a(m19527a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f2647b.mo18267b(m19527a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f2648c = true;
            this.f2647b.mo18266b(m19527a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f2648c) {
                this.f2647b.mo18265c(m19527a(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f2648c = true;
            this.f2647b.mo18268a(m19527a(sQLiteDatabase), i, i2);
        }
    }

    public C0743b(Context context, String str, AbstractC0750c.AbstractC0751a abstractC0751a, boolean z) {
        this.f2639a = context;
        this.f2640b = str;
        this.f2641c = abstractC0751a;
        this.f2642d = z;
    }

    /* renamed from: c */
    private C0744a m19529c() {
        C0744a c0744a;
        synchronized (this.f2643e) {
            if (this.f2644f == null) {
                C0740a[] c0740aArr = new C0740a[1];
                if (Build.VERSION.SDK_INT < 23 || this.f2640b == null || !this.f2642d) {
                    this.f2644f = new C0744a(this.f2639a, this.f2640b, c0740aArr, this.f2641c);
                } else {
                    this.f2644f = new C0744a(this.f2639a, new File(this.f2639a.getNoBackupFilesDir(), this.f2640b).getAbsolutePath(), c0740aArr, this.f2641c);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f2644f.setWriteAheadLoggingEnabled(this.f2645g);
                }
            }
            c0744a = this.f2644f;
        }
        return c0744a;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: a */
    public String mo18247a() {
        return this.f2640b;
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: a */
    public void mo18244a(boolean z) {
        synchronized (this.f2643e) {
            if (this.f2644f != null) {
                this.f2644f.setWriteAheadLoggingEnabled(z);
            }
            this.f2645g = z;
        }
    }

    @Override // androidx.p042i.p043a.AbstractC0750c
    /* renamed from: b */
    public AbstractC0749b mo18243b() {
        return m19529c().m19528a();
    }

    @Override // androidx.p042i.p043a.AbstractC0750c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m19529c().close();
    }
}
