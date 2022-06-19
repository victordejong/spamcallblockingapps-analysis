package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.content.res.C0796c;
import androidx.core.p033c.C0772b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.e */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/e.class */
public class C0846e extends C0851j {

    /* renamed from: a */
    private static Class<?> f3599a;

    /* renamed from: b */
    private static Constructor<?> f3600b;

    /* renamed from: c */
    private static Method f3601c;

    /* renamed from: d */
    private static Method f3602d;

    /* renamed from: e */
    private static boolean f3603e = false;

    /* renamed from: a */
    private static Typeface m44334a(Object obj) {
        m44336a();
        try {
            Object newInstance = Array.newInstance(f3599a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f3602d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private static File m44335a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (!OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return null;
            }
            return new File(readlink);
        } catch (ErrnoException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static void m44336a() {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Class<?> cls;
        if (f3603e) {
            return;
        }
        f3603e = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            method2 = null;
            cls = null;
            constructor = null;
        }
        f3600b = constructor;
        f3599a = cls;
        f3601c = method2;
        f3602d = method;
    }

    /* renamed from: a */
    private static boolean m44333a(Object obj, String str, int i, boolean z) {
        m44336a();
        try {
            return ((Boolean) f3601c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static Object m44332b() {
        m44336a();
        try {
            return f3600b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public Typeface mo44318a(Context context, CancellationSignal cancellationSignal, C0772b.C0778b[] c0778bArr, int i) {
        if (c0778bArr.length <= 0) {
            return null;
        }
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
            File m44335a = m44335a(openFileDescriptor);
            if (m44335a != null && m44335a.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(m44335a);
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface mo44316a = super.mo44316a(context, fileInputStream);
            fileInputStream.close();
            if (openFileDescriptor != null) {
                openFileDescriptor.close();
            }
            return mo44316a;
        } catch (IOException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0851j
    /* renamed from: a */
    public Typeface mo44317a(Context context, C0796c.C0798b c0798b, Resources resources, int i) {
        C0796c.C0799c[] c0799cArr;
        Object m44332b = m44332b();
        for (C0796c.C0799c c0799c : c0798b.f3490a) {
            File m44310a = C0855k.m44310a(context);
            if (m44310a == null) {
                return null;
            }
            try {
                if (!C0855k.m44305a(m44310a, resources, c0799c.f3496f)) {
                    m44310a.delete();
                    return null;
                } else if (!m44333a(m44332b, m44310a.getPath(), c0799c.f3492b, c0799c.f3493c)) {
                    m44310a.delete();
                    return null;
                } else {
                    m44310a.delete();
                }
            } catch (RuntimeException e) {
                m44310a.delete();
                return null;
            } catch (Throwable th) {
                m44310a.delete();
                throw th;
            }
        }
        return m44334a(m44332b);
    }
}
