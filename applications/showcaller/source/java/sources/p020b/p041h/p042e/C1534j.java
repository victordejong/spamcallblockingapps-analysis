package p020b.p041h.p042e;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.p007d.C0597c;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.e.j */
/* loaded from: classes-dex2jar.jar:b/h/e/j.class */
public class C1534j {
    @SuppressLint({"BanConcurrentHashMap"})

    /* renamed from: a */
    private ConcurrentHashMap<Long, C0597c.C0599b> f6078a = new ConcurrentHashMap<>();

    /* renamed from: b.h.e.j$a */
    /* loaded from: classes-dex2jar.jar:b/h/e/j$a.class */
    public class C1535a implements AbstractC1537c<C1556f.C1558b> {
        C1535a() {
            C1534j.this = r4;
        }

        /* renamed from: c */
        public int mo29782a(C1556f.C1558b c1558b) {
            return c1558b.m29731e();
        }

        /* renamed from: d */
        public boolean mo29781b(C1556f.C1558b c1558b) {
            return c1558b.m29730f();
        }
    }

    /* renamed from: b.h.e.j$b */
    /* loaded from: classes-dex2jar.jar:b/h/e/j$b.class */
    public class C1536b implements AbstractC1537c<C0597c.C0600c> {
        C1536b() {
            C1534j.this = r4;
        }

        /* renamed from: c */
        public int mo29782a(C0597c.C0600c c0600c) {
            return c0600c.m33290e();
        }

        /* renamed from: d */
        public boolean mo29781b(C0597c.C0600c c0600c) {
            return c0600c.m33289f();
        }
    }

    /* renamed from: b.h.e.j$c */
    /* loaded from: classes-dex2jar.jar:b/h/e/j$c.class */
    public interface AbstractC1537c<T> {
        /* renamed from: a */
        int mo29782a(T t);

        /* renamed from: b */
        boolean mo29781b(T t);
    }

    /* renamed from: a */
    private void m29796a(Typeface typeface, C0597c.C0599b c0599b) {
        long m29787j = m29787j(typeface);
        if (m29787j != 0) {
            this.f6078a.put(Long.valueOf(m29787j), c0599b);
        }
    }

    /* renamed from: f */
    private C0597c.C0600c m29791f(C0597c.C0599b c0599b, int i) {
        return (C0597c.C0600c) m29790g(c0599b.m33295a(), i, new C1536b());
    }

    /* renamed from: g */
    private static <T> T m29790g(T[] tArr, int i, AbstractC1537c<T> abstractC1537c) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (Math.abs(abstractC1537c.mo29782a(t2) - i3) * 2) + (abstractC1537c.mo29781b(t2) == z ? 0 : 1);
            if (t != null) {
                i2 = i4;
                if (i4 <= abs) {
                    i5++;
                    i4 = i2;
                }
            }
            t = t2;
            i2 = abs;
            i5++;
            i4 = i2;
        }
        return t;
    }

    /* renamed from: j */
    private static long m29787j(Typeface typeface) {
        if (typeface == null) {
            return 0L;
        }
        try {
            Field declaredField = Typeface.class.getDeclaredField("native_instance");
            declaredField.setAccessible(true);
            return ((Number) declaredField.get(typeface)).longValue();
        } catch (IllegalAccessException e) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
            return 0L;
        } catch (NoSuchFieldException e2) {
            Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
            return 0L;
        }
    }

    /* renamed from: b */
    public Typeface mo29795b(Context context, C0597c.C0599b c0599b, Resources resources, int i) {
        C0597c.C0600c m29791f = m29791f(c0599b, i);
        if (m29791f == null) {
            return null;
        }
        Typeface m29824d = C1527d.m29824d(context, resources, m29791f.m33293b(), m29791f.m33294a(), i);
        m29796a(m29824d, c0599b);
        return m29824d;
    }

    /* renamed from: c */
    public Typeface mo29794c(Context context, CancellationSignal cancellationSignal, C1556f.C1558b[] c1558bArr, int i) {
        InputStream inputStream;
        Throwable th;
        if (c1558bArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(mo29789h(c1558bArr, i).m29732d());
            try {
                Typeface mo29793d = mo29793d(context, inputStream);
                C1538k.m29780a(inputStream);
                return mo29793d;
            } catch (IOException e) {
                C1538k.m29780a(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                C1538k.m29780a(inputStream);
                throw th;
            }
        } catch (IOException e2) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: d */
    public Typeface mo29793d(Context context, InputStream inputStream) {
        File m29776e = C1538k.m29776e(context);
        if (m29776e == null) {
            return null;
        }
        try {
            if (!C1538k.m29777d(m29776e, inputStream)) {
                m29776e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m29776e.getPath());
            m29776e.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m29776e.delete();
            return null;
        } catch (Throwable th) {
            m29776e.delete();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public Typeface mo29792e(Context context, Resources resources, int i, String str, int i2) {
        File m29776e = C1538k.m29776e(context);
        if (m29776e == null) {
            return null;
        }
        try {
            if (!C1538k.m29778c(m29776e, resources, i)) {
                m29776e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m29776e.getPath());
            m29776e.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m29776e.delete();
            return null;
        } catch (Throwable th) {
            m29776e.delete();
            throw th;
        }
    }

    /* renamed from: h */
    public C1556f.C1558b mo29789h(C1556f.C1558b[] c1558bArr, int i) {
        return (C1556f.C1558b) m29790g(c1558bArr, i, new C1535a());
    }

    /* renamed from: i */
    public C0597c.C0599b m29788i(Typeface typeface) {
        long m29787j = m29787j(typeface);
        if (m29787j == 0) {
            return null;
        }
        return this.f6078a.get(Long.valueOf(m29787j));
    }
}
