package p087f0;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import p076e0.C2505d;
import p130j0.C3158l;
/* renamed from: f0.h */
/* loaded from: classes-dex2jar.jar:f0/h.class */
public class C2703h extends C2701f {

    /* renamed from: g */
    public final Class<?> f9291g;

    /* renamed from: h */
    public final Constructor<?> f9292h;

    /* renamed from: i */
    public final Method f9293i;

    /* renamed from: j */
    public final Method f9294j;

    /* renamed from: k */
    public final Method f9295k;

    /* renamed from: l */
    public final Method f9296l;

    /* renamed from: m */
    public final Method f9297m;

    public C2703h() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method5 = m3231n(cls);
            method4 = m3230o(cls);
            method3 = cls.getMethod("freeze", new Class[0]);
            method2 = cls.getMethod("abortCreation", new Class[0]);
            method = mo3228p(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            constructor = null;
            method5 = null;
            method3 = null;
            method4 = null;
            method2 = null;
            method = null;
            cls = null;
        }
        this.f9291g = cls;
        this.f9292h = constructor;
        this.f9293i = method5;
        this.f9294j = method4;
        this.f9295k = method3;
        this.f9296l = method2;
        this.f9297m = method;
    }

    /* renamed from: m */
    private Object m3232m() {
        try {
            return this.f9292h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p087f0.C2701f, p087f0.C2706k
    /* renamed from: a */
    public Typeface mo3227a(Context context, C2505d.C2507b c2507b, Resources resources, int i) {
        C2505d.C2508c[] c2508cArr;
        if (!m3233l()) {
            return super.mo3227a(context, c2507b, resources, i);
        }
        Object m3232m = m3232m();
        if (m3232m == null) {
            return null;
        }
        for (C2505d.C2508c c2508c : c2507b.f8762a) {
            if (!m3235i(context, m3232m, c2508c.f8763a, c2508c.f8767e, c2508c.f8764b, c2508c.f8765c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c2508c.f8766d))) {
                m3236h(m3232m);
                return null;
            }
        }
        if (m3234k(m3232m)) {
            return mo3229j(m3232m);
        }
        return null;
    }

    @Override // p087f0.C2701f, p087f0.C2706k
    /* renamed from: b */
    public Typeface mo3226b(Context context, CancellationSignal cancellationSignal, C3158l[] c3158lArr, int i) {
        Typeface mo3229j;
        boolean z;
        if (c3158lArr.length < 1) {
            return null;
        }
        if (!m3233l()) {
            C3158l mo3223e = mo3223e(c3158lArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo3223e.f10621a, "r", cancellationSignal);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(mo3223e.f10623c).setItalic(mo3223e.f10624d).build();
                    openFileDescriptor.close();
                    return build;
                } else if (openFileDescriptor == null) {
                    return null;
                } else {
                    openFileDescriptor.close();
                    return null;
                }
            } catch (IOException e) {
                return null;
            }
        }
        HashMap hashMap = new HashMap();
        for (C3158l c3158l : c3158lArr) {
            if (c3158l.f10625e == 0) {
                Uri uri = c3158l.f10621a;
                if (!hashMap.containsKey(uri)) {
                    hashMap.put(uri, C2707l.m3219d(context, cancellationSignal, uri));
                }
            }
        }
        Map unmodifiableMap = Collections.unmodifiableMap(hashMap);
        Object m3232m = m3232m();
        if (m3232m == null) {
            return null;
        }
        int length = c3158lArr.length;
        int i2 = 0;
        boolean z2 = false;
        while (i2 < length) {
            C3158l c3158l2 = c3158lArr[i2];
            ByteBuffer byteBuffer = (ByteBuffer) unmodifiableMap.get(c3158l2.f10621a);
            if (byteBuffer != null) {
                try {
                    z = ((Boolean) this.f9294j.invoke(m3232m, byteBuffer, Integer.valueOf(c3158l2.f10622b), null, Integer.valueOf(c3158l2.f10623c), Integer.valueOf(c3158l2.f10624d ? 1 : 0))).booleanValue();
                } catch (IllegalAccessException | InvocationTargetException e2) {
                    z = false;
                }
                if (!z) {
                    m3236h(m3232m);
                    return null;
                }
                z2 = true;
            }
            i2++;
            z2 = z2;
        }
        if (!z2) {
            m3236h(m3232m);
            return null;
        } else if (m3234k(m3232m) && (mo3229j = mo3229j(m3232m)) != null) {
            return Typeface.create(mo3229j, i);
        } else {
            return null;
        }
    }

    @Override // p087f0.C2706k
    /* renamed from: d */
    public Typeface mo3224d(Context context, Resources resources, int i, String str, int i2) {
        if (!m3233l()) {
            return super.mo3224d(context, resources, i, str, i2);
        }
        Object m3232m = m3232m();
        if (m3232m == null) {
            return null;
        }
        if (!m3235i(context, m3232m, str, 0, -1, -1, null)) {
            m3236h(m3232m);
            return null;
        } else if (m3234k(m3232m)) {
            return mo3229j(m3232m);
        } else {
            return null;
        }
    }

    /* renamed from: h */
    public final void m3236h(Object obj) {
        try {
            this.f9296l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    /* renamed from: i */
    public final boolean m3235i(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f9293i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: j */
    public Typeface mo3229j(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f9291g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f9297m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: k */
    public final boolean m3234k(Object obj) {
        try {
            return ((Boolean) this.f9295k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: l */
    public final boolean m3233l() {
        if (this.f9293i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f9293i != null;
    }

    /* renamed from: n */
    public Method m3231n(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: o */
    public Method m3230o(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: p */
    public Method mo3228p(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
