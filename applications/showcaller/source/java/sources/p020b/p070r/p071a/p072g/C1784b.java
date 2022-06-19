package p020b.p070r.p071a.p072g;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import java.io.File;
import p020b.p070r.p071a.AbstractC1772b;
import p020b.p070r.p071a.AbstractC1773c;
/* renamed from: b.r.a.g.b */
/* loaded from: classes-dex2jar.jar:b/r/a/g/b.class */
class C1784b implements AbstractC1773c {

    /* renamed from: d */
    private final Context f6625d;

    /* renamed from: e */
    private final String f6626e;

    /* renamed from: f */
    private final AbstractC1773c.AbstractC1774a f6627f;

    /* renamed from: g */
    private final boolean f6628g;

    /* renamed from: h */
    private final Object f6629h = new Object();

    /* renamed from: i */
    private C1785a f6630i;

    /* renamed from: j */
    private boolean f6631j;

    /* renamed from: b.r.a.g.b$a */
    /* loaded from: classes-dex2jar.jar:b/r/a/g/b$a.class */
    public static class C1785a extends SQLiteOpenHelper {

        /* renamed from: d */
        final C1781a[] f6632d;

        /* renamed from: e */
        final AbstractC1773c.AbstractC1774a f6633e;

        /* renamed from: f */
        private boolean f6634f;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: b.r.a.g.b$a$a */
        /* loaded from: classes-dex2jar.jar:b/r/a/g/b$a$a.class */
        public class C1786a implements DatabaseErrorHandler {

            /* renamed from: a */
            final /* synthetic */ AbstractC1773c.AbstractC1774a f6635a;

            /* renamed from: b */
            final /* synthetic */ C1781a[] f6636b;

            C1786a(AbstractC1773c.AbstractC1774a abstractC1774a, C1781a[] c1781aArr) {
                this.f6635a = abstractC1774a;
                this.f6636b = c1781aArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                this.f6635a.m28931c(C1785a.m28904e(this.f6636b, sQLiteDatabase));
            }
        }

        C1785a(Context context, String str, C1781a[] c1781aArr, AbstractC1773c.AbstractC1774a abstractC1774a) {
            super(context, str, null, abstractC1774a.f6609a, new C1786a(abstractC1774a, c1781aArr));
            this.f6633e = abstractC1774a;
            this.f6632d = c1781aArr;
        }

        /* renamed from: e */
        static C1781a m28904e(C1781a[] c1781aArr, SQLiteDatabase sQLiteDatabase) {
            C1781a c1781a = c1781aArr[0];
            if (c1781a == null || !c1781a.m28913a(sQLiteDatabase)) {
                c1781aArr[0] = new C1781a(sQLiteDatabase);
            }
            return c1781aArr[0];
        }

        /* renamed from: a */
        C1781a m28905a(SQLiteDatabase sQLiteDatabase) {
            return m28904e(this.f6632d, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.f6632d[0] = null;
            }
        }

        /* renamed from: f */
        AbstractC1772b m28903f() {
            synchronized (this) {
                this.f6634f = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (!this.f6634f) {
                    return m28905a(writableDatabase);
                }
                close();
                return m28903f();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f6633e.mo28932b(m28905a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f6633e.mo28930d(m28905a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f6634f = true;
            this.f6633e.mo28929e(m28905a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f6634f) {
                this.f6633e.mo28928f(m28905a(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f6634f = true;
            this.f6633e.mo28927g(m28905a(sQLiteDatabase), i, i2);
        }
    }

    public C1784b(Context context, String str, AbstractC1773c.AbstractC1774a abstractC1774a, boolean z) {
        this.f6625d = context;
        this.f6626e = str;
        this.f6627f = abstractC1774a;
        this.f6628g = z;
    }

    /* renamed from: a */
    private C1785a m28906a() {
        C1785a c1785a;
        synchronized (this.f6629h) {
            if (this.f6630i == null) {
                C1781a[] c1781aArr = new C1781a[1];
                int i = Build.VERSION.SDK_INT;
                if (i < 23 || this.f6626e == null || !this.f6628g) {
                    this.f6630i = new C1785a(this.f6625d, this.f6626e, c1781aArr, this.f6627f);
                } else {
                    this.f6630i = new C1785a(this.f6625d, new File(this.f6625d.getNoBackupFilesDir(), this.f6626e).getAbsolutePath(), c1781aArr, this.f6627f);
                }
                if (i >= 16) {
                    this.f6630i.setWriteAheadLoggingEnabled(this.f6631j);
                }
            }
            c1785a = this.f6630i;
        }
        return c1785a;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    /* renamed from: K */
    public AbstractC1772b mo28907K() {
        return m28906a().m28903f();
    }

    @Override // p020b.p070r.p071a.AbstractC1773c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m28906a().close();
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    public String getDatabaseName() {
        return this.f6626e;
    }

    @Override // p020b.p070r.p071a.AbstractC1773c
    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f6629h) {
            C1785a c1785a = this.f6630i;
            if (c1785a != null) {
                c1785a.setWriteAheadLoggingEnabled(z);
            }
            this.f6631j = z;
        }
    }
}
