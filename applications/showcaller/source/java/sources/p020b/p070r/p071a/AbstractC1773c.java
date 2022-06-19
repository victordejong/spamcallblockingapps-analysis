package p020b.p070r.p071a;

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
/* renamed from: b.r.a.c */
/* loaded from: classes-dex2jar.jar:b/r/a/c.class */
public interface AbstractC1773c extends Closeable {

    /* renamed from: b.r.a.c$a */
    /* loaded from: classes-dex2jar.jar:b/r/a/c$a.class */
    public static abstract class AbstractC1774a {

        /* renamed from: a */
        public final int f6609a;

        public AbstractC1774a(int i) {
            this.f6609a = i;
        }

        /* renamed from: a */
        private void m28933a(String str) {
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

        /* renamed from: b */
        public void mo28932b(AbstractC1772b abstractC1772b) {
        }

        /* renamed from: c */
        public void m28931c(AbstractC1772b abstractC1772b) {
            Log.e("SupportSQLite", "Corruption reported by sqlite on database: " + abstractC1772b.getPath());
            if (!abstractC1772b.isOpen()) {
                m28933a(abstractC1772b.getPath());
                return;
            }
            List<Pair<String, String>> list = null;
            List<Pair<String, String>> list2 = null;
            try {
                try {
                    list = abstractC1772b.mo28911m();
                } catch (SQLiteException e) {
                }
                list2 = list;
                try {
                    abstractC1772b.close();
                } catch (IOException e2) {
                }
                if (list == null) {
                    m28933a(abstractC1772b.getPath());
                    return;
                }
                for (Pair<String, String> pair : list) {
                    m28933a((String) pair.second);
                }
            } catch (Throwable th) {
                if (list2 != null) {
                    for (Pair<String, String> pair2 : list2) {
                        m28933a((String) pair2.second);
                    }
                } else {
                    m28933a(abstractC1772b.getPath());
                }
                throw th;
            }
        }

        /* renamed from: d */
        public abstract void mo28930d(AbstractC1772b abstractC1772b);

        /* renamed from: e */
        public abstract void mo28929e(AbstractC1772b abstractC1772b, int i, int i2);

        /* renamed from: f */
        public void mo28928f(AbstractC1772b abstractC1772b) {
        }

        /* renamed from: g */
        public abstract void mo28927g(AbstractC1772b abstractC1772b, int i, int i2);
    }

    /* renamed from: b.r.a.c$b */
    /* loaded from: classes-dex2jar.jar:b/r/a/c$b.class */
    public static class C1775b {

        /* renamed from: a */
        public final Context f6610a;

        /* renamed from: b */
        public final String f6611b;

        /* renamed from: c */
        public final AbstractC1774a f6612c;

        /* renamed from: d */
        public final boolean f6613d;

        /* renamed from: b.r.a.c$b$a */
        /* loaded from: classes-dex2jar.jar:b/r/a/c$b$a.class */
        public static class C1776a {

            /* renamed from: a */
            Context f6614a;

            /* renamed from: b */
            String f6615b;

            /* renamed from: c */
            AbstractC1774a f6616c;

            /* renamed from: d */
            boolean f6617d;

            C1776a(Context context) {
                this.f6614a = context;
            }

            /* renamed from: a */
            public C1775b m28925a() {
                if (this.f6616c != null) {
                    if (this.f6614a == null) {
                        throw new IllegalArgumentException("Must set a non-null context to create the configuration.");
                    }
                    if (this.f6617d && TextUtils.isEmpty(this.f6615b)) {
                        throw new IllegalArgumentException("Must set a non-null database name to a configuration that uses the no backup directory.");
                    }
                    return new C1775b(this.f6614a, this.f6615b, this.f6616c, this.f6617d);
                }
                throw new IllegalArgumentException("Must set a callback to create the configuration.");
            }

            /* renamed from: b */
            public C1776a m28924b(AbstractC1774a abstractC1774a) {
                this.f6616c = abstractC1774a;
                return this;
            }

            /* renamed from: c */
            public C1776a m28923c(String str) {
                this.f6615b = str;
                return this;
            }

            /* renamed from: d */
            public C1776a m28922d(boolean z) {
                this.f6617d = z;
                return this;
            }
        }

        C1775b(Context context, String str, AbstractC1774a abstractC1774a, boolean z) {
            this.f6610a = context;
            this.f6611b = str;
            this.f6612c = abstractC1774a;
            this.f6613d = z;
        }

        /* renamed from: a */
        public static C1776a m28926a(Context context) {
            return new C1776a(context);
        }
    }

    /* renamed from: b.r.a.c$c */
    /* loaded from: classes-dex2jar.jar:b/r/a/c$c.class */
    public interface AbstractC1777c {
        /* renamed from: a */
        AbstractC1773c mo28902a(C1775b c1775b);
    }

    /* renamed from: K */
    AbstractC1772b mo28907K();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z);
}
