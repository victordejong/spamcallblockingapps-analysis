package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.p017a.p018a.C0441c;
import androidx.core.p023e.C0489b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.core.graphics.h */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/h.class */
public class C0544h {

    /* renamed from: a */
    private ConcurrentHashMap<Long, C0441c.C0443b> f2010a = new ConcurrentHashMap<>();

    /* renamed from: androidx.core.graphics.h$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/h$a.class */
    public interface AbstractC0547a<T> {
        /* renamed from: a */
        boolean mo20541a(T t);

        /* renamed from: b */
        int mo20540b(T t);
    }

    /* renamed from: a */
    private C0441c.C0444c m20549a(C0441c.C0443b c0443b, int i) {
        return (C0441c.C0444c) m20547a(c0443b.m20865a(), i, new AbstractC0547a<C0441c.C0444c>() { // from class: androidx.core.graphics.h.2
            /* renamed from: a */
            public int mo20540b(C0441c.C0444c c0444c) {
                return c0444c.m20863b();
            }

            /* renamed from: b */
            public boolean mo20541a(C0441c.C0444c c0444c) {
                return c0444c.m20862c();
            }
        });
    }

    /* renamed from: a */
    private static <T> T m20547a(T[] tArr, int i, AbstractC0547a<T> abstractC0547a) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (abstractC0547a.mo20541a(t2) == z ? 0 : 1) + (Math.abs(abstractC0547a.mo20540b(t2) - i3) * 2);
            if (t != null) {
                i2 = i4;
                if (i4 <= abs) {
                    i5++;
                    i4 = i2;
                }
            }
            i2 = abs;
            t = t2;
            i5++;
            i4 = i2;
        }
        return t;
    }

    /* renamed from: a */
    private void m20550a(Typeface typeface, C0441c.C0443b c0443b) {
        long m20546b = m20546b(typeface);
        if (m20546b != 0) {
            this.f2010a.put(Long.valueOf(m20546b), c0443b);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* renamed from: b */
    private static long m20546b(Typeface typeface) {
        char c;
        if (typeface == null) {
            c = 0;
        } else {
            try {
                Field declaredField = Typeface.class.getDeclaredField("native_instance");
                declaredField.setAccessible(true);
                c = ((Number) declaredField.get(typeface)).longValue();
            } catch (IllegalAccessException e) {
                Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e);
                c = 0;
            } catch (NoSuchFieldException e2) {
                Log.e("TypefaceCompatBaseImpl", "Could not retrieve font from family.", e2);
                c = 0;
            }
        }
        return c;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo20555a(Context context, Resources resources, int i, String str, int i2) {
        Typeface typeface;
        File m20539a = C0548i.m20539a(context);
        if (m20539a == null) {
            typeface = null;
        } else {
            try {
                if (!C0548i.m20534a(m20539a, resources, i)) {
                    m20539a.delete();
                    typeface = null;
                } else {
                    typeface = Typeface.createFromFile(m20539a.getPath());
                    m20539a.delete();
                }
            } catch (RuntimeException e) {
                m20539a.delete();
                typeface = null;
            } catch (Throwable th) {
                m20539a.delete();
                throw th;
            }
        }
        return typeface;
    }

    /* renamed from: a */
    public Typeface mo20554a(Context context, CancellationSignal cancellationSignal, C0489b.C0495b[] c0495bArr, int i) {
        InputStream inputStream;
        Throwable th;
        Typeface typeface;
        if (c0495bArr.length < 1) {
            typeface = null;
        } else {
            try {
                inputStream = context.getContentResolver().openInputStream(m20548a(c0495bArr, i).m20703a());
                try {
                    typeface = m20552a(context, inputStream);
                    C0548i.m20536a(inputStream);
                } catch (IOException e) {
                    C0548i.m20536a(inputStream);
                    typeface = null;
                    return typeface;
                } catch (Throwable th2) {
                    th = th2;
                    C0548i.m20536a(inputStream);
                    throw th;
                }
            } catch (IOException e2) {
                inputStream = null;
            } catch (Throwable th3) {
                th = th3;
                inputStream = null;
            }
        }
        return typeface;
    }

    /* renamed from: a */
    public Typeface mo20553a(Context context, C0441c.C0443b c0443b, Resources resources, int i) {
        Typeface m20616a;
        C0441c.C0444c m20549a = m20549a(c0443b, i);
        if (m20549a == null) {
            m20616a = null;
        } else {
            m20616a = C0533c.m20616a(context, resources, m20549a.m20859f(), m20549a.m20864a(), i);
            m20550a(m20616a, c0443b);
        }
        return m20616a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface m20552a(Context context, InputStream inputStream) {
        Typeface typeface;
        File m20539a = C0548i.m20539a(context);
        if (m20539a == null) {
            typeface = null;
        } else {
            try {
                if (!C0548i.m20533a(m20539a, inputStream)) {
                    m20539a.delete();
                    typeface = null;
                } else {
                    typeface = Typeface.createFromFile(m20539a.getPath());
                    m20539a.delete();
                }
            } catch (RuntimeException e) {
                m20539a.delete();
                typeface = null;
            } catch (Throwable th) {
                m20539a.delete();
                throw th;
            }
        }
        return typeface;
    }

    /* renamed from: a */
    public C0441c.C0443b m20551a(Typeface typeface) {
        long m20546b = m20546b(typeface);
        return m20546b == 0 ? null : this.f2010a.get(Long.valueOf(m20546b));
    }

    /* renamed from: a */
    public C0489b.C0495b m20548a(C0489b.C0495b[] c0495bArr, int i) {
        return (C0489b.C0495b) m20547a(c0495bArr, i, new AbstractC0547a<C0489b.C0495b>() { // from class: androidx.core.graphics.h.1
            /* renamed from: a */
            public int mo20540b(C0489b.C0495b c0495b) {
                return c0495b.m20701c();
            }

            /* renamed from: b */
            public boolean mo20541a(C0489b.C0495b c0495b) {
                return c0495b.m20700d();
            }
        });
    }
}
