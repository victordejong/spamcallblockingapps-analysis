package androidx.p042i.p043a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Build;
import android.text.TextUtils;
import android.util.Log;
import android.util.Pair;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.util.List;
/* renamed from: androidx.i.a.c */
/* loaded from: classes-dex2jar.jar:androidx/i/a/c.class */
public interface AbstractC0750c extends Closeable {

    /* renamed from: androidx.i.a.c$a */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$a.class */
    public static abstract class AbstractC0751a {

        /* renamed from: a */
        public final int f2653a;

        public AbstractC0751a(int i) {
            this.f2653a = i;
        }

        /* renamed from: a */
        private void m19512a(String str) {
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
        public void mo18269a(AbstractC0749b abstractC0749b) {
        }

        /* renamed from: a */
        public abstract void mo18268a(AbstractC0749b abstractC0749b, int i, int i2);

        /* renamed from: b */
        public abstract void mo18267b(AbstractC0749b abstractC0749b);

        /* renamed from: b */
        public void mo18266b(AbstractC0749b abstractC0749b, int i, int i2) {
            throw new SQLiteException("Can't downgrade database from version " + i + " to " + i2);
        }

        /* renamed from: c */
        public void mo18265c(AbstractC0749b abstractC0749b) {
        }

        /* renamed from: d */
        public void m19511d(AbstractC0749b abstractC0749b) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + abstractC0749b.mo19514f());
            if (!abstractC0749b.mo19515e()) {
                m19512a(abstractC0749b.mo19514f());
                return;
            }
            List<Pair<String, String>> list = null;
            List<Pair<String, String>> list2 = null;
            try {
                try {
                    list2 = abstractC0749b.mo19513g();
                } catch (Throwable th) {
                    if (list != null) {
                        for (Pair<String, String> pair : list) {
                            m19512a((String) pair.second);
                        }
                    } else {
                        m19512a(abstractC0749b.mo19514f());
                    }
                    throw th;
                }
            } catch (SQLiteException e) {
            }
            list = list2;
            try {
                abstractC0749b.close();
            } catch (IOException e2) {
            }
            if (list2 == null) {
                m19512a(abstractC0749b.mo19514f());
                return;
            }
            for (Pair<String, String> pair2 : list2) {
                m19512a((String) pair2.second);
            }
        }
    }

    /* renamed from: androidx.i.a.c$b */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$b.class */
    public static class C0752b {

        /* renamed from: a */
        public final Context f2654a;

        /* renamed from: b */
        public final String f2655b;

        /* renamed from: c */
        public final AbstractC0751a f2656c;

        /* renamed from: d */
        public final boolean f2657d;

        /* renamed from: androidx.i.a.c$b$a */
        /* loaded from: classes-dex2jar.jar:androidx/i/a/c$b$a.class */
        public static class C0753a {

            /* renamed from: a */
            Context f2658a;

            /* renamed from: b */
            String f2659b;

            /* renamed from: c */
            AbstractC0751a f2660c;

            /* renamed from: d */
            boolean f2661d;

            C0753a(Context context) {
                this.f2658a = context;
            }

            /* renamed from: a */
            public C0753a m19508a(AbstractC0751a abstractC0751a) {
                this.f2660c = abstractC0751a;
                return this;
            }

            /* renamed from: a */
            public C0753a m19507a(String str) {
                this.f2659b = str;
                return this;
            }

            /* renamed from: a */
            public C0753a m19506a(boolean z) {
                this.f2661d = z;
                return this;
            }

            /* renamed from: a */
            public C0752b m19509a() {
                if (this.f2660c == null) {
                    throw new IllegalArgumentException("Must set a callback to create the configuration.");
                }
                if (this.f2658a == null) {
                    throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                }
                if (this.f2661d && TextUtils.isEmpty(this.f2659b)) {
                    throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                }
                return new C0752b(this.f2658a, this.f2659b, this.f2660c, this.f2661d);
            }
        }

        C0752b(Context context, String str, AbstractC0751a abstractC0751a, boolean z) {
            this.f2654a = context;
            this.f2655b = str;
            this.f2656c = abstractC0751a;
            this.f2657d = z;
        }

        /* renamed from: a */
        public static C0753a m19510a(Context context) {
            return new C0753a(context);
        }
    }

    /* renamed from: androidx.i.a.c$c */
    /* loaded from: classes-dex2jar.jar:androidx/i/a/c$c.class */
    public interface AbstractC0754c {
        /* renamed from: a */
        AbstractC0750c mo17900a(C0752b c0752b);
    }

    /* renamed from: a */
    String mo18247a();

    /* renamed from: a */
    void mo18244a(boolean z);

    /* renamed from: b */
    AbstractC0749b mo18243b();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();
}
