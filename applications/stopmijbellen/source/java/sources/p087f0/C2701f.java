package p087f0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p076e0.C2505d;
import p130j0.C3158l;
/* renamed from: f0.f */
/* loaded from: classes-dex2jar.jar:f0/f.class */
public class C2701f extends C2706k {

    /* renamed from: b */
    public static Class<?> f9282b;

    /* renamed from: c */
    public static Constructor<?> f9283c;

    /* renamed from: d */
    public static Method f9284d;

    /* renamed from: e */
    public static Method f9285e;

    /* renamed from: f */
    public static boolean f9286f = false;

    /* renamed from: f */
    public static boolean m3240f(Object obj, String str, int i, boolean z) {
        m3239g();
        try {
            return ((Boolean) f9284d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: g */
    public static void m3239g() {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Class<?> cls;
        if (f9286f) {
            return;
        }
        f9286f = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            method = null;
            method2 = null;
            cls = null;
            constructor = null;
        }
        f9283c = constructor;
        f9282b = cls;
        f9284d = method2;
        f9285e = method;
    }

    @Override // p087f0.C2706k
    /* renamed from: a */
    public Typeface mo3227a(Context context, C2505d.C2507b c2507b, Resources resources, int i) {
        C2505d.C2508c[] c2508cArr;
        m3239g();
        try {
            Object newInstance = f9283c.newInstance(new Object[0]);
            for (C2505d.C2508c c2508c : c2507b.f8762a) {
                File m3220c = C2707l.m3220c(context);
                if (m3220c == null) {
                    return null;
                }
                try {
                    if (!C2707l.m3222a(m3220c, resources, c2508c.f8768f)) {
                        m3220c.delete();
                        return null;
                    } else if (!m3240f(newInstance, m3220c.getPath(), c2508c.f8764b, c2508c.f8765c)) {
                        m3220c.delete();
                        return null;
                    } else {
                        m3220c.delete();
                    }
                } catch (RuntimeException e) {
                    m3220c.delete();
                    return null;
                } catch (Throwable th) {
                    m3220c.delete();
                    throw th;
                }
            }
            m3239g();
            try {
                Object newInstance2 = Array.newInstance(f9282b, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f9285e.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // p087f0.C2706k
    /* renamed from: b */
    public Typeface mo3226b(Context context, CancellationSignal cancellationSignal, C3158l[] c3158lArr, int i) {
        File file;
        FileInputStream fileInputStream;
        String readlink;
        if (c3158lArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo3223e(c3158lArr, i).f10621a, "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                    return null;
                }
                openFileDescriptor.close();
                return null;
            }
            try {
                readlink = Os.readlink("/proc/self/fd/" + openFileDescriptor.getFd());
            } catch (ErrnoException e) {
            }
            try {
                if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                    file = new File(readlink);
                    if (file != null && file.canRead()) {
                        Typeface createFromFile = Typeface.createFromFile(file);
                        openFileDescriptor.close();
                        return createFromFile;
                    }
                    fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                    Typeface mo3225c = mo3225c(context, fileInputStream);
                    fileInputStream.close();
                    openFileDescriptor.close();
                    return mo3225c;
                }
                Typeface mo3225c2 = mo3225c(context, fileInputStream);
                fileInputStream.close();
                openFileDescriptor.close();
                return mo3225c2;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
            file = null;
            if (file != null) {
                Typeface createFromFile2 = Typeface.createFromFile(file);
                openFileDescriptor.close();
                return createFromFile2;
            }
            fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
        } catch (IOException e2) {
            return null;
        }
    }
}
