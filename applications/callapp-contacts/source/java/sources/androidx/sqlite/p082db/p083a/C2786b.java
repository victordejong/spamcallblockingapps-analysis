package androidx.sqlite.p082db.p083a;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.p082db.AbstractC2792b;
import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.sqlite.db.a.b */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/b.class */
final class C2786b implements SupportSQLiteOpenHelper {

    /* renamed from: a */
    private final Context f10539a;

    /* renamed from: b */
    private final String f10540b;

    /* renamed from: c */
    private final SupportSQLiteOpenHelper.AbstractC2781a f10541c;

    /* renamed from: d */
    private final boolean f10542d;

    /* renamed from: e */
    private final Object f10543e;

    /* renamed from: f */
    private C2787a f10544f;

    /* renamed from: g */
    private boolean f10545g;

    /* renamed from: androidx.sqlite.db.a.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/b$a.class */
    public static final class C2787a extends SQLiteOpenHelper {

        /* renamed from: a */
        final C2784a[] f10546a;

        /* renamed from: b */
        final SupportSQLiteOpenHelper.AbstractC2781a f10547b;

        /* renamed from: c */
        private boolean f10548c;

        C2787a(Context context, String str, final C2784a[] c2784aArr, final SupportSQLiteOpenHelper.AbstractC2781a abstractC2781a) {
            super(context, str, null, abstractC2781a.f10531a, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.a.b.a.1
                /* JADX WARN: Finally extract failed */
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    C2784a m39902a = C2787a.m39902a(c2784aArr, sQLiteDatabase);
                    Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + m39902a.mo39891f());
                    if (!m39902a.mo39892e()) {
                        SupportSQLiteOpenHelper.AbstractC2781a.m39912a(m39902a.mo39891f());
                        return;
                    }
                    List<Pair<String, String>> list = null;
                    List<Pair<String, String>> list2 = null;
                    try {
                        try {
                            list = m39902a.mo39890g();
                        } catch (SQLiteException e) {
                        }
                        list2 = list;
                        try {
                            m39902a.close();
                        } catch (IOException e2) {
                        }
                        if (list == null) {
                            SupportSQLiteOpenHelper.AbstractC2781a.m39912a(m39902a.mo39891f());
                            return;
                        }
                        for (Pair<String, String> pair : list) {
                            SupportSQLiteOpenHelper.AbstractC2781a.m39912a((String) pair.second);
                        }
                    } catch (Throwable th) {
                        if (list2 != null) {
                            for (Pair<String, String> pair2 : list2) {
                                SupportSQLiteOpenHelper.AbstractC2781a.m39912a((String) pair2.second);
                            }
                        } else {
                            SupportSQLiteOpenHelper.AbstractC2781a.m39912a(m39902a.mo39891f());
                        }
                        throw th;
                    }
                }
            });
            this.f10547b = abstractC2781a;
            this.f10546a = c2784aArr;
        }

        /* renamed from: a */
        private C2784a m39903a(SQLiteDatabase sQLiteDatabase) {
            return m39902a(this.f10546a, sQLiteDatabase);
        }

        /* renamed from: a */
        static C2784a m39902a(C2784a[] c2784aArr, SQLiteDatabase sQLiteDatabase) {
            C2784a c2784a = c2784aArr[0];
            if (c2784a == null || !c2784a.m39909a(sQLiteDatabase)) {
                c2784aArr[0] = new C2784a(sQLiteDatabase);
            }
            return c2784aArr[0];
        }

        /* renamed from: a */
        final AbstractC2792b m39904a() {
            synchronized (this) {
                this.f10548c = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (!this.f10548c) {
                    return m39903a(writableDatabase);
                }
                close();
                return m39904a();
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                super.close();
                this.f10546a[0] = null;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            m39903a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f10547b.mo39914a(m39903a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f10548c = true;
            this.f10547b.mo39910b(m39903a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f10548c) {
                this.f10547b.mo39911b(m39903a(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f10548c = true;
            this.f10547b.mo39913a(m39903a(sQLiteDatabase), i, i2);
        }
    }

    C2786b(Context context, String str, SupportSQLiteOpenHelper.AbstractC2781a abstractC2781a) {
        this(context, str, abstractC2781a, false);
    }

    public C2786b(Context context, String str, SupportSQLiteOpenHelper.AbstractC2781a abstractC2781a, boolean z) {
        this.f10539a = context;
        this.f10540b = str;
        this.f10541c = abstractC2781a;
        this.f10542d = z;
        this.f10543e = new Object();
    }

    /* renamed from: c */
    private C2787a m39905c() {
        C2787a c2787a;
        synchronized (this.f10543e) {
            if (this.f10544f == null) {
                C2784a[] c2784aArr = new C2784a[1];
                if (Build.VERSION.SDK_INT < 23 || this.f10540b == null || !this.f10542d) {
                    this.f10544f = new C2787a(this.f10539a, this.f10540b, c2784aArr, this.f10541c);
                } else {
                    this.f10544f = new C2787a(this.f10539a, new File(this.f10539a.getNoBackupFilesDir(), this.f10540b).getAbsolutePath(), c2784aArr, this.f10541c);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f10544f.setWriteAheadLoggingEnabled(this.f10545g);
                }
            }
            c2787a = this.f10544f;
        }
        return c2787a;
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: a */
    public final String mo39908a() {
        return this.f10540b;
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: a */
    public final void mo39907a(boolean z) {
        synchronized (this.f10543e) {
            C2787a c2787a = this.f10544f;
            if (c2787a != null) {
                c2787a.setWriteAheadLoggingEnabled(z);
            }
            this.f10545g = z;
        }
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper
    /* renamed from: b */
    public final AbstractC2792b mo39906b() {
        return m39905c().m39904a();
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m39905c().close();
    }
}
