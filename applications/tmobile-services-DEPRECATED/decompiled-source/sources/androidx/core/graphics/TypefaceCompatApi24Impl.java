package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.collection.SimpleArrayMap;
import androidx.core.content.res.FontResourcesParserCompat;
import androidx.core.provider.FontsContractCompat;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.List;
@RequiresApi
@RestrictTo
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/TypefaceCompatApi24Impl.class */
class TypefaceCompatApi24Impl extends TypefaceCompatBaseImpl {

    /* renamed from: b */
    private static final Class<?> f3035b;

    /* renamed from: c */
    private static final Constructor<?> f3036c;

    /* renamed from: d */
    private static final Method f3037d;

    /* renamed from: e */
    private static final Method f3038e;

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
        f3036c = constructor;
        f3035b = cls;
        f3037d = method2;
        f3038e = method;
    }

    /* renamed from: k */
    private static boolean m19553k(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f3037d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: l */
    private static Typeface m19552l(Object obj) {
        try {
            Object newInstance = Array.newInstance(f3035b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3038e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    /* renamed from: m */
    public static boolean m19551m() {
        if (f3037d == null) {
            Log.w("TypefaceCompatApi24Impl", "Unable to collect necessary private methods.Fallback to legacy implementation.");
        }
        return f3037d != null;
    }

    /* renamed from: n */
    private static Object m19550n() {
        try {
            return f3036c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: b */
    public Typeface mo19534b(Context context, FontResourcesParserCompat.FontFamilyFilesResourceEntry fontFamilyFilesResourceEntry, Resources resources, int i) {
        FontResourcesParserCompat.FontFileResourceEntry[] a;
        Object n = m19550n();
        if (n == null) {
            return null;
        }
        for (FontResourcesParserCompat.FontFileResourceEntry fontFileResourceEntry : fontFamilyFilesResourceEntry.m19630a()) {
            ByteBuffer b = TypefaceCompatUtil.m19518b(context, resources, fontFileResourceEntry.m19628b());
            if (b == null || !m19553k(n, b, fontFileResourceEntry.m19627c(), fontFileResourceEntry.m19625e(), fontFileResourceEntry.m19624f())) {
                return null;
            }
        }
        return m19552l(n);
    }

    @Override // androidx.core.graphics.TypefaceCompatBaseImpl
    @Nullable
    /* renamed from: c */
    public Typeface mo19533c(Context context, @Nullable CancellationSignal cancellationSignal, @NonNull FontsContractCompat.FontInfo[] fontInfoArr, int i) {
        Object n = m19550n();
        if (n == null) {
            return null;
        }
        SimpleArrayMap simpleArrayMap = new SimpleArrayMap();
        for (FontsContractCompat.FontInfo fontInfo : fontInfoArr) {
            Uri c = fontInfo.m19411c();
            ByteBuffer byteBuffer = (ByteBuffer) simpleArrayMap.get(c);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = TypefaceCompatUtil.m19514f(context, cancellationSignal, c);
                simpleArrayMap.put(c, byteBuffer2);
            }
            if (byteBuffer2 == null || !m19553k(n, byteBuffer2, fontInfo.m19412b(), fontInfo.m19410d(), fontInfo.m19409e())) {
                return null;
            }
        }
        Typeface l = m19552l(n);
        if (l == null) {
            return null;
        }
        return Typeface.create(l, i);
    }
}
