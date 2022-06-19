package p099g1;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.Closeable;
import java.io.File;
/* renamed from: g1.b */
/* loaded from: classes-dex2jar.jar:g1/b.class */
public interface AbstractC2796b extends Closeable {

    /* renamed from: g1.b$a */
    /* loaded from: classes-dex2jar.jar:g1/b$a.class */
    public static abstract class AbstractC2797a {

        /* renamed from: a */
        public final int f9522a;

        public AbstractC2797a(int i) {
            this.f9522a = i;
        }

        /* renamed from: a */
        public final void m3001a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            Log.w("SupportSQLite", "deleting the database file: " + str);
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e) {
                Log.w("SupportSQLite", "delete failed: ", e);
            }
        }

        /* renamed from: b */
        public abstract void mo3000b(AbstractC2795a abstractC2795a, int i, int i2);
    }

    /* renamed from: g1.b$b */
    /* loaded from: classes-dex2jar.jar:g1/b$b.class */
    public static class C2798b {

        /* renamed from: a */
        public final Context f9523a;

        /* renamed from: b */
        public final String f9524b;

        /* renamed from: c */
        public final AbstractC2797a f9525c;

        /* renamed from: d */
        public final boolean f9526d;

        public C2798b(Context context, String str, AbstractC2797a abstractC2797a, boolean z) {
            this.f9523a = context;
            this.f9524b = str;
            this.f9525c = abstractC2797a;
            this.f9526d = z;
        }
    }

    /* renamed from: g1.b$c */
    /* loaded from: classes-dex2jar.jar:g1/b$c.class */
    public interface AbstractC2799c {
        /* renamed from: a */
        AbstractC2796b mo1539a(C2798b c2798b);
    }

    /* renamed from: T */
    AbstractC2795a mo2773T();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    void setWriteAheadLoggingEnabled(boolean z);
}
