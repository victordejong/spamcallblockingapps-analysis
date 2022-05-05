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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
@RequiresApi
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatApi26Impl.class */
public class TypefaceCompatApi26Impl extends TypefaceCompatApi21Impl {

    /* renamed from: g */
    protected final Class<?> f3039g;

    /* renamed from: h */
    protected final Constructor<?> f3040h;

    /* renamed from: i */
    protected final Method f3041i;

    /* renamed from: j */
    protected final Method f3042j;

    /* renamed from: k */
    protected final Method f3043k;

    /* renamed from: l */
    protected final Method f3044l;

    /* renamed from: m */
    protected final Method f3045m;

    public TypefaceCompatApi26Impl() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls = null;
        try {
            cls = m19539y();
            constructor = m19538z(cls);
            method5 = m19541v(cls);
            method4 = m19540w(cls);
            method3 = m19549A(cls);
            method2 = m19542u(cls);
            method = mo19536x(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            constructor = null;
            method4 = null;
            method2 = null;
            method3 = null;
            method5 = null;
            method = null;
        }
        this.f3039g = cls;
        this.f3040h = constructor;
        this.f3041i = method5;
        this.f3042j = method4;
        this.f3043k = method3;
        this.f3044l = method2;
        this.f3045m = method;
    }

    @Nullable
    /* renamed from: o */
    private Object m19548o() {
        try {
            return this.f3040h.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: p */
    private void m19547p(Object obj) {
        try {
            this.f3044l.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    /* renamed from: q */
    private boolean m19546q(Context context, Object obj, String str, int i, int i2, int i3, @Nullable FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f3041i.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: r */
    private boolean m19545r(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f3042j.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: s */
    private boolean m19544s(Object obj) {
        try {
            return ((Boolean) this.f3043k.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: t */
    private boolean m19543t() {
        if (this.f3041i == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f3041i != null;
    }

    /* renamed from: A */
    protected Method m19549A(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("freeze", new Class[0]);
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: b */
    public Typeface mo19534b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry[] a;
        if (!m19543t()) {
            return super.mo19534b(context, fontFamilyFilesResourceEntry, resources, i);
        }
        Object o = m19548o();
        if (o == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.m19630a()) {
            if (!m19546q(context, o, fontFileResourceEntry.m19629a(), fontFileResourceEntry.m19627c(), fontFileResourceEntry.m19625e(), fontFileResourceEntry.m19624f() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(fontFileResourceEntry.m19626d()))) {
                m19547p(o);
                return null;
            }
        }
        if (!m19544s(o)) {
            return null;
        }
        return mo19537l(o);
    }

    @Override // androidx.core.graphics.TypefaceCompatApi21Impl, androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: c */
    public Typeface mo19533c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Typeface l;
        if (fontInfoArr.length < 1) {
            return null;
        }
        if (!m19543t()) {
            FontsContractCompat.FontInfo h = mo19528h(fontInfoArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(h.m19411c(), "r", cancellationSignal);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(h.m19410d()).setItalic(h.m19409e()).build();
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
            Map<Uri, ByteBuffer> j = FontsContractCompat.m19420j(context, fontInfoArr, cancellationSignal);
            Object o = m19548o();
            if (o == null) {
                return null;
            }
            boolean z = false;
            for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
                ByteBuffer byteBuffer = j.get(fontInfo.m19411c());
                if (byteBuffer != null) {
                    if (!m19545r(o, byteBuffer, fontInfo.m19412b(), fontInfo.m19410d(), fontInfo.m19409e() ? 1 : 0)) {
                        m19547p(o);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                m19547p(o);
                return null;
            } else if (m19544s(o) && (l = mo19537l(o)) != null) {
                return Typeface.create(l, i);
            } else {
                return null;
            }
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: e */
    public Typeface mo19531e(Context context, Resources resources, int i, String str, int i2) {
        if (!m19543t()) {
            return super.mo19531e(context, resources, i, str, i2);
        }
        Object o = m19548o();
        if (o == null) {
            return null;
        }
        if (!m19546q(context, o, str, 0, -1, -1, null)) {
            m19547p(o);
            return null;
        } else if (!m19544s(o)) {
            return null;
        } else {
            return mo19537l(o);
        }
    }

    @Nullable
    /* renamed from: l */
    protected Typeface mo19537l(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f3039g, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.f3045m.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: u */
    protected Method m19542u(Class<?> cls) throws NoSuchMethodException {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: v */
    protected Method m19541v(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        Class<?> cls3 = Boolean.TYPE;
        Class<?> cls4 = Integer.TYPE;
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, cls2, cls3, cls4, cls4, cls4, FontVariationAxis[].class);
    }

    /* renamed from: w */
    protected Method m19540w(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Integer.TYPE;
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, cls2, FontVariationAxis[].class, cls2, cls2);
    }

    /* renamed from: x */
    protected Method mo19536x(Class<?> cls) throws NoSuchMethodException {
        Class<?> cls2 = Array.newInstance(cls, 1).getClass();
        Class cls3 = Integer.TYPE;
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", cls2, cls3, cls3);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }

    /* renamed from: y */
    protected Class<?> m19539y() throws ClassNotFoundException {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: z */
    protected Constructor<?> m19538z(Class<?> cls) throws NoSuchMethodException {
        return cls.getConstructor(new Class[0]);
    }
}
