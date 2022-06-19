package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.core.p017a.p018a.C0441c;
import androidx.core.p023e.C0489b;
import androidx.p013b.C0386g;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
/* renamed from: androidx.core.graphics.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/e.class */
class C0541e extends C0544h {

    /* renamed from: a */
    private static final Class f1999a;

    /* renamed from: b */
    private static final Constructor f2000b;

    /* renamed from: c */
    private static final Method f2001c;

    /* renamed from: d */
    private static final Method f2002d;

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
            method = null;
            method2 = null;
            constructor = null;
            cls = null;
        }
        f2000b = constructor;
        f1999a = cls;
        f2001c = method2;
        f2002d = method;
    }

    /* renamed from: a */
    private static Typeface m20572a(Object obj) {
        Typeface typeface;
        try {
            Object newInstance = Array.newInstance(f1999a, 1);
            Array.set(newInstance, 0, obj);
            typeface = (Typeface) f2002d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            typeface = null;
        }
        return typeface;
    }

    /* renamed from: a */
    public static boolean m20573a() {
        if (f2001c == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f2001c != null;
    }

    /* renamed from: a */
    private static boolean m20571a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        boolean z2;
        try {
            z2 = ((Boolean) f2001c.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            z2 = false;
        }
        return z2;
    }

    /* renamed from: b */
    private static Object m20570b() {
        Object obj;
        try {
            obj = f2000b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        return obj;
    }

    @Override // androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20554a(Context context, CancellationSignal cancellationSignal, C0489b.C0495b[] c0495bArr, int i) {
        Typeface create;
        Object m20570b = m20570b();
        if (m20570b == null) {
            create = null;
        } else {
            C0386g c0386g = new C0386g();
            int length = c0495bArr.length;
            int i2 = 0;
            while (true) {
                if (i2 < length) {
                    C0489b.C0495b c0495b = c0495bArr[i2];
                    Uri m20703a = c0495b.m20703a();
                    ByteBuffer byteBuffer = (ByteBuffer) c0386g.get(m20703a);
                    ByteBuffer byteBuffer2 = byteBuffer;
                    if (byteBuffer == null) {
                        byteBuffer2 = C0548i.m20537a(context, cancellationSignal, m20703a);
                        c0386g.put(m20703a, byteBuffer2);
                    }
                    if (byteBuffer2 == null) {
                        create = null;
                        break;
                    } else if (!m20571a(m20570b, byteBuffer2, c0495b.m20702b(), c0495b.m20701c(), c0495b.m20700d())) {
                        create = null;
                        break;
                    } else {
                        i2++;
                    }
                } else {
                    Typeface m20572a = m20572a(m20570b);
                    create = m20572a == null ? null : Typeface.create(m20572a, i);
                }
            }
        }
        return create;
    }

    @Override // androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20553a(Context context, C0441c.C0443b c0443b, Resources resources, int i) {
        Typeface m20572a;
        Object m20570b = m20570b();
        if (m20570b != null) {
            C0441c.C0444c[] m20865a = c0443b.m20865a();
            int length = m20865a.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    m20572a = m20572a(m20570b);
                    break;
                }
                C0441c.C0444c c0444c = m20865a[i2];
                ByteBuffer m20538a = C0548i.m20538a(context, resources, c0444c.m20859f());
                m20572a = null;
                if (m20538a == null) {
                    break;
                }
                m20572a = null;
                if (!m20571a(m20570b, m20538a, c0444c.m20860e(), c0444c.m20863b(), c0444c.m20862c())) {
                    break;
                }
                i2++;
            }
        } else {
            m20572a = null;
        }
        return m20572a;
    }
}
