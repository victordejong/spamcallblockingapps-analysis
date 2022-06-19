package p1727n3.p1781e0.p1782a.p1783g;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p1727n3.p1781e0.p1782a.AbstractC26147b;
import p1727n3.p1781e0.p1782a.AbstractC26148c;
/* renamed from: n3.e0.a.g.b */
/* loaded from: classes-dex2jar.jar:n3/e0/a/g/b.class */
public class C26158b implements AbstractC26148c {

    /* renamed from: a */
    public final Context f72920a;

    /* renamed from: b */
    public final String f72921b;

    /* renamed from: c */
    public final AbstractC26148c.AbstractC26149a f72922c;

    /* renamed from: d */
    public final boolean f72923d;

    /* renamed from: e */
    public final Object f72924e = new Object();

    /* renamed from: f */
    public C26159a f72925f;

    /* renamed from: g */
    public boolean f72926g;

    /* renamed from: n3.e0.a.g.b$a */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/g/b$a.class */
    public static class C26159a extends SQLiteOpenHelper {

        /* renamed from: a */
        public final C26155a[] f72927a;

        /* renamed from: b */
        public final AbstractC26148c.AbstractC26149a f72928b;

        /* renamed from: c */
        public boolean f72929c;

        /* renamed from: n3.e0.a.g.b$a$a */
        /* loaded from: classes-dex2jar.jar:n3/e0/a/g/b$a$a.class */
        public class C26160a implements DatabaseErrorHandler {

            /* renamed from: a */
            public final /* synthetic */ AbstractC26148c.AbstractC26149a f72930a;

            /* renamed from: b */
            public final /* synthetic */ C26155a[] f72931b;

            public C26160a(AbstractC26148c.AbstractC26149a abstractC26149a, C26155a[] c26155aArr) {
                this.f72930a = abstractC26149a;
                this.f72931b = c26155aArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                AbstractC26148c.AbstractC26149a abstractC26149a = this.f72930a;
                C26155a m2654d = C26159a.m2654d(this.f72931b, sQLiteDatabase);
                Objects.requireNonNull(abstractC26149a);
                m2654d.m2661d();
                if (!m2654d.isOpen()) {
                    abstractC26149a.m2681a(m2654d.m2661d());
                    return;
                }
                List<Pair<String, String>> list = null;
                List<Pair<String, String>> list2 = null;
                try {
                    try {
                        list = m2654d.m2664b();
                    } catch (SQLiteException e) {
                    }
                    list2 = list;
                    try {
                        m2654d.close();
                    } catch (IOException e2) {
                    }
                    if (list == null) {
                        abstractC26149a.m2681a(m2654d.m2661d());
                        return;
                    }
                    for (Pair<String, String> pair : list) {
                        abstractC26149a.m2681a((String) pair.second);
                    }
                } catch (Throwable th) {
                    if (list2 != null) {
                        for (Pair<String, String> pair2 : list2) {
                            abstractC26149a.m2681a((String) pair2.second);
                        }
                    } else {
                        abstractC26149a.m2681a(m2654d.m2661d());
                    }
                    throw th;
                }
            }
        }

        public C26159a(Context context, String str, C26155a[] c26155aArr, AbstractC26148c.AbstractC26149a abstractC26149a) {
            super(context, str, null, abstractC26149a.f72911a, new C26160a(abstractC26149a, c26155aArr));
            this.f72928b = abstractC26149a;
            this.f72927a = c26155aArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
            if ((r0.f72917a == r7) == false) goto L10;
         */
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static p1727n3.p1781e0.p1782a.p1783g.C26155a m2654d(p1727n3.p1781e0.p1782a.p1783g.C26155a[] r6, android.database.sqlite.SQLiteDatabase r7) {
            /*
                r0 = r6
                r1 = 0
                r0 = r0[r1]
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L1b
                r0 = r8
                android.database.sqlite.SQLiteDatabase r0 = r0.f72917a
                r1 = r7
                if (r0 != r1) goto L15
                r0 = 1
                r9 = r0
                goto L17
            L15:
                r0 = 0
                r9 = r0
            L17:
                r0 = r9
                if (r0 != 0) goto L26
            L1b:
                r0 = r6
                r1 = 0
                n3.e0.a.g.a r2 = new n3.e0.a.g.a
                r3 = r2
                r4 = r7
                r3.<init>(r4)
                r0[r1] = r2
            L26:
                r0 = r6
                r1 = 0
                r0 = r0[r1]
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p1727n3.p1781e0.p1782a.p1783g.C26158b.C26159a.m2654d(n3.e0.a.g.a[], android.database.sqlite.SQLiteDatabase):n3.e0.a.g.a");
        }

        /* renamed from: b */
        public C26155a m2655b(SQLiteDatabase sQLiteDatabase) {
            return m2654d(this.f72927a, sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.f72927a[0] = null;
            }
        }

        /* renamed from: j */
        public AbstractC26147b m2653j() {
            synchronized (this) {
                this.f72929c = false;
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (!this.f72929c) {
                    return m2655b(writableDatabase);
                }
                close();
                return m2653j();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            this.f72928b.mo2680b(m2654d(this.f72927a, sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f72928b.mo2679c(m2654d(this.f72927a, sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f72929c = true;
            this.f72928b.mo2678d(m2654d(this.f72927a, sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f72929c) {
                this.f72928b.mo2677e(m2654d(this.f72927a, sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f72929c = true;
            this.f72928b.mo2676f(m2654d(this.f72927a, sQLiteDatabase), i, i2);
        }
    }

    public C26158b(Context context, String str, AbstractC26148c.AbstractC26149a abstractC26149a, boolean z) {
        this.f72920a = context;
        this.f72921b = str;
        this.f72922c = abstractC26149a;
        this.f72923d = z;
    }

    /* renamed from: b */
    public final C26159a m2656b() {
        C26159a c26159a;
        synchronized (this.f72924e) {
            if (this.f72925f == null) {
                C26155a[] c26155aArr = new C26155a[1];
                if (this.f72921b == null || !this.f72923d) {
                    this.f72925f = new C26159a(this.f72920a, this.f72921b, c26155aArr, this.f72922c);
                } else {
                    this.f72925f = new C26159a(this.f72920a, new File(this.f72920a.getNoBackupFilesDir(), this.f72921b).getAbsolutePath(), c26155aArr, this.f72922c);
                }
                this.f72925f.setWriteAheadLoggingEnabled(this.f72926g);
            }
            c26159a = this.f72925f;
        }
        return c26159a;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m2656b().close();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public String getDatabaseName() {
        return this.f72921b;
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public AbstractC26147b getWritableDatabase() {
        return m2656b().m2653j();
    }

    @Override // p1727n3.p1781e0.p1782a.AbstractC26148c
    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f72924e) {
            C26159a c26159a = this.f72925f;
            if (c26159a != null) {
                c26159a.setWriteAheadLoggingEnabled(z);
            }
            this.f72926g = z;
        }
    }
}
