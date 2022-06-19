package p1727n3.p1807k.p1812c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.support.p001v4.media.session.MediaSessionCompat;
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
import p1727n3.p1807k.p1809b.p1811d.C26484d;
import p1727n3.p1807k.p1809b.p1811d.C26485e;
import p1727n3.p1807k.p1817f.C26530l;
/* renamed from: n3.k.c.e */
/* loaded from: classes-dex2jar.jar:n3/k/c/e.class */
public class C26498e extends C26502k {

    /* renamed from: b */
    public static Class<?> f74286b;

    /* renamed from: c */
    public static Constructor<?> f74287c;

    /* renamed from: d */
    public static Method f74288d;

    /* renamed from: e */
    public static Method f74289e;

    /* renamed from: f */
    public static boolean f74290f = false;

    /* renamed from: f */
    public static boolean m1737f(Object obj, String str, int i, boolean z) {
        m1736g();
        try {
            return ((Boolean) f74288d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: g */
    public static void m1736g() {
        Method method;
        Method method2;
        Class<?> cls;
        if (f74290f) {
            return;
        }
        f74290f = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            method = null;
            cls = null;
            method2 = null;
        }
        f74287c = constructor;
        f74286b = cls;
        f74288d = method2;
        f74289e = method;
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: a */
    public Typeface mo1733a(Context context, C26484d c26484d, Resources resources, int i) {
        C26485e[] c26485eArr;
        m1736g();
        try {
            Object newInstance = f74287c.newInstance(new Object[0]);
            for (C26485e c26485e : c26484d.f74252a) {
                File m43186x0 = MediaSessionCompat.m43186x0(context);
                if (m43186x0 == null) {
                    return null;
                }
                try {
                    if (!MediaSessionCompat.m43295J(m43186x0, resources, c26485e.f74258f)) {
                        m43186x0.delete();
                        return null;
                    } else if (!m1737f(newInstance, m43186x0.getPath(), c26485e.f74254b, c26485e.f74255c)) {
                        m43186x0.delete();
                        return null;
                    } else {
                        m43186x0.delete();
                    }
                } catch (RuntimeException e) {
                    m43186x0.delete();
                    return null;
                } catch (Throwable th) {
                    m43186x0.delete();
                    throw th;
                }
            }
            m1736g();
            try {
                Object newInstance2 = Array.newInstance(f74286b, 1);
                Array.set(newInstance2, 0, newInstance);
                return (Typeface) f74289e.invoke(null, newInstance2);
            } catch (IllegalAccessException | InvocationTargetException e2) {
                throw new RuntimeException(e2);
            }
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e3) {
            throw new RuntimeException(e3);
        }
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: b */
    public Typeface mo1732b(Context context, CancellationSignal cancellationSignal, C26530l[] c26530lArr, int i) {
        File file;
        String readlink;
        if (c26530lArr.length < 1) {
            return null;
        }
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(((C26530l) C26502k.m1729e(c26530lArr, i, new C26501j(this))).f74338a, "r", cancellationSignal);
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
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                file = new File(readlink);
                if (file != null && file.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(file);
                    openFileDescriptor.close();
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                Typeface mo1731c = mo1731c(context, fileInputStream);
                fileInputStream.close();
                openFileDescriptor.close();
                return mo1731c;
            }
            file = null;
            if (file != null) {
                Typeface createFromFile2 = Typeface.createFromFile(file);
                openFileDescriptor.close();
                return createFromFile2;
            }
            FileInputStream fileInputStream2 = new FileInputStream(openFileDescriptor.getFileDescriptor());
            Typeface mo1731c2 = mo1731c(context, fileInputStream2);
            fileInputStream2.close();
            openFileDescriptor.close();
            return mo1731c2;
        } catch (IOException e2) {
            return null;
        }
    }
}
