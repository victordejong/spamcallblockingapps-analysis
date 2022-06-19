package p020b.p041h.p042e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.content.p007d.C0597c;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import p020b.p036e.C1502g;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.e.f */
/* loaded from: classes-dex2jar.jar:b/h/e/f.class */
class C1530f extends C1534j {

    /* renamed from: b */
    private static final Class<?> f6067b;

    /* renamed from: c */
    private static final Constructor<?> f6068c;

    /* renamed from: d */
    private static final Method f6069d;

    /* renamed from: e */
    private static final Method f6070e;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi24Impl", e.getClass().getName(), e);
            cls = null;
            method2 = null;
            method = null;
        }
        f6068c = constructor;
        f6067b = cls;
        f6069d = method;
        f6070e = method2;
    }

    /* renamed from: k */
    private static boolean m29814k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f6069d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: l */
    private static Typeface m29813l(Object obj) {
        try {
            Object newInstance = Array.newInstance(f6067b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f6070e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: m */
    public static boolean m29812m() {
        Method method = f6069d;
        if (method == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return method != null;
    }

    /* renamed from: n */
    private static Object m29811n() {
        try {
            return f6068c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: b */
    public Typeface mo29795b(Context context, C0597c.C0599b c0599b, Resources resources, int i) {
        C0597c.C0600c[] m33295a;
        Object m29811n = m29811n();
        if (m29811n == null) {
            return null;
        }
        for (C0597c.C0600c c0600c : c0599b.m33295a()) {
            ByteBuffer m29779b = C1538k.m29779b(context, resources, c0600c.m33293b());
            if (m29779b == null || !m29814k(m29811n, m29779b, c0600c.m33292c(), c0600c.m33290e(), c0600c.m33289f())) {
                return null;
            }
        }
        return m29813l(m29811n);
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: c */
    public Typeface mo29794c(Context context, CancellationSignal cancellationSignal, C1556f.C1558b[] c1558bArr, int i) {
        Object m29811n = m29811n();
        if (m29811n == null) {
            return null;
        }
        C1502g c1502g = new C1502g();
        for (C1556f.C1558b c1558b : c1558bArr) {
            Uri m29732d = c1558b.m29732d();
            ByteBuffer byteBuffer = (ByteBuffer) c1502g.get(m29732d);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C1538k.m29775f(context, cancellationSignal, m29732d);
                c1502g.put(m29732d, byteBuffer2);
            }
            if (byteBuffer2 == null || !m29814k(m29811n, byteBuffer2, c1558b.m29733c(), c1558b.m29731e(), c1558b.m29730f())) {
                return null;
            }
        }
        Typeface m29813l = m29813l(m29811n);
        if (m29813l != null) {
            return Typeface.create(m29813l, i);
        }
        return null;
    }
}
