package androidx.sqlite.db.a;

import android.content.Context;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/b.class */
final class b implements SupportSQLiteOpenHelper {

    /* renamed from: a  reason: collision with root package name */
    private final Context f5635a;

    /* renamed from: b  reason: collision with root package name */
    private final String f5636b;

    /* renamed from: c  reason: collision with root package name */
    private final SupportSQLiteOpenHelper.a f5637c;

    /* renamed from: d  reason: collision with root package name */
    private final boolean f5638d;
    private final Object e;
    private a f;
    private boolean g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/b$a.class */
    public static final class a extends SQLiteOpenHelper {

        /* renamed from: a  reason: collision with root package name */
        final androidx.sqlite.db.a.a[] f5639a;

        /* renamed from: b  reason: collision with root package name */
        final SupportSQLiteOpenHelper.a f5640b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f5641c;

        a(Context context, String str, final androidx.sqlite.db.a.a[] aVarArr, final SupportSQLiteOpenHelper.a aVar) {
            super(context, str, null, aVar.f5627a, new DatabaseErrorHandler() { // from class: androidx.sqlite.db.a.b.a.1
                @Override // android.database.DatabaseErrorHandler
                public final void onCorruption(SQLiteDatabase sQLiteDatabase) {
                    androidx.sqlite.db.a.a a2 = a.a(aVarArr, sQLiteDatabase);
                    Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + a2.f());
                    if (!a2.e()) {
                        SupportSQLiteOpenHelper.a.a(a2.f());
                        return;
                    }
                    List<Pair<String, String>> list = null;
                    List<Pair<String, String>> list2 = null;
                    try {
                        try {
                            list = a2.g();
                        } catch (SQLiteException e) {
                        }
                        list2 = list;
                        try {
                            a2.close();
                        } catch (IOException e2) {
                        }
                        if (list != null) {
                            for (Pair<String, String> pair : list) {
                                SupportSQLiteOpenHelper.a.a((String) pair.second);
                            }
                            return;
                        }
                        SupportSQLiteOpenHelper.a.a(a2.f());
                    } catch (Throwable th) {
                        if (list2 != null) {
                            for (Pair<String, String> pair2 : list2) {
                                SupportSQLiteOpenHelper.a.a((String) pair2.second);
                            }
                        } else {
                            SupportSQLiteOpenHelper.a.a(a2.f());
                        }
                        throw th;
                    }
                }
            });
            this.f5640b = aVar;
            this.f5639a = aVarArr;
        }

        private androidx.sqlite.db.a.a a(SQLiteDatabase sQLiteDatabase) {
            return a(this.f5639a, sQLiteDatabase);
        }

        static androidx.sqlite.db.a.a a(androidx.sqlite.db.a.a[] aVarArr, SQLiteDatabase sQLiteDatabase) {
            androidx.sqlite.db.a.a aVar = aVarArr[0];
            if (aVar == null || !aVar.a(sQLiteDatabase)) {
                aVarArr[0] = new androidx.sqlite.db.a.a(sQLiteDatabase);
            }
            return aVarArr[0];
        }

        final androidx.sqlite.db.b a() {
            synchronized (this) {
                this.f5641c = false;
                SQLiteDatabase writableDatabase = super.getWritableDatabase();
                if (this.f5641c) {
                    close();
                    return a();
                }
                return a(writableDatabase);
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper, java.lang.AutoCloseable
        public final void close() {
            synchronized (this) {
                super.close();
                this.f5639a[0] = null;
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onConfigure(SQLiteDatabase sQLiteDatabase) {
            a(sQLiteDatabase);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            this.f5640b.a(a(sQLiteDatabase));
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f5641c = true;
            this.f5640b.b(a(sQLiteDatabase), i, i2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onOpen(SQLiteDatabase sQLiteDatabase) {
            if (!this.f5641c) {
                this.f5640b.b(a(sQLiteDatabase));
            }
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            this.f5641c = true;
            this.f5640b.a(a(sQLiteDatabase), i, i2);
        }
    }

    b(Context context, String str, SupportSQLiteOpenHelper.a aVar) {
        this(context, str, aVar, false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(Context context, String str, SupportSQLiteOpenHelper.a aVar, boolean z) {
        this.f5635a = context;
        this.f5636b = str;
        this.f5637c = aVar;
        this.f5638d = z;
        this.e = new Object();
    }

    private a c() {
        a aVar;
        synchronized (this.e) {
            if (this.f == null) {
                androidx.sqlite.db.a.a[] aVarArr = new androidx.sqlite.db.a.a[1];
                if (Build.VERSION.SDK_INT < 23 || this.f5636b == null || !this.f5638d) {
                    this.f = new a(this.f5635a, this.f5636b, aVarArr, this.f5637c);
                } else {
                    this.f = new a(this.f5635a, new File(this.f5635a.getNoBackupFilesDir(), this.f5636b).getAbsolutePath(), aVarArr, this.f5637c);
                }
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f.setWriteAheadLoggingEnabled(this.g);
                }
            }
            aVar = this.f;
        }
        return aVar;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final String a() {
        return this.f5636b;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final void a(boolean z) {
        synchronized (this.e) {
            a aVar = this.f;
            if (aVar != null) {
                aVar.setWriteAheadLoggingEnabled(z);
            }
            this.g = z;
        }
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper
    public final androidx.sqlite.db.b b() {
        return c().a();
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        c().close();
    }
}
