package p1727n3.p1781e0.p1782a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import java.io.Closeable;
import java.io.File;
/* renamed from: n3.e0.a.c */
/* loaded from: classes-dex2jar.jar:n3/e0/a/c.class */
public interface AbstractC26148c extends Closeable {

    /* renamed from: n3.e0.a.c$a */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/c$a.class */
    public static abstract class AbstractC26149a {

        /* renamed from: a */
        public final int f72911a;

        public AbstractC26149a(int i) {
            this.f72911a = i;
        }

        /* renamed from: a */
        public final void m2681a(String str) {
            if (str.equalsIgnoreCase(":memory:") || str.trim().length() == 0) {
                return;
            }
            try {
                SQLiteDatabase.deleteDatabase(new File(str));
            } catch (Exception e) {
            }
        }

        /* renamed from: b */
        public abstract void mo2680b(AbstractC26147b abstractC26147b);

        /* renamed from: c */
        public abstract void mo2679c(AbstractC26147b abstractC26147b);

        /* renamed from: d */
        public abstract void mo2678d(AbstractC26147b abstractC26147b, int i, int i2);

        /* renamed from: e */
        public abstract void mo2677e(AbstractC26147b abstractC26147b);

        /* renamed from: f */
        public abstract void mo2676f(AbstractC26147b abstractC26147b, int i, int i2);
    }

    /* renamed from: n3.e0.a.c$b */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/c$b.class */
    public static class C26150b {

        /* renamed from: a */
        public final Context f72912a;

        /* renamed from: b */
        public final String f72913b;

        /* renamed from: c */
        public final AbstractC26149a f72914c;

        /* renamed from: d */
        public final boolean f72915d;

        public C26150b(Context context, String str, AbstractC26149a abstractC26149a, boolean z) {
            this.f72912a = context;
            this.f72913b = str;
            this.f72914c = abstractC26149a;
            this.f72915d = z;
        }
    }

    /* renamed from: n3.e0.a.c$c */
    /* loaded from: classes-dex2jar.jar:n3/e0/a/c$c.class */
    public interface AbstractC26151c {
        /* renamed from: a */
        AbstractC26148c mo1435a(C26150b c26150b);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    String getDatabaseName();

    AbstractC26147b getWritableDatabase();

    void setWriteAheadLoggingEnabled(boolean z);
}
