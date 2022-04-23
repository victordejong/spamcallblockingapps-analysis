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
import androidx.core.c.b;
import androidx.core.content.res.c;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/e.class */
class e extends j {

    /* renamed from: a  reason: collision with root package name */
    private static Class<?> f1922a;

    /* renamed from: b  reason: collision with root package name */
    private static Constructor<?> f1923b;

    /* renamed from: c  reason: collision with root package name */
    private static Method f1924c;

    /* renamed from: d  reason: collision with root package name */
    private static Method f1925d;
    private static boolean e = false;

    private static Typeface a(Object obj) {
        a();
        try {
            Object newInstance = Array.newInstance(f1922a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f1925d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static File a(ParcelFileDescriptor parcelFileDescriptor) {
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            if (OsConstants.S_ISREG(Os.stat(readlink).st_mode)) {
                return new File(readlink);
            }
            return null;
        } catch (ErrnoException e2) {
            return null;
        }
    }

    private static void a() {
        Method method;
        Method method2;
        Class<?> cls;
        if (!e) {
            e = true;
            Constructor<?> constructor = null;
            try {
                cls = Class.forName("android.graphics.FontFamily");
                constructor = cls.getConstructor(new Class[0]);
                method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
                method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            } catch (ClassNotFoundException | NoSuchMethodException e2) {
                Log.e("TypefaceCompatApi21Impl", e2.getClass().getName(), e2);
                method = null;
                method2 = null;
                cls = null;
            }
            f1923b = constructor;
            f1922a = cls;
            f1924c = method2;
            f1925d = method;
        }
    }

    private static boolean a(Object obj, String str, int i, boolean z) {
        a();
        try {
            return ((Boolean) f1924c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    private static Object b() {
        a();
        try {
            return f1923b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e2) {
            throw new RuntimeException(e2);
        }
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, CancellationSignal cancellationSignal, b.C0043b[] bVarArr, int i) {
        if (bVarArr.length <= 0) {
            return null;
        }
        b.C0043b a2 = a(bVarArr, i);
        try {
            ParcelFileDescriptor openFileDescriptor = context.getContentResolver().openFileDescriptor(a2.f1802a, "r", null);
            if (openFileDescriptor != null) {
                File a3 = a(openFileDescriptor);
                if (a3 != null && a3.canRead()) {
                    Typeface createFromFile = Typeface.createFromFile(a3);
                    if (openFileDescriptor != null) {
                        openFileDescriptor.close();
                    }
                    return createFromFile;
                }
                FileInputStream fileInputStream = new FileInputStream(openFileDescriptor.getFileDescriptor());
                Typeface a4 = super.a(context, fileInputStream);
                fileInputStream.close();
                if (openFileDescriptor != null) {
                    openFileDescriptor.close();
                }
                return a4;
            } else if (openFileDescriptor == null) {
                return null;
            } else {
                openFileDescriptor.close();
                return null;
            }
        } catch (IOException e2) {
            return null;
        }
    }

    @Override // androidx.core.graphics.j
    public Typeface a(Context context, c.b bVar, Resources resources, int i) {
        c.C0045c[] cVarArr;
        Object b2 = b();
        for (c.C0045c cVar : bVar.f1836a) {
            File a2 = k.a(context);
            if (a2 == null) {
                return null;
            }
            try {
                if (!k.a(a2, resources, cVar.f)) {
                    a2.delete();
                    return null;
                } else if (!a(b2, a2.getPath(), cVar.f1838b, cVar.f1839c)) {
                    a2.delete();
                    return null;
                } else {
                    a2.delete();
                }
            } catch (RuntimeException e2) {
                a2.delete();
                return null;
            } catch (Throwable th) {
                a2.delete();
                throw th;
            }
        }
        return a(b2);
    }
}
