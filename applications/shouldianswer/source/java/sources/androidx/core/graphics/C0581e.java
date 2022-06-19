package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p020d.C0465b;
import androidx.p014c.C0387g;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: androidx.core.graphics.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/e.class */
class C0581e extends C0584h {

    /* renamed from: a */
    private static final Class f1954a;

    /* renamed from: b */
    private static final Constructor f1955b;

    /* renamed from: c */
    private static final Method f1956c;

    /* renamed from: d */
    private static final Method f1957d;

    static {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Class<?> cls;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, Integer.TYPE, List.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            method2 = null;
            method = null;
            cls = null;
            constructor = null;
        }
        f1955b = constructor;
        f1954a = cls;
        f1956c = method2;
        f1957d = method;
    }

    /* renamed from: a */
    private static Typeface m6110a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f1954a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f1957d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m6111a() {
        if (f1956c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f1956c != null;
    }

    /* renamed from: a */
    private static boolean m6109a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f1956c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private static Object m6108b() {
        try {
            return f1955b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6092a(Context context, CancellationSignal cancellationSignal, C0465b.C0471b[] c0471bArr, int i) {
        Object m6108b = m6108b();
        if (m6108b == null) {
            return null;
        }
        C0387g c0387g = new C0387g();
        for (C0465b.C0471b c0471b : c0471bArr) {
            Uri m6523a = c0471b.m6523a();
            ByteBuffer byteBuffer = (ByteBuffer) c0387g.get(m6523a);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C0588i.m6075a(context, cancellationSignal, m6523a);
                c0387g.put(m6523a, byteBuffer2);
            }
            if (byteBuffer2 == null || !m6109a(m6108b, byteBuffer2, c0471b.m6522b(), c0471b.m6521c(), c0471b.m6520d())) {
                return null;
            }
        }
        Typeface m6110a = m6110a(m6108b);
        if (m6110a != null) {
            return Typeface.create(m6110a, i);
        }
        return null;
    }

    @Override // androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6091a(Context context, C0412c.C0414b c0414b, Resources resources, int i) {
        C0412c.C0415c[] m6719a;
        Object m6108b = m6108b();
        if (m6108b == null) {
            return null;
        }
        for (C0412c.C0415c c0415c : c0414b.m6719a()) {
            ByteBuffer m6076a = C0588i.m6076a(context, resources, c0415c.m6713f());
            if (m6076a == null || !m6109a(m6108b, m6076a, c0415c.m6714e(), c0415c.m6717b(), c0415c.m6716c())) {
                return null;
            }
        }
        return m6110a(m6108b);
    }
}
