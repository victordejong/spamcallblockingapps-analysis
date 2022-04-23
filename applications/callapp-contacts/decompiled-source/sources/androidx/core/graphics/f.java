package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.b.g;
import androidx.core.c.b;
import androidx.core.content.res.c;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/f.class */
final class f extends j {

    /* renamed from: a  reason: collision with root package name */
    private static final Class<?> f1926a;

    /* renamed from: b  reason: collision with root package name */
    private static final Constructor<?> f1927b;

    /* renamed from: c  reason: collision with root package name */
    private static final Method f1928c;

    /* renamed from: d  reason: collision with root package name */
    private static final Method f1929d;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method = null;
            method2 = null;
        }
        f1927b = constructor;
        f1926a = cls;
        f1928c = method2;
        f1929d = method;
    }

    private static Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f1926a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f1929d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    public static boolean a() {
        Method method = f1928c;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    private static boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f1928c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private static Object b() {
        try {
            return f1927b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, CancellationSignal cancellationSignal, b.C0043b[] bVarArr, int i) {
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        g gVar = new g();
        for (b.C0043b bVar : bVarArr) {
            Uri uri = bVar.f1802a;
            ByteBuffer byteBuffer = (ByteBuffer) gVar.get(uri);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = k.a(context, (CancellationSignal) null, uri);
                gVar.put(uri, byteBuffer2);
            }
            if (byteBuffer2 == null || !a(b2, byteBuffer2, bVar.f1803b, bVar.f1804c, bVar.f1805d)) {
                return null;
            }
        }
        Typeface a2 = a(b2);
        if (a2 == null) {
            return null;
        }
        return Typeface.create(a2, i);
    }

    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0045c[] cVarArr;
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        for (c.C0045c cVar : bVar.f1836a) {
            ByteBuffer a2 = k.a(context, resources, cVar.f);
            if (a2 == null || !a(b2, a2, cVar.e, cVar.f1838b, cVar.f1839c)) {
                return null;
            }
        }
        return a(b2);
    }
}
