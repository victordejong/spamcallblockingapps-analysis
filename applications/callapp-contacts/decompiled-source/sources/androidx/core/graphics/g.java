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
import androidx.core.c.b;
import androidx.core.content.res.c;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/g.class */
public class g extends e {

    /* renamed from: a  reason: collision with root package name */
    protected final Class<?> f1930a;

    /* renamed from: b  reason: collision with root package name */
    protected final Constructor<?> f1931b;

    /* renamed from: c  reason: collision with root package name */
    protected final Method f1932c;

    /* renamed from: d  reason: collision with root package name */
    protected final Method f1933d;
    protected final Method e;
    protected final Method f;
    protected final Method g;

    public g() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor<?> constructor;
        Class<?> cls = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method5 = cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
            method4 = cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
            method3 = cls.getMethod("freeze", new Class[0]);
            method2 = cls.getMethod("abortCreation", new Class[0]);
            method = a(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            constructor = null;
            method5 = null;
            method3 = null;
            method4 = null;
            method2 = null;
            method = null;
        }
        this.f1930a = cls;
        this.f1931b = constructor;
        this.f1932c = method5;
        this.f1933d = method4;
        this.e = method3;
        this.f = method2;
        this.g = method;
    }

    private boolean a() {
        if (this.f1932c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f1932c != null;
    }

    private boolean a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        try {
            return ((Boolean) this.f1932c.invoke(obj, context.getAssets(), str, 0, Boolean.FALSE, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private boolean a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        try {
            return ((Boolean) this.f1933d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private Object b() {
        try {
            return this.f1931b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            return null;
        }
    }

    private boolean b(Object obj) {
        try {
            return ((Boolean) this.e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    private void c(Object obj) {
        try {
            this.f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException | InvocationTargetException e) {
        }
    }

    @Override // androidx.core.graphics.j
    public final Typeface a(Context context, Resources resources, int i, String str, int i2) {
        if (!a()) {
            return super.a(context, resources, i, str, i2);
        }
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        if (!a(context, b2, str, 0, -1, -1, null)) {
            c(b2);
            return null;
        } else if (!b(b2)) {
            return null;
        } else {
            return a(b2);
        }
    }

    @Override // androidx.core.graphics.e, androidx.core.graphics.j
    public final Typeface a(Context context, CancellationSignal cancellationSignal, b.C0043b[] bVarArr, int i) {
        Typeface a2;
        if (bVarArr.length <= 0) {
            return null;
        }
        if (!a()) {
            b.C0043b a3 = a(bVarArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a3.f1802a, "r", null);
                if (openFileDescriptor != null) {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a3.f1804c).setItalic(a3.f1805d).build();
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
            Map<Uri, ByteBuffer> a4 = b.a(context, bVarArr, (CancellationSignal) null);
            Object b2 = b();
            if (b2 == null) {
                return null;
            }
            boolean z = false;
            for (b.C0043b bVar : bVarArr) {
                ByteBuffer byteBuffer = a4.get(bVar.f1802a);
                if (byteBuffer != null) {
                    if (!a(b2, byteBuffer, bVar.f1803b, bVar.f1804c, bVar.f1805d ? 1 : 0)) {
                        c(b2);
                        return null;
                    }
                    z = true;
                }
            }
            if (!z) {
                c(b2);
                return null;
            } else if (b(b2) && (a2 = a(b2)) != null) {
                return Typeface.create(a2, i);
            } else {
                return null;
            }
        }
    }

    @Override // androidx.core.graphics.e, androidx.core.graphics.j
    public final Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0045c[] cVarArr;
        if (!a()) {
            return super.a(context, bVar, resources, i);
        }
        Object b2 = b();
        if (b2 == null) {
            return null;
        }
        for (c.C0045c cVar : bVar.f1836a) {
            if (!a(context, b2, cVar.f1837a, cVar.e, cVar.f1838b, cVar.f1839c ? 1 : 0, FontVariationAxis.fromFontVariationSettings(cVar.f1840d))) {
                c(b2);
                return null;
            }
        }
        if (!b(b2)) {
            return null;
        }
        return a(b2);
    }

    protected Typeface a(Object obj) {
        try {
            Object newInstance = Array.newInstance(this.f1930a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) this.g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    protected Method a(Class<?> cls) throws NoSuchMethodException {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
