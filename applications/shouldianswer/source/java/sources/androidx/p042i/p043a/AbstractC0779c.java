package androidx.p042i.p043a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.util.Log;
import android.util.Pair;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.i.a.c */
/* loaded from: classes-dex2jar.jar:androidx/i/a/c.class */
public interface AbstractC0779c {

    /* renamed from: androidx.i.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$a.class */
    public static abstract class AbstractC0780a {

        /* renamed from: a */
        public final int f2546a;

        public AbstractC0780a(int i) {
            this.f2546a = i;
        }

        /* renamed from: a */
        private void m5360a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                if (Build.VERSION.SDK_INT >= 16) {
                    SQLiteDatabase.deleteDatabase(new File(str));
                } else {
                    try {
                        if (!new File(str).delete()) {
                            Log.e("SupportSQLite", "Could not delete the database file " + str);
                        }
                    } catch (Exception e) {
                        Log.e("SupportSQLite", "error while deleting corrupted database file", e);
                    }
                }
            } catch (Exception e2) {
                Log.w("SupportSQLite", "delete failed: ", e2);
            }
        }

        /* renamed from: a */
        public void mo4425a(AbstractC0778b abstractC0778b) {
        }

        /* renamed from: a */
        public abstract void mo4424a(AbstractC0778b abstractC0778b, int i, int i2);

        /* renamed from: b */
        public abstract void mo4423b(AbstractC0778b abstractC0778b);

        /* renamed from: b */
        public void mo4422b(AbstractC0778b abstractC0778b, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        /* renamed from: c */
        public void mo4421c(AbstractC0778b abstractC0778b) {
        }

        /* renamed from: d */
        public void m5359d(AbstractC0778b abstractC0778b) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + abstractC0778b.mo5362f());
            if (!abstractC0778b.mo5363e()) {
                m5360a(abstractC0778b.mo5362f());
                return;
            }
            List<Pair<String, String>> list = null;
            List<Pair<String, String>> list2 = null;
            try {
                try {
                    list = abstractC0778b.mo5361g();
                } catch (SQLiteException e) {
                }
                list2 = list;
                try {
                    abstractC0778b.close();
                } catch (IOException e2) {
                }
                if (list == null) {
                    m5360a(abstractC0778b.mo5362f());
                    return;
                }
                for (Pair<String, String> pair : list) {
                    m5360a((String) pair.second);
                }
            } catch (Throwable th) {
                if (list2 != null) {
                    for (Pair<String, String> pair2 : list2) {
                        m5360a((String) pair2.second);
                    }
                } else {
                    m5360a(abstractC0778b.mo5362f());
                }
                throw th;
            }
        }
    }

    /* renamed from: androidx.i.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$b.class */
    public static class C0781b {

        /* renamed from: a */
        public final Context f2547a;

        /* renamed from: b */
        public final String f2548b;

        /* renamed from: c */
        public final AbstractC0780a f2549c;

        /* renamed from: androidx.i.a.c$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/i/a/c$b$a.class */
        public static class C0782a {

            /* renamed from: a */
            Context f2550a;

            /* renamed from: b */
            String f2551b;

            /* renamed from: c */
            AbstractC0780a f2552c;

            C0782a(Context context) {
                this.f2550a = context;
            }

            /* renamed from: a */
            public C0782a m5356a(AbstractC0780a abstractC0780a) {
                this.f2552c = abstractC0780a;
                return this;
            }

            /* renamed from: a */
            public C0782a m5355a(String str) {
                this.f2551b = str;
                return this;
            }

            /* renamed from: a */
            public C0781b m5357a() {
                AbstractC0780a abstractC0780a = this.f2552c;
                if (abstractC0780a != null) {
                    Context context = this.f2550a;
                    if (context == null) {
                        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                    }
                    return new C0781b(context, this.f2551b, abstractC0780a);
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }
        }

        C0781b(Context context, String str, AbstractC0780a abstractC0780a) {
            this.f2547a = context;
            this.f2548b = str;
            this.f2549c = abstractC0780a;
        }

        /* renamed from: a */
        public static C0782a m5358a(Context context) {
            return new C0782a(context);
        }
    }

    /* renamed from: androidx.i.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$c.class */
    public interface AbstractC0783c {
        /* renamed from: a */
        AbstractC0779c mo4397a(C0781b c0781b);
    }

    /* renamed from: a */
    String mo4403a();

    /* renamed from: a */
    void mo4400a(boolean z);

    /* renamed from: b */
    AbstractC0778b mo4399b();
}
