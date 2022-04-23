package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
import p012b.p035f.C0793g;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.g */
/* loaded from: classes-dex2jar.jar:b/i/j/g.class */
public class C0898g extends C0902k {

    /* renamed from: b */
    public static final Class<?> f4100b;

    /* renamed from: c */
    public static final Constructor<?> f4101c;

    /* renamed from: d */
    public static final Method f4102d;

    /* renamed from: e */
    public static final Method f4103e;

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
        f4101c = constructor;
        f4100b = cls;
        f4102d = method2;
        f4103e = method;
    }

    /* renamed from: a */
    public static Typeface m35570a(Object obj) {
        try {
            Object newInstance = Array.newInstance(f4100b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f4103e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static boolean m35571a() {
        if (f4102d == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f4102d != null;
    }

    /* renamed from: a */
    public static boolean m35569a(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f4102d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    public static Object m35568b() {
        try {
            return f4101c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35552a(Context context, CancellationSignal cancellationSignal, C0924b.C0930f[] fVarArr, int i) {
        Object b = m35568b();
        if (b == null) {
            return null;
        }
        C0793g gVar = new C0793g();
        for (C0924b.C0930f fVar : fVarArr) {
            Uri c = fVar.m35471c();
            ByteBuffer byteBuffer = (ByteBuffer) gVar.get(c);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C0906l.m35535a(context, cancellationSignal, c);
                gVar.put(c, byteBuffer2);
            }
            if (byteBuffer2 == null || !m35569a(b, byteBuffer2, fVar.m35472b(), fVar.m35470d(), fVar.m35469e())) {
                return null;
            }
        }
        Typeface a = m35570a(b);
        if (a == null) {
            return null;
        }
        return Typeface.create(a, i);
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35551a(Context context, C0874c.C0876b bVar, Resources resources, int i) {
        C0874c.C0877c[] a;
        Object b = m35568b();
        if (b == null) {
            return null;
        }
        for (C0874c.C0877c cVar : bVar.m35654a()) {
            ByteBuffer a2 = C0906l.m35536a(context, resources, cVar.m35652b());
            if (a2 == null || !m35569a(b, a2, cVar.m35651c(), cVar.m35649e(), cVar.m35648f())) {
                return null;
            }
        }
        return m35570a(b);
    }
}
