package p020b.p041h.p042e;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.content.p007d.C0597c;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
import p020b.p041h.p046h.C1556f;
/* renamed from: b.h.e.g */
/* loaded from: classes-dex2jar.jar:b/h/e/g.class */
public class C1531g extends C1529e {

    /* renamed from: g */
    protected final Class<?> f6071g;

    /* renamed from: h */
    protected final Constructor<?> f6072h;

    /* renamed from: i */
    protected final Method f6073i;

    /* renamed from: j */
    protected final Method f6074j;

    /* renamed from: k */
    protected final Method f6075k;

    /* renamed from: l */
    protected final Method f6076l;

    /* renamed from: m */
    protected final Method f6077m;

    public C1531g() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls;
        try {
            cls = m29800y();
            constructor = m29799z(cls);
            method5 = m29802v(cls);
            method4 = m29801w(cls);
            method3 = m29810A(cls);
            method2 = m29803u(cls);
            method = mo29797x(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method5 = null;
            method3 = null;
            method2 = null;
            method4 = null;
            constructor = null;
            method = null;
            cls = null;
        }
        this.f6071g = cls;
        this.f6072h = constructor;
        this.f6073i = method5;
        this.f6074j = method4;
        this.f6075k = method3;
        this.f6076l = method2;
        this.f6077m = method;
    }

    /* renamed from: o */
    private Object m29809o() {
        try {
            return this.f6072h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: p */
    private void m29808p(Object obj) {
        try {
            this.f6076l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    /* renamed from: q */
    private boolean m29807q(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f6073i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: r */
    private boolean m29806r(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f6074j.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: s */
    private boolean m29805s(Object obj) {
        try {
            return ((Boolean) this.f6075k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: t */
    private boolean m29804t() {
        if (this.f6073i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f6073i != null;
    }

    /* renamed from: A */
    protected Method m29810A(Class<?> cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    @Override // p020b.p041h.p042e.C1529e, p020b.p041h.p042e.C1534j
    /* renamed from: b */
    public Typeface mo29795b(Context context, C0597c.C0599b c0599b, Resources resources, int i) {
        C0597c.C0600c[] m33295a;
        if (!m29804t()) {
            return super.mo29795b(context, c0599b, resources, i);
        }
        Object m29809o = m29809o();
        if (m29809o == null) {
            return null;
        }
        for (C0597c.C0600c c0600c : c0599b.m33295a()) {
            if (!m29807q(context, m29809o, c0600c.m33294a(), c0600c.m33292c(), c0600c.m33290e(), c0600c.m33289f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0600c.m33291d()))) {
                m29808p(m29809o);
                return null;
            }
        }
        if (m29805s(m29809o)) {
            return mo29798l(m29809o);
        }
        return null;
    }

    @Override // p020b.p041h.p042e.C1529e, p020b.p041h.p042e.C1534j
    /* renamed from: c */
    public Typeface mo29794c(Context context, CancellationSignal cancellationSignal, C1556f.C1558b[] c1558bArr, int i) {
        Typeface mo29798l;
        if (c1558bArr.length < 1) {
            return null;
        }
        if (!m29804t()) {
            C1556f.C1558b mo29789h = mo29789h(c1558bArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo29789h.m29732d(), "r", cancellationSignal);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(mo29789h.m29731e()).setItalic(mo29789h.m29730f()).build();
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
        Map<Uri, ByteBuffer> m29773h = C1538k.m29773h(context, c1558bArr, cancellationSignal);
        Object m29809o = m29809o();
        if (m29809o == null) {
            return null;
        }
        int length = c1558bArr.length;
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            C1556f.C1558b c1558b = c1558bArr[i2];
            ByteBuffer byteBuffer = m29773h.get(c1558b.m29732d());
            if (byteBuffer != null) {
                if (!m29806r(m29809o, byteBuffer, c1558b.m29733c(), c1558b.m29731e(), c1558b.m29730f() ? 1 : 0)) {
                    m29808p(m29809o);
                    return null;
                }
                z = true;
            }
            i2++;
            z = z;
        }
        if (!z) {
            m29808p(m29809o);
            return null;
        } else if (!m29805s(m29809o) || (mo29798l = mo29798l(m29809o)) == null) {
            return null;
        } else {
            return Typeface.create(mo29798l, i);
        }
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: e */
    public Typeface mo29792e(Context context, Resources resources, int i, String str, int i2) {
        if (!m29804t()) {
            return super.mo29792e(context, resources, i, str, i2);
        }
        Object m29809o = m29809o();
        if (m29809o == null) {
            return null;
        }
        if (!m29807q(context, m29809o, str, 0, -1, -1, null)) {
            m29808p(m29809o);
            return null;
        } else if (m29805s(m29809o)) {
            return mo29798l(m29809o);
        } else {
            return null;
        }
    }

    /* renamed from: l */
    protected Typeface mo29798l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f6071g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f6077m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: u */
    protected Method m29803u(Class<?> cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: v */
    protected Method m29802v(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, Boolean.TYPE, cls2, cls2, cls2, FontVariationAxis[].class);
    }

    /* renamed from: w */
    protected Method m29801w(Class<?> cls) {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: x */
    protected Method mo29797x(Class<?> cls) {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: y */
    protected Class<?> m29800y() {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: z */
    protected Constructor<?> m29799z(Class<?> cls) {
        return cls.getConstructor(new Class[0]);
    }
}
