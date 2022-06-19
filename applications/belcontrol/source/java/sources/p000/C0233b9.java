package p000;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
import k8;
import z9;
/* renamed from: b9 */
/* loaded from: classes-dex2jar.jar:b9.class */
public class C0233b9 {

    /* renamed from: a */
    public ConcurrentHashMap<Long, k8.b> f1832a = new ConcurrentHashMap<>();

    /* renamed from: b9$c */
    /* loaded from: classes-dex2jar.jar:b9$c.class */
    public interface AbstractC0234c<T> {
        /* renamed from: a */
        boolean m5735a(T t);

        /* renamed from: b */
        int m5734b(T t);
    }

    /* renamed from: g */
    public static <T> T m5739g(T[] tArr, int i, AbstractC0234c<T> abstractC0234c) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (Math.abs(abstractC0234c.m5734b(t2) - i3) * 2) + (abstractC0234c.m5735a(t2) == z ? 0 : 1);
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
    public static long m5736j(Typeface typeface) {
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

    /* renamed from: a */
    public final void m5745a(Typeface typeface, k8.b bVar) {
        long m5736j = m5736j(typeface);
        if (m5736j != 0) {
            this.f1832a.put(Long.valueOf(m5736j), bVar);
        }
    }

    /* renamed from: b */
    public Typeface m5744b(Context context, k8.b bVar, Resources resources, int i) {
        k8.c m5740f = m5740f(bVar, i);
        if (m5740f == null) {
            return null;
        }
        Typeface d = v8.d(context, resources, m5740f.b(), m5740f.a(), i);
        m5745a(d, bVar);
        return d;
    }

    /* renamed from: c */
    public Typeface m5743c(Context context, CancellationSignal cancellationSignal, z9.f[] fVarArr, int i) {
        InputStream inputStream;
        Throwable th;
        if (fVarArr.length < 1) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(m5738h(fVarArr, i).c());
            try {
                Typeface m5742d = m5742d(context, inputStream);
                C0295c9.m5415a(inputStream);
                return m5742d;
            } catch (IOException e) {
                C0295c9.m5415a(inputStream);
                return null;
            } catch (Throwable th2) {
                th = th2;
                C0295c9.m5415a(inputStream);
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
    public Typeface m5742d(Context context, InputStream inputStream) {
        File m5411e = C0295c9.m5411e(context);
        if (m5411e == null) {
            return null;
        }
        try {
            if (!C0295c9.m5412d(m5411e, inputStream)) {
                m5411e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m5411e.getPath());
            m5411e.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m5411e.delete();
            return null;
        } catch (Throwable th) {
            m5411e.delete();
            throw th;
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: e */
    public Typeface m5741e(Context context, Resources resources, int i, String str, int i2) {
        File m5411e = C0295c9.m5411e(context);
        if (m5411e == null) {
            return null;
        }
        try {
            if (!C0295c9.m5413c(m5411e, resources, i)) {
                m5411e.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m5411e.getPath());
            m5411e.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m5411e.delete();
            return null;
        } catch (Throwable th) {
            m5411e.delete();
            throw th;
        }
    }

    /* renamed from: f */
    public final k8.c m5740f(k8.b bVar, int i) {
        return (k8.c) m5739g(bVar.a(), i, new b(this));
    }

    /* renamed from: h */
    public z9.f m5738h(z9.f[] fVarArr, int i) {
        return (z9.f) m5739g(fVarArr, i, new a(this));
    }

    /* renamed from: i */
    public k8.b m5737i(Typeface typeface) {
        long m5736j = m5736j(typeface);
        if (m5736j == 0) {
            return null;
        }
        return this.f1832a.get(Long.valueOf(m5736j));
    }
}
