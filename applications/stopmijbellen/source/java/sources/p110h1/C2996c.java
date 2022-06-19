package p110h1;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Objects;
import p067d1.C2155g;
import p099g1.AbstractC2795a;
import p099g1.AbstractC2796b;
/* renamed from: h1.c */
/* loaded from: classes-dex2jar.jar:h1/c.class */
public class C2996c implements AbstractC2796b {

    /* renamed from: a */
    public final Context f10088a;

    /* renamed from: b */
    public final String f10089b;

    /* renamed from: c */
    public final AbstractC2796b.AbstractC2797a f10090c;

    /* renamed from: d */
    public final boolean f10091d;

    /* renamed from: e */
    public final Object f10092e = new Object();

    /* renamed from: f */
    public C2997a f10093f;

    /* renamed from: g */
    public boolean f10094g;

    /* renamed from: h1.c$a */
    /* loaded from: classes-dex2jar.jar:h1/c$a.class */
    public static class C2997a extends SQLiteOpenHelper {

        /* renamed from: a */
        public final C2993a[] f10095a;

        /* renamed from: b */
        public final AbstractC2796b.AbstractC2797a f10096b;

        /* renamed from: c */
        public boolean f10097c;

        /* renamed from: h1.c$a$a */
        /* loaded from: classes-dex2jar.jar:h1/c$a$a.class */
        public class C2998a implements DatabaseErrorHandler {

            /* renamed from: a */
            public final /* synthetic */ AbstractC2796b.AbstractC2797a f10098a;

            /* renamed from: b */
            public final /* synthetic */ C2993a[] f10099b;

            public C2998a(AbstractC2796b.AbstractC2797a abstractC2797a, C2993a[] c2993aArr) {
                this.f10098a = abstractC2797a;
                this.f10099b = c2993aArr;
            }

            @Override // android.database.DatabaseErrorHandler
            public void onCorruption(SQLiteDatabase sQLiteDatabase) {
                AbstractC2796b.AbstractC2797a abstractC2797a = this.f10098a;
                C2993a m2770k = C2997a.m2770k(this.f10099b, sQLiteDatabase);
                Objects.requireNonNull(abstractC2797a);
                m2770k.m2776d();
                if (!m2770k.f10085a.isOpen()) {
                    abstractC2797a.m3001a(m2770k.m2776d());
                    return;
                }
                List<Pair<String, String>> list = null;
                List<Pair<String, String>> list2 = null;
                try {
                    try {
                        list = m2770k.f10085a.getAttachedDbs();
                    } catch (Throwable th) {
                        if (list2 != null) {
                            for (Pair<String, String> pair : list2) {
                                abstractC2797a.m3001a((String) pair.second);
                            }
                        } else {
                            abstractC2797a.m3001a(m2770k.m2776d());
                        }
                        throw th;
                    }
                } catch (SQLiteException e) {
                }
                list2 = list;
                try {
                    m2770k.f10085a.close();
                } catch (IOException e2) {
                }
                if (list == null) {
                    abstractC2797a.m3001a(m2770k.m2776d());
                    return;
                }
                for (Pair<String, String> pair2 : list) {
                    abstractC2797a.m3001a((String) pair2.second);
                }
            }
        }

        public C2997a(Context context, String str, C2993a[] c2993aArr, AbstractC2796b.AbstractC2797a abstractC2797a) {
            super(context, str, null, abstractC2797a.f9522a, new C2998a(abstractC2797a, c2993aArr));
            this.f10096b = abstractC2797a;
            this.f10095a = c2993aArr;
        }

        /* JADX WARN: Code restructure failed: missing block: B:9:0x0018, code lost:
            if ((r0.f10085a == r7) == false) goto L10;
         */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public static p110h1.C2993a m2770k(p110h1.C2993a[] r6, android.database.sqlite.SQLiteDatabase r7) {
            /*
                r0 = r6
                r1 = 0
                r0 = r0[r1]
                r8 = r0
                r0 = r8
                if (r0 == 0) goto L1b
                r0 = r8
                android.database.sqlite.SQLiteDatabase r0 = r0.f10085a
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
                h1.a r2 = new h1.a
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
            throw new UnsupportedOperationException("Method not decompiled: p110h1.C2996c.C2997a.m2770k(h1.a[], android.database.sqlite.SQLiteDatabase):h1.a");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public void close() {
            synchronized (this) {
                super.close();
                this.f10095a[0] = null;
            }
        }

        /* renamed from: d */
        public C2993a m2771d(SQLiteDatabase sQLiteDatabase) {
            return m2770k(this.f10095a, sQLiteDatabase);
        }

        /* renamed from: l */
        public AbstractC2795a m2769l() {
            synchronized (this) {
                this.f10097c = false;
                SQLiteDatabase writableDatabase = getWritableDatabase();
                if (!this.f10097c) {
                    return m2771d(writableDatabase);
                }
                close();
                return m2769l();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onConfigure(SQLiteDatabase sQLiteDatabase) {
            AbstractC2796b.AbstractC2797a abstractC2797a = this.f10096b;
            m2770k(this.f10095a, sQLiteDatabase);
            Objects.requireNonNull(abstractC2797a);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x00a7  */
        /* JADX WARN: Removed duplicated region for block: B:22:0x00d5 A[ORIG_RETURN, RETURN] */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onCreate(android.database.sqlite.SQLiteDatabase r5) {
            /*
                Method dump skipped, instructions count: 223
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p110h1.C2996c.C2997a.onCreate(android.database.sqlite.SQLiteDatabase):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f10097c = true;
            AbstractC2796b.AbstractC2797a abstractC2797a = this.f10096b;
            ((C2155g) abstractC2797a).mo3000b(m2770k(this.f10095a, sQLiteDatabase), i, i2);
        }

        /* JADX WARN: Finally extract failed */
        /* JADX WARN: Removed duplicated region for block: B:14:0x0058  */
        /* JADX WARN: Removed duplicated region for block: B:28:0x00af  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x00fa A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // android.database.sqlite.SQLiteOpenHelper
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void onOpen(android.database.sqlite.SQLiteDatabase r6) {
            /*
                Method dump skipped, instructions count: 444
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p110h1.C2996c.C2997a.onOpen(android.database.sqlite.SQLiteDatabase):void");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f10097c = true;
            this.f10096b.mo3000b(m2770k(this.f10095a, sQLiteDatabase), i, i2);
        }
    }

    public C2996c(Context context, String str, AbstractC2796b.AbstractC2797a abstractC2797a, boolean z) {
        this.f10088a = context;
        this.f10089b = str;
        this.f10090c = abstractC2797a;
        this.f10091d = z;
    }

    @Override // p099g1.AbstractC2796b
    /* renamed from: T */
    public AbstractC2795a mo2773T() {
        return m2772d().m2769l();
    }

    @Override // p099g1.AbstractC2796b, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m2772d().close();
    }

    /* renamed from: d */
    public final C2997a m2772d() {
        C2997a c2997a;
        synchronized (this.f10092e) {
            if (this.f10093f == null) {
                C2993a[] c2993aArr = new C2993a[1];
                if (Build.VERSION.SDK_INT < 23 || this.f10089b == null || !this.f10091d) {
                    this.f10093f = new C2997a(this.f10088a, this.f10089b, c2993aArr, this.f10090c);
                } else {
                    this.f10093f = new C2997a(this.f10088a, new File(this.f10088a.getNoBackupFilesDir(), this.f10089b).getAbsolutePath(), c2993aArr, this.f10090c);
                }
                this.f10093f.setWriteAheadLoggingEnabled(this.f10094g);
            }
            c2997a = this.f10093f;
        }
        return c2997a;
    }

    @Override // p099g1.AbstractC2796b
    public String getDatabaseName() {
        return this.f10089b;
    }

    @Override // p099g1.AbstractC2796b
    public void setWriteAheadLoggingEnabled(boolean z) {
        synchronized (this.f10092e) {
            C2997a c2997a = this.f10093f;
            if (c2997a != null) {
                c2997a.setWriteAheadLoggingEnabled(z);
            }
            this.f10094g = z;
        }
    }
}
