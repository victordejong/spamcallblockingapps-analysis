package p012b.p042i.p046j;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.CancellationSignal;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import com.inmobi.ads.C8302r;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import p012b.p042i.p044i.p045c.C0874c;
import p012b.p042i.p051m.C0924b;
/* renamed from: b.i.j.f */
/* loaded from: classes-dex2jar.jar:b/i/j/f.class */
public class C0897f extends C0902k {

    /* renamed from: b */
    public static Class<?> f4095b;

    /* renamed from: c */
    public static Constructor<?> f4096c;

    /* renamed from: d */
    public static Method f4097d;

    /* renamed from: e */
    public static Method f4098e;

    /* renamed from: f */
    public static boolean f4099f = false;

    /* renamed from: a */
    public static Typeface m35574a(Object obj) {
        m35576a();
        try {
            Object newInstance = Array.newInstance(f4095b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f4098e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    public static void m35576a() {
        Method method;
        Method method2;
        Class<?> cls;
        if (!f4099f) {
            f4099f = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                constructor = cls.getConstructor(new Class[0]);
                method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
                method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            } catch (ClassNotFoundException | NoSuchMethodException e) {
                Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
                method2 = null;
                cls = null;
                method = null;
            }
            f4096c = constructor;
            f4095b = cls;
            f4097d = method2;
            f4098e = method;
        }
    }

    /* renamed from: a */
    public static boolean m35573a(Object obj, String str, int i, boolean z) {
        m35576a();
        try {
            return ((Boolean) f4097d.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    public static Object m35572b() {
        m35576a();
        try {
            return f4096c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35552a(Context context, CancellationSignal cancellationSignal, C0924b.C0930f[] fVarArr, int i) {
        if (fVarArr.length < 1) {
            return null;
        }
        C0924b.C0930f a = mo35546a(fVarArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a.m35471c(), C8302r.f32303d, cancellationSignal);
            if (openFileDescriptor != null) {
                File a2 = m35575a(openFileDescriptor);
                if (a2 != null && a2.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a2);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                try {
                    Typeface a3 = super.mo35550a(context, fileInputStream);
                    fileInputStream.close();
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return a3;
                } catch (Throwable th) {
                    try {
                        fileInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            } else if (openFileDescriptor == null) {
                return null;
            } else {
                openFileDescriptor.close();
                return null;
            }
        } catch (IOException e) {
            return null;
        }
    }

    @Override // p012b.p042i.p046j.C0902k
    /* renamed from: a */
    public Typeface mo35551a(Context context, C0874c.C0876b bVar, Resources resources, int i) {
        C0874c.C0877c[] a;
        Object b = m35572b();
        for (C0874c.C0877c cVar : bVar.m35654a()) {
            File a2 = C0906l.m35537a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (!C0906l.m35532a(a2, resources, cVar.m35652b())) {
                    a2.delete();
                    return null;
                } else if (!m35573a(b, a2.getPath(), cVar.m35649e(), cVar.m35648f())) {
                    a2.delete();
                    return null;
                } else {
                    a2.delete();
                }
            } catch (RuntimeException e) {
                a2.delete();
                return null;
            } catch (Throwable th) {
                a2.delete();
                throw th;
            }
        }
        return m35574a(b);
    }

    /* renamed from: a */
    public final File m35575a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException e) {
            return null;
        }
    }
}
