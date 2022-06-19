package p020b.p041h.p042e;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.content.p007d.C0597c;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p020b.p041h.p046h.C1556f;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: b.h.e.e */
/* loaded from: classes-dex2jar.jar:b/h/e/e.class */
public class C1529e extends C1534j {

    /* renamed from: b */
    private static Class<?> f6062b;

    /* renamed from: c */
    private static Constructor<?> f6063c;

    /* renamed from: d */
    private static Method f6064d;

    /* renamed from: e */
    private static Method f6065e;

    /* renamed from: f */
    private static boolean f6066f = false;

    /* renamed from: k */
    private static boolean m29819k(Object obj, String str, int i, boolean z) {
        m29816n();
        try {
            return ((Boolean) f6064d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: l */
    private static Typeface m29818l(Object obj) {
        m29816n();
        try {
            Object newInstance = Array.newInstance(f6062b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f6065e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: m */
    private File m29817m(ParcelFileDescriptor parcelFileDescriptor) {
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

    /* renamed from: n */
    private static void m29816n() {
        Method method;
        Method method2;
        Class<?> cls;
        if (f6066f) {
            return;
        }
        f6066f = true;
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
        f6063c = constructor;
        f6062b = cls;
        f6064d = method2;
        f6065e = method;
    }

    /* renamed from: o */
    private static Object m29815o() {
        m29816n();
        try {
            return f6063c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: b */
    public Typeface mo29795b(Context context, C0597c.C0599b c0599b, Resources resources, int i) {
        C0597c.C0600c[] m33295a;
        Object m29815o = m29815o();
        for (C0597c.C0600c c0600c : c0599b.m33295a()) {
            File m29776e = C1538k.m29776e(context);
            if (m29776e == null) {
                return null;
            }
            try {
                if (!C1538k.m29778c(m29776e, resources, c0600c.m33293b())) {
                    m29776e.delete();
                    return null;
                } else if (!m29819k(m29815o, m29776e.getPath(), c0600c.m33290e(), c0600c.m33289f())) {
                    m29776e.delete();
                    return null;
                } else {
                    m29776e.delete();
                }
            } catch (RuntimeException e) {
                m29776e.delete();
                return null;
            } catch (Throwable th) {
                m29776e.delete();
                throw th;
            }
        }
        return m29818l(m29815o);
    }

    @Override // p020b.p041h.p042e.C1534j
    /* renamed from: c */
    public Typeface mo29794c(Context context, CancellationSignal cancellationSignal, C1556f.C1558b[] c1558bArr, int i) {
        if (c1558bArr.length < 1) {
            return null;
        }
        C1556f.C1558b mo29789h = mo29789h(c1558bArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(mo29789h.m29732d(), "r", cancellationSignal);
            if (openFileDescriptor == null) {
                if (openFileDescriptor == null) {
                    return null;
                }
                openFileDescriptor.close();
                return null;
            }
            File m29817m = m29817m(openFileDescriptor);
            if (m29817m != null && m29817m.canRead()) {
                Typeface createFromFile = Typeface.createFromFile(m29817m);
                openFileDescriptor.close();
                return createFromFile;
            }
            FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
            try {
                Typeface mo29793d = super.mo29793d(context, fileInputStream);
                fileInputStream.close();
                openFileDescriptor.close();
                return mo29793d;
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e) {
            return null;
        }
    }
}
