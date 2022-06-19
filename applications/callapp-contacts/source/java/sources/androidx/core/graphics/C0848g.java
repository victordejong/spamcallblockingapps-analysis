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
import androidx.core.content.res.C0796c;
import androidx.core.p033c.C0772b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* renamed from: androidx.core.graphics.g */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/g.class */
public class C0848g extends C0846e {

    /* renamed from: a */
    protected final Class<?> f3608a;

    /* renamed from: b */
    protected final Constructor<?> f3609b;

    /* renamed from: c */
    protected final Method f3610c;

    /* renamed from: d */
    protected final Method f3611d;

    /* renamed from: e */
    protected final Method f3612e;

    /* renamed from: f */
    protected final Method f3613f;

    /* renamed from: g */
    protected final Method f3614g;

    public C0848g() {
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
            method5 = cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            method4 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            method3 = cls.getMethod("freeze", new Class[0]);
            method2 = cls.getMethod("abortCreation", new Class[0]);
            method = mo44321a(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            constructor = null;
            method5 = null;
            method3 = null;
            method4 = null;
            method2 = null;
            method = null;
            cls = null;
        }
        this.f3608a = cls;
        this.f3609b = constructor;
        this.f3610c = method5;
        this.f3611d = method4;
        this.f3612e = method3;
        this.f3613f = method2;
        this.f3614g = method;
    }

    /* renamed from: a */
    private boolean m44327a() {
        if (this.f3610c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f3610c != null;
    }

    /* renamed from: a */
    private boolean m44326a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3610c.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: a */
    private boolean m44325a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f3611d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: b */
    private Object m44324b() {
        try {
            return this.f3609b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: b */
    private boolean m44323b(Object obj) {
        try {
            return ((Boolean) this.f3612e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: c */
    private void m44322c(Object obj) {
        try {
            this.f3613f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44319a(Context context, Resources resources, int i, String str, int i2) {
        if (!m44327a()) {
            return super.mo44319a(context, resources, i, str, i2);
        }
        Object m44324b = m44324b();
        if (m44324b == null) {
            return null;
        }
        if (!m44326a(context, m44324b, str, 0, -1, -1, null)) {
            m44322c(m44324b);
            return null;
        } else if (m44323b(m44324b)) {
            return mo44320a(m44324b);
        } else {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0846e, androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44318a(Context context, CancellationSignal cancellationSignal, C0772b.C0778b[] c0778bArr, int i) {
        Typeface mo44320a;
        if (c0778bArr.length <= 0) {
            return null;
        }
        if (!m44327a()) {
            C0772b.C0778b a = mo44314a(c0778bArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a.f3449a, "r", null);
                if (openFileDescriptor == null) {
                    if (openFileDescriptor == null) {
                        return null;
                    }
                    openFileDescriptor.close();
                    return null;
                }
                Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a.f3451c).setItalic(a.f3452d).build();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return build;
            } catch (IOException e) {
                return null;
            }
        }
        Map<Uri, ByteBuffer> m44516a = C0772b.m44516a(context, c0778bArr, (CancellationSignal) null);
        Object m44324b = m44324b();
        if (m44324b == null) {
            return null;
        }
        int length = c0778bArr.length;
        boolean z = false;
        int i2 = 0;
        while (i2 < length) {
            C0772b.C0778b c0778b = c0778bArr[i2];
            ByteBuffer byteBuffer = m44516a.get(c0778b.f3449a);
            if (byteBuffer != null) {
                if (!m44325a(m44324b, byteBuffer, c0778b.f3450b, c0778b.f3451c, c0778b.f3452d ? 1 : 0)) {
                    m44322c(m44324b);
                    return null;
                }
                z = true;
            }
            i2++;
            z = z;
        }
        if (!z) {
            m44322c(m44324b);
            return null;
        } else if (!m44323b(m44324b) || (mo44320a = mo44320a(m44324b)) == null) {
            return null;
        } else {
            return Typeface.create(mo44320a, i);
        }
    }

    @Override // androidx.core.graphics.C0846e, androidx.core.graphics.C0851j
    /* renamed from: a */
    public final Typeface mo44317a(Context context, C0796c.C0798b c0798b, Resources resources, int i) {
        C0796c.C0799c[] c0799cArr;
        if (!m44327a()) {
            return super.mo44317a(context, c0798b, resources, i);
        }
        Object m44324b = m44324b();
        if (m44324b == null) {
            return null;
        }
        for (C0796c.C0799c c0799c : c0798b.f3490a) {
            if (!m44326a(context, m44324b, c0799c.f3491a, c0799c.f3495e, c0799c.f3492b, c0799c.f3493c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0799c.f3494d))) {
                m44322c(m44324b);
                return null;
            }
        }
        if (m44323b(m44324b)) {
            return mo44320a(m44324b);
        }
        return null;
    }

    /* renamed from: a */
    protected Typeface mo44320a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f3608a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f3614g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: a */
    protected Method mo44321a(Class<?> cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
