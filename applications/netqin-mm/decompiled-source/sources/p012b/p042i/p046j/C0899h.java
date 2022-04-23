package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.inmobi.ads.C8302r;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.h */
/* loaded from: classes-dex2jar.jar:b/i/j/h.class */
public class C0899h extends C0897f {

    /* renamed from: g */
    public final Class<?> f4104g;

    /* renamed from: h */
    public final Constructor<?> f4105h;

    /* renamed from: i */
    public final Method f4106i;

    /* renamed from: j */
    public final Method f4107j;

    /* renamed from: k */
    public final Method f4108k;

    /* renamed from: l */
    public final Method f4109l;

    /* renamed from: m */
    public final Method f4110m;

    public C0899h() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls = null;
        try {
            cls = m35558d();
            constructor = m35557e(cls);
            method5 = m35563b(cls);
            method4 = m35560c(cls);
            method3 = m35556f(cls);
            method2 = m35566a(cls);
            method = mo35554d(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method = null;
            constructor = null;
            method4 = null;
            method3 = null;
            method2 = null;
            method5 = null;
        }
        this.f4104g = cls;
        this.f4105h = constructor;
        this.f4106i = method5;
        this.f4107j = method4;
        this.f4108k = method3;
        this.f4109l = method2;
        this.f4110m = method;
    }

    /* renamed from: b */
    private Object m35564b() {
        try {
            return this.f4105h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35553a(Context context, Resources resources, int i, String str, int i2) {
        if (!m35561c()) {
            return super.mo35553a(context, resources, i, str, i2);
        }
        Object b = m35564b();
        if (b == null) {
            return null;
        }
        if (!m35567a(context, b, str, 0, -1, -1, null)) {
            m35562b(b);
            return null;
        } else if (!m35559c(b)) {
            return null;
        } else {
            return mo35555a(b);
        }
    }

    @Override // p012b.p042i.p046j.C0897f, p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35552a(Context context, CancellationSignal cancellationSignal, C0924b.C0930f[] fVarArr, int i) {
        Typeface a;
        if (fVarArr.length < 1) {
            return null;
        }
        if (!m35561c()) {
            C0924b.C0930f a2 = mo35546a(fVarArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.m35471c(), C8302r.f32303d, cancellationSignal);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a2.m35470d()).setItalic(a2.m35469e()).build();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
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
        } else {
            Map<Uri, ByteBuffer> a3 = C0924b.m35483a(context, fVarArr, cancellationSignal);
            Object b = m35564b();
            if (b == null) {
                return null;
            }
            boolean z = false;
            for (C0924b.C0930f fVar : fVarArr) {
                ByteBuffer byteBuffer = a3.get(fVar.m35471c());
                if (byteBuffer != null) {
                    if (!m35565a(b, byteBuffer, fVar.m35472b(), fVar.m35470d(), fVar.m35469e() ? 1 : 0)) {
                        m35562b(b);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                m35562b(b);
                return null;
            } else if (m35559c(b) && (a = mo35555a(b)) != null) {
                return Typeface.create(a, i);
            } else {
                return null;
            }
        }
    }

    @Override // p012b.p042i.p046j.C0897f, p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35551a(Context context, C0874c.C0876b bVar, Resources resources, int i) {
        C0874c.C0877c[] a;
        if (!m35561c()) {
            return super.mo35551a(context, bVar, resources, i);
        }
        Object b = m35564b();
        if (b == null) {
            return null;
        }
        for (C0874c.C0877c cVar : bVar.m35654a()) {
            if (!m35567a(context, b, cVar.m35653a(), cVar.m35651c(), cVar.m35649e(), cVar.m35648f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.m35650d()))) {
                m35562b(b);
                return null;
            }
        }
        if (!m35559c(b)) {
            return null;
        }
        return mo35555a(b);
    }

    /* renamed from: a */
    public Typeface mo35555a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f4104g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f4110m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    public Method m35566a(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: a */
    public final boolean m35567a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f4106i.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: a */
    public final boolean m35565a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f4107j.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    public Method m35563b(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        Class<?> cls3 = Boolean.TYPE;
        Class<?> cls4 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, cls3, cls4, cls4, cls4, FontVariationAxis[].class);
    }

    /* renamed from: b */
    public final void m35562b(Object obj) {
        try {
            this.f4109l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    /* renamed from: c */
    public Method m35560c(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: c */
    public final boolean m35561c() {
        if (this.f4106i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f4106i != null;
    }

    /* renamed from: c */
    public final boolean m35559c(Object obj) {
        try {
            return ((Boolean) this.f4108k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: d */
    public Class<?> m35558d() throws ClassNotFoundException {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: d */
    public Method mo35554d(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: e */
    public Constructor<?> m35557e(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }

    /* renamed from: f */
    public Method m35556f(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("freeze", new Class[0]);
    }
}
