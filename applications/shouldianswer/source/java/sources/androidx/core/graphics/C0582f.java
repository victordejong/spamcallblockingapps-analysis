package androidx.core.graphics;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.fonts.FontVariationAxis;
import android.net.Uri;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p020d.C0465b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* renamed from: androidx.core.graphics.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/f.class */
public class C0582f extends C0574d {

    /* renamed from: a */
    protected final Class f1958a;

    /* renamed from: b */
    protected final Constructor f1959b;

    /* renamed from: c */
    protected final Method f1960c;

    /* renamed from: d */
    protected final Method f1961d;

    /* renamed from: e */
    protected final Method f1962e;

    /* renamed from: f */
    protected final Method f1963f;

    /* renamed from: g */
    protected final Method f1964g;

    public C0582f() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor constructor;
        Class cls = null;
        try {
            Class m6107a = m6107a();
            constructor = m6105a(m6107a);
            method5 = m6102b(m6107a);
            method4 = m6099c(m6107a);
            method3 = m6097d(m6107a);
            method2 = m6096e(m6107a);
            method = mo6094f(m6107a);
            cls = m6107a;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method = null;
            constructor = null;
            method5 = null;
            method4 = null;
            method3 = null;
            method2 = null;
        }
        this.f1958a = cls;
        this.f1959b = constructor;
        this.f1960c = method5;
        this.f1961d = method4;
        this.f1962e = method3;
        this.f1963f = method2;
        this.f1964g = method;
    }

    /* renamed from: a */
    private boolean m6106a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f1960c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: a */
    private boolean m6104a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f1961d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private boolean m6103b() {
        if (this.f1960c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f1960c != null;
    }

    /* renamed from: b */
    private boolean m6101b(Object obj) {
        try {
            return ((Boolean) this.f1962e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: c */
    private Object m6100c() {
        try {
            return this.f1959b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: c */
    private void m6098c(Object obj) {
        try {
            this.f1963f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    @Override // androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6093a(Context context, Resources resources, int i, String str, int i2) {
        if (!m6103b()) {
            return super.mo6093a(context, resources, i, str, i2);
        }
        Object m6100c = m6100c();
        if (m6100c == null) {
            return null;
        }
        if (!m6106a(context, m6100c, str, 0, -1, -1, null)) {
            m6098c(m6100c);
            return null;
        } else if (m6101b(m6100c)) {
            return mo6095a(m6100c);
        } else {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0574d, androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6092a(Context context, CancellationSignal cancellationSignal, C0465b.C0471b[] c0471bArr, int i) {
        Typeface mo6095a;
        if (c0471bArr.length < 1) {
            return null;
        }
        if (!m6103b()) {
            C0465b.C0471b a = m6086a(c0471bArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a.m6523a(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor == null) {
                        return null;
                    }
                    openFileDescriptor.close();
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a.m6521c()).setItalic(a.m6520d()).build();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return build;
            } catch (IOException e) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> m6534a = C0465b.m6534a(context, c0471bArr, cancellationSignal);
        Object m6100c = m6100c();
        if (m6100c == null) {
            return null;
        }
        int length = c0471bArr.length;
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            C0465b.C0471b c0471b = c0471bArr[i2];
            ByteBuffer byteBuffer = m6534a.get(c0471b.m6523a());
            if (byteBuffer != null) {
                if (!m6104a(m6100c, byteBuffer, c0471b.m6522b(), c0471b.m6521c(), c0471b.m6520d() ? 1 : 0)) {
                    m6098c(m6100c);
                    return null;
                }
                z = true;
            }
            i2++;
            z = z;
        }
        if (!z) {
            m6098c(m6100c);
            return null;
        } else if (!m6101b(m6100c) || (mo6095a = mo6095a(m6100c)) == null) {
            return null;
        } else {
            return Typeface.create(mo6095a, i);
        }
    }

    @Override // androidx.core.graphics.C0574d, androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6091a(Context context, C0412c.C0414b c0414b, Resources resources, int i) {
        C0412c.C0415c[] m6719a;
        if (!m6103b()) {
            return super.mo6091a(context, c0414b, resources, i);
        }
        Object m6100c = m6100c();
        if (m6100c == null) {
            return null;
        }
        for (C0412c.C0415c c0415c : c0414b.m6719a()) {
            if (!m6106a(context, m6100c, c0415c.m6718a(), c0415c.m6714e(), c0415c.m6717b(), c0415c.m6716c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0415c.m6715d()))) {
                m6098c(m6100c);
                return null;
            }
        }
        if (m6101b(m6100c)) {
            return mo6095a(m6100c);
        }
        return null;
    }

    /* renamed from: a */
    protected Typeface mo6095a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f1958a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f1964g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    protected Class m6107a() {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: a */
    protected Constructor m6105a(Class cls) {
        return cls.getConstructor(new Class[0]);
    }

    /* renamed from: b */
    protected Method m6102b(Class cls) {
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    /* renamed from: c */
    protected Method m6099c(Class cls) {
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    /* renamed from: d */
    protected Method m6097d(Class cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    /* renamed from: e */
    protected Method m6096e(Class cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: f */
    protected Method mo6094f(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
