package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.res.C0796c;
import androidx.core.p033c.C0772b;
import androidx.p023b.C0441g;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: androidx.core.graphics.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/f.class */
final class C0847f extends C0851j {

    /* renamed from: a */
    private static final Class<?> f3604a;

    /* renamed from: b */
    private static final Constructor<?> f3605b;

    /* renamed from: c */
    private static final Method f3606c;

    /* renamed from: d */
    private static final Method f3607d;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        f3605b = constructor;
        f3604a = cls;
        f3606c = method2;
        f3607d = method;
    }

    /* renamed from: a */
    private static Typeface m44330a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f3604a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3607d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m44331a() {
        Method method = f3606c;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    /* renamed from: a */
    private static boolean m44329a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f3606c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private static Object m44328b() {
        try {
            return f3605b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44318a(Context context, CancellationSignal cancellationSignal, C0772b.C0778b[] c0778bArr, int i) {
        Object m44328b = m44328b();
        if (m44328b == null) {
            return null;
        }
        C0441g c0441g = new C0441g();
        for (C0772b.C0778b c0778b : c0778bArr) {
            Uri uri = c0778b.f3449a;
            ByteBuffer byteBuffer = (ByteBuffer) c0441g.get(uri);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C0855k.m44308a(context, (CancellationSignal) null, uri);
                c0441g.put(uri, byteBuffer2);
            }
            if (byteBuffer2 == null || !m44329a(m44328b, byteBuffer2, c0778b.f3450b, c0778b.f3451c, c0778b.f3452d)) {
                return null;
            }
        }
        Typeface m44330a = m44330a(m44328b);
        if (m44330a != null) {
            return Typeface.create(m44330a, i);
        }
        return null;
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44317a(Context context, C0796c.C0798b c0798b, Resources resources, int i) {
        C0796c.C0799c[] c0799cArr;
        Object m44328b = m44328b();
        if (m44328b == null) {
            return null;
        }
        for (C0796c.C0799c c0799c : c0798b.f3490a) {
            ByteBuffer m44309a = C0855k.m44309a(context, resources, c0799c.f3496f);
            if (m44309a == null || !m44329a(m44328b, m44309a, c0799c.f3495e, c0799c.f3492b, c0799c.f3493c)) {
                return null;
            }
        }
        return m44330a(m44328b);
    }
}
