package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.res.C0796c;
import androidx.core.p033c.C0772b;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: androidx.core.graphics.j */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/j.class */
public class C0851j {

    /* renamed from: h */
    ConcurrentHashMap<Long, C0796c.C0798b> f3615h = new ConcurrentHashMap<>();

    /* renamed from: androidx.core.graphics.j$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/graphics/j$a.class */
    public interface AbstractC0854a<T> {
        /* renamed from: a */
        boolean mo44312a(T t);

        /* renamed from: b */
        int mo44311b(T t);
    }

    /* renamed from: a */
    public static long m44315a(Typeface typeface) {
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
    private static <T> T m44313a(T[] tArr, int i, AbstractC0854a<T> abstractC0854a) {
        int i2;
        int i3 = (i & 1) == 0 ? 400 : 700;
        boolean z = (i & 2) != 0;
        T t = null;
        int i4 = Integer.MAX_VALUE;
        int length = tArr.length;
        int i5 = 0;
        while (i5 < length) {
            T t2 = tArr[i5];
            int abs = (Math.abs(abstractC0854a.mo44311b(t2) - i3) * 2) + (abstractC0854a.mo44312a(t2) == z ? 0 : 1);
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

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo44319a(Context context, Resources resources, int i, String str, int i2) {
        File m44310a = C0855k.m44310a(context);
        if (m44310a == null) {
            return null;
        }
        try {
            if (!C0855k.m44305a(m44310a, resources, i)) {
                m44310a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m44310a.getPath());
            m44310a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m44310a.delete();
            return null;
        } catch (Throwable th) {
            m44310a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public Typeface mo44318a(Context context, CancellationSignal cancellationSignal, C0772b.C0778b[] c0778bArr, int i) {
        InputStream inputStream;
        Throwable th;
        if (c0778bArr.length <= 0) {
            return null;
        }
        try {
            inputStream = context.getContentResolver().openInputStream(mo44314a(c0778bArr, i).f3449a);
        } catch (IOException e) {
            inputStream = null;
        } catch (Throwable th2) {
            th = th2;
            inputStream = null;
        }
        try {
            Typeface mo44316a = mo44316a(context, inputStream);
            C0855k.m44307a(inputStream);
            return mo44316a;
        } catch (IOException e2) {
            C0855k.m44307a(inputStream);
            return null;
        } catch (Throwable th3) {
            th = th3;
            C0855k.m44307a(inputStream);
            throw th;
        }
    }

    /* renamed from: a */
    public Typeface mo44317a(Context context, C0796c.C0798b c0798b, Resources resources, int i) {
        C0796c.C0799c c0799c = (C0796c.C0799c) m44313a(c0798b.f3490a, i, new AbstractC0854a<C0796c.C0799c>() { // from class: androidx.core.graphics.j.2
            @Override // androidx.core.graphics.C0851j.AbstractC0854a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ boolean mo44312a(C0796c.C0799c c0799c2) {
                return c0799c2.f3493c;
            }

            @Override // androidx.core.graphics.C0851j.AbstractC0854a
            /* renamed from: b */
            public final /* bridge */ /* synthetic */ int mo44311b(C0796c.C0799c c0799c2) {
                return c0799c2.f3492b;
            }
        });
        if (c0799c == null) {
            return null;
        }
        Typeface m44379a = C0839d.m44379a(context, resources, c0799c.f3496f, c0799c.f3491a, i);
        long m44315a = m44315a(m44379a);
        if (m44315a != 0) {
            this.f3615h.put(Long.valueOf(m44315a), c0798b);
        }
        return m44379a;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public Typeface mo44316a(Context context, InputStream inputStream) {
        File m44310a = C0855k.m44310a(context);
        if (m44310a == null) {
            return null;
        }
        try {
            if (!C0855k.m44304a(m44310a, inputStream)) {
                m44310a.delete();
                return null;
            }
            Typeface createFromFile = Typeface.createFromFile(m44310a.getPath());
            m44310a.delete();
            return createFromFile;
        } catch (RuntimeException e) {
            m44310a.delete();
            return null;
        } catch (Throwable th) {
            m44310a.delete();
            throw th;
        }
    }

    /* renamed from: a */
    public C0772b.C0778b mo44314a(C0772b.C0778b[] c0778bArr, int i) {
        return (C0772b.C0778b) m44313a(c0778bArr, i, new AbstractC0854a<C0772b.C0778b>() { // from class: androidx.core.graphics.j.1
            @Override // androidx.core.graphics.C0851j.AbstractC0854a
            /* renamed from: a */
            public final /* bridge */ /* synthetic */ boolean mo44312a(C0772b.C0778b c0778b) {
                return c0778b.f3452d;
            }

            @Override // androidx.core.graphics.C0851j.AbstractC0854a
            /* renamed from: b */
            public final /* bridge */ /* synthetic */ int mo44311b(C0772b.C0778b c0778b) {
                return c0778b.f3451c;
            }
        });
    }
}
