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
import androidx.core.p017a.p018a.C0441c;
import androidx.core.p023e.C0489b;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* renamed from: androidx.core.graphics.f */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/f.class */
public class C0542f extends C0534d {

    /* renamed from: a */
    protected final Class f2003a;

    /* renamed from: b */
    protected final Constructor f2004b;

    /* renamed from: c */
    protected final Method f2005c;

    /* renamed from: d */
    protected final Method f2006d;

    /* renamed from: e */
    protected final Method f2007e;

    /* renamed from: f */
    protected final Method f2008f;

    /* renamed from: g */
    protected final Method f2009g;

    public C0542f() {
        Method method;
        Method method2;
        Method method3;
        Method method4;
        Method method5;
        Constructor constructor;
        Class cls;
        try {
            cls = m20569a();
            constructor = m20567a(cls);
            method5 = m20564b(cls);
            method4 = m20561c(cls);
            method3 = m20559d(cls);
            method2 = m20558e(cls);
            method = mo20556f(cls);
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi26Impl", "Unable to collect necessary methods for class " + e.getClass().getName(), e);
            method = null;
            method2 = null;
            method3 = null;
            method4 = null;
            method5 = null;
            constructor = null;
            cls = null;
        }
        this.f2003a = cls;
        this.f2004b = constructor;
        this.f2005c = method5;
        this.f2006d = method4;
        this.f2007e = method3;
        this.f2008f = method2;
        this.f2009g = method;
    }

    /* renamed from: a */
    private boolean m20568a(Context context, Object obj, String str, int i, int i2, int i3, FontVariationAxis[] fontVariationAxisArr) {
        boolean z;
        try {
            z = ((Boolean) this.f2005c.invoke(obj, context.getAssets(), str, 0, false, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), fontVariationAxisArr)).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: a */
    private boolean m20566a(Object obj, ByteBuffer byteBuffer, int i, int i2, int i3) {
        boolean z;
        try {
            z = ((Boolean) this.f2006d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Integer.valueOf(i3))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: b */
    private boolean m20565b() {
        if (this.f2005c == null) {
            Log.w("TypefaceCompatApi26Impl", "Unable to collect necessary private methods. Fallback to legacy implementation.");
        }
        return this.f2005c != null;
    }

    /* renamed from: b */
    private boolean m20563b(Object obj) {
        boolean z;
        try {
            z = ((Boolean) this.f2007e.invoke(obj, new Object[0])).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    private Object m20562c() {
        Object obj;
        try {
            obj = this.f2004b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        return obj;
    }

    /* renamed from: c */
    private void m20560c(Object obj) {
        try {
            this.f2008f.invoke(obj, new Object[0]);
        } catch (IllegalAccessException e) {
        } catch (InvocationTargetException e2) {
        }
    }

    @Override // androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20555a(Context context, Resources resources, int i, String str, int i2) {
        Typeface typeface;
        if (!m20565b()) {
            typeface = super.mo20555a(context, resources, i, str, i2);
        } else {
            Object m20562c = m20562c();
            typeface = null;
            if (m20562c != null) {
                if (!m20568a(context, m20562c, str, 0, -1, -1, null)) {
                    m20560c(m20562c);
                    typeface = null;
                } else {
                    typeface = null;
                    if (m20563b(m20562c)) {
                        typeface = mo20557a(m20562c);
                    }
                }
            }
        }
        return typeface;
    }

    @Override // androidx.core.graphics.C0534d, androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20554a(Context context, CancellationSignal cancellationSignal, C0489b.C0495b[] c0495bArr, int i) {
        Typeface create;
        if (c0495bArr.length < 1) {
            create = null;
        } else if (!m20565b()) {
            C0489b.C0495b a = m20548a(c0495bArr, i);
            try {
                ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a.m20703a(), "r", cancellationSignal);
                if (openFileDescriptor == null) {
                    create = null;
                    if (openFileDescriptor != null) {
                        if (0 != 0) {
                            openFileDescriptor.close();
                            create = null;
                        } else {
                            openFileDescriptor.close();
                            create = null;
                        }
                    }
                } else {
                    Typeface build = new Typeface.Builder(openFileDescriptor.getFileDescriptor()).setWeight(a.m20701c()).setItalic(a.m20700d()).build();
                    create = build;
                    if (openFileDescriptor != null) {
                        if (0 != 0) {
                            openFileDescriptor.close();
                            create = build;
                        } else {
                            openFileDescriptor.close();
                            create = build;
                        }
                    }
                }
            } catch (IOException e) {
                create = null;
            }
        } else {
            Map<Uri, ByteBuffer> m20714a = C0489b.m20714a(context, c0495bArr, cancellationSignal);
            Object m20562c = m20562c();
            if (m20562c == null) {
                create = null;
            } else {
                boolean z = false;
                int length = c0495bArr.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        C0489b.C0495b c0495b = c0495bArr[i2];
                        ByteBuffer byteBuffer = m20714a.get(c0495b.m20703a());
                        if (byteBuffer != null) {
                            if (!m20566a(m20562c, byteBuffer, c0495b.m20702b(), c0495b.m20701c(), c0495b.m20700d() ? 1 : 0)) {
                                m20560c(m20562c);
                                create = null;
                                break;
                            }
                            z = true;
                        }
                        i2++;
                    } else if (!z) {
                        m20560c(m20562c);
                        create = null;
                    } else if (!m20563b(m20562c)) {
                        create = null;
                    } else {
                        Typeface mo20557a = mo20557a(m20562c);
                        create = mo20557a == null ? null : Typeface.create(mo20557a, i);
                    }
                }
            }
        }
        return create;
    }

    @Override // androidx.core.graphics.C0534d, androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20553a(Context context, C0441c.C0443b c0443b, Resources resources, int i) {
        Typeface mo20557a;
        if (!m20565b()) {
            mo20557a = super.mo20553a(context, c0443b, resources, i);
        } else {
            Object m20562c = m20562c();
            if (m20562c == null) {
                mo20557a = null;
            } else {
                C0441c.C0444c[] m20865a = c0443b.m20865a();
                int length = m20865a.length;
                int i2 = 0;
                while (true) {
                    if (i2 < length) {
                        C0441c.C0444c c0444c = m20865a[i2];
                        if (!m20568a(context, m20562c, c0444c.m20864a(), c0444c.m20860e(), c0444c.m20863b(), c0444c.m20862c() ? 1 : 0, FontVariationAxis.fromFontVariationSettings(c0444c.m20861d()))) {
                            m20560c(m20562c);
                            mo20557a = null;
                            break;
                        }
                        i2++;
                    } else {
                        mo20557a = !m20563b(m20562c) ? null : mo20557a(m20562c);
                    }
                }
            }
        }
        return mo20557a;
    }

    /* renamed from: a */
    protected Typeface mo20557a(Object obj) {
        Typeface typeface;
        try {
            Object newInstance = Array.newInstance(this.f2003a, 1);
            Array.set(newInstance, 0, obj);
            typeface = (Typeface) this.f2009g.invoke(null, newInstance, -1, -1);
        } catch (IllegalAccessException | InvocationTargetException e) {
            typeface = null;
        }
        return typeface;
    }

    /* renamed from: a */
    protected Class m20569a() {
        return Class.forName("android.graphics.FontFamily");
    }

    /* renamed from: a */
    protected Constructor m20567a(Class cls) {
        return cls.getConstructor(new Class[0]);
    }

    /* renamed from: b */
    protected Method m20564b(Class cls) {
        return cls.getMethod("addFontFromAssetManager", AssetManager.class, String.class, Integer.TYPE, Boolean.TYPE, Integer.TYPE, Integer.TYPE, Integer.TYPE, FontVariationAxis[].class);
    }

    /* renamed from: c */
    protected Method m20561c(Class cls) {
        return cls.getMethod("addFontFromBuffer", ByteBuffer.class, Integer.TYPE, FontVariationAxis[].class, Integer.TYPE, Integer.TYPE);
    }

    /* renamed from: d */
    protected Method m20559d(Class cls) {
        return cls.getMethod("freeze", new Class[0]);
    }

    /* renamed from: e */
    protected Method m20558e(Class cls) {
        return cls.getMethod("abortCreation", new Class[0]);
    }

    /* renamed from: f */
    protected Method mo20556f(Class cls) {
        Method declaredMethod = Typeface.class.getDeclaredMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass(), Integer.TYPE, Integer.TYPE);
        declaredMethod.setAccessible(true);
        return declaredMethod;
    }
}
