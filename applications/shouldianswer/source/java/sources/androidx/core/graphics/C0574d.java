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
import androidx.core.p015a.p016a.C0412c;
import androidx.core.p020d.C0465b;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/d.class */
public class C0574d extends C0584h {

    /* renamed from: a */
    private static Class f1923a;

    /* renamed from: b */
    private static Constructor f1924b;

    /* renamed from: c */
    private static Method f1925c;

    /* renamed from: d */
    private static Method f1926d;

    /* renamed from: e */
    private static boolean f1927e = false;

    /* renamed from: a */
    private static Typeface m6145a(Object obj) {
        m6147a();
        try {
            Object newInstance = Array.newInstance(f1923a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f1926d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private File m6146a(ParcelFileDescriptor parcelFileDescriptor) {
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
    private static void m6147a() {
        Method method;
        Method method2;
        Class<?> cls;
        if (f1927e) {
            return;
        }
        f1927e = true;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method2 = null;
            cls = null;
            method = null;
        }
        f1924b = constructor;
        f1923a = cls;
        f1925c = method2;
        f1926d = method;
    }

    /* renamed from: a */
    private static boolean m6144a(Object obj, String str, int i, boolean z) {
        m6147a();
        try {
            return ((Boolean) f1925c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static Object m6143b() {
        m6147a();
        try {
            return f1924b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6092a(Context context, CancellationSignal cancellationSignal, C0465b.C0471b[] c0471bArr, int i) {
        if (c0471bArr.length < 1) {
            return null;
        }
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
            File m6146a = m6146a(openFileDescriptor);
            if (m6146a != null && m6146a.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(m6146a);
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                Typeface m6090a = super.m6090a(context, fileInputStream);
                fileInputStream.close();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return m6090a;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th3) {
                        th.addSuppressed(th3);
                    }
                    throw th2;
                }
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // androidx.core.graphics.C0584h
    /* renamed from: a */
    public Typeface mo6091a(Context context, C0412c.C0414b c0414b, Resources resources, int i) {
        C0412c.C0415c[] m6719a;
        Object m6143b = m6143b();
        for (C0412c.C0415c c0415c : c0414b.m6719a()) {
            File m6077a = C0588i.m6077a(context);
            if (m6077a == null) {
                return null;
            }
            try {
                if (!C0588i.m6072a(m6077a, resources, c0415c.m6713f())) {
                    m6077a.delete();
                    return null;
                } else if (!m6144a(m6143b, m6077a.getPath(), c0415c.m6717b(), c0415c.m6716c())) {
                    m6077a.delete();
                    return null;
                } else {
                    m6077a.delete();
                }
            } catch (RuntimeException e) {
                m6077a.delete();
                return null;
            } catch (Throwable th) {
                m6077a.delete();
                throw th;
            }
        }
        return m6145a(m6143b);
    }
}
