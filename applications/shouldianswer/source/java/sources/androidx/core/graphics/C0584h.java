package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p020d.C0465b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.core.graphics.h */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/h.class */
public class C0584h {

    /* renamed from: a */
    private ConcurrentHashMap<Long, C0412c.C0414b> f1965a = new ConcurrentHashMap<>();

    /* renamed from: androidx.core.graphics.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/h$a.class */
    public interface AbstractC0587a<T> {
        /* renamed from: a */
        boolean mo6079a(T t);

        /* renamed from: b */
        int mo6078b(T t);
    }

    /* renamed from: a */
    private C0412c.C0415c m6087a(C0412c.C0414b c0414b, int i) {
        return (C0412c.C0415c) m6085a(c0414b.m6719a(), i, new AbstractC0587a<C0412c.C0415c>() { // from class: androidx.core.graphics.h.2
            /* renamed from: a */
            public int mo6078b(C0412c.C0415c c0415c) {
                return c0415c.m6717b();
            }

            /* renamed from: b */
            public boolean mo6079a(C0412c.C0415c c0415c) {
                return c0415c.m6716c();
            }
        });
    }

    /* renamed from: a */
    private static <T> T m6085a(T[] tArr, int i, AbstractC0587a<T> abstractC0587a) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        int length = tArr.length;
        int i4 = Integer.MAX_VALUE;
        T t = null;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (Math.abs(abstractC0587a.mo6078b(t2) - i3) * 2) + (abstractC0587a.mo6079a(t2) == z ? 0 : 1);
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

    /* renamed from: a */
    private void m6088a(Typeface typeface, C0412c.C0414b c0414b) {
        long m6084b = m6084b(typeface);
        if (m6084b != 0) {
            this.f1965a.put(Long.valueOf(m6084b), c0414b);
        }
    }

    /* renamed from: b */
    private static long m6084b(Typeface typeface) {
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo6093a(Context context, Resources resources, int i, String str, int i2) {
        File m6077a = C0588i.m6077a(context);
        if (m6077a == null) {
            return null;
        }
        try {
            if (!C0588i.m6072a(m6077a, resources, i)) {
                m6077a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m6077a.getPath());
            m6077a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m6077a.delete();
            return null;
        } catch (Throwable th) {
            m6077a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public Typeface mo6092a(Context context, CancellationSignal cancellationSignal, C0465b.C0471b[] c0471bArr, int i) {
        InputStream inputStream;
        Throwable th;
        if (c0471bArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(m6086a(c0471bArr, i).m6523a());
            try {
                Typeface m6090a = m6090a(context, inputStream);
                C0588i.m6074a(inputStream);
                return m6090a;
            } catch (IOException e) {
                C0588i.m6074a(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                C0588i.m6074a(inputStream);
                throw th;
            }
        } catch (IOException e2) {
            inputStream = null;
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    /* renamed from: a */
    public Typeface mo6091a(Context context, C0412c.C0414b c0414b, Resources resources, int i) {
        C0412c.C0415c m6087a = m6087a(c0414b, i);
        if (m6087a == null) {
            return null;
        }
        Typeface m6154a = C0573c.m6154a(context, resources, m6087a.m6713f(), m6087a.m6718a(), i);
        m6088a(m6154a, c0414b);
        return m6154a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface m6090a(Context context, InputStream inputStream) {
        File m6077a = C0588i.m6077a(context);
        if (m6077a == null) {
            return null;
        }
        try {
            if (!C0588i.m6071a(m6077a, inputStream)) {
                m6077a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m6077a.getPath());
            m6077a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m6077a.delete();
            return null;
        } catch (Throwable th) {
            m6077a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public C0412c.C0414b m6089a(Typeface typeface) {
        long m6084b = m6084b(typeface);
        if (m6084b == 0) {
            return null;
        }
        return this.f1965a.get(Long.valueOf(m6084b));
    }

    /* renamed from: a */
    public C0465b.C0471b m6086a(C0465b.C0471b[] c0471bArr, int i) {
        return (C0465b.C0471b) m6085a(c0471bArr, i, new AbstractC0587a<C0465b.C0471b>() { // from class: androidx.core.graphics.h.1
            /* renamed from: a */
            public int mo6078b(C0465b.C0471b c0471b) {
                return c0471b.m6521c();
            }

            /* renamed from: b */
            public boolean mo6079a(C0465b.C0471b c0471b) {
                return c0471b.m6520d();
            }
        });
    }
}
