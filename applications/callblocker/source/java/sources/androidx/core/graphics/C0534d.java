package androidx.core.graphics;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.ParcelFileDescriptor;
import android.system.ErrnoException;
import android.system.Os;
import android.system.OsConstants;
import android.util.Log;
import androidx.core.p017a.p018a.C0441c;
import java.io.File;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: androidx.core.graphics.d */
/* loaded from: classes-dex2jar.jar:androidx/core/graphics/d.class */
public class C0534d extends C0544h {

    /* renamed from: a */
    private static Class f1968a;

    /* renamed from: b */
    private static Constructor f1969b;

    /* renamed from: c */
    private static Method f1970c;

    /* renamed from: d */
    private static Method f1971d;

    /* renamed from: e */
    private static boolean f1972e = false;

    /* renamed from: a */
    private static Typeface m20607a(Object obj) {
        m20609a();
        try {
            Object newInstance = Array.newInstance(f1968a, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f1971d.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: a */
    private File m20608a(ParcelFileDescriptor parcelFileDescriptor) {
        File file;
        try {
            String readlink = Os.readlink("/proc/self/fd/" + parcelFileDescriptor.getFd());
            file = OsConstants.S_ISREG(Os.stat(readlink).st_mode) ? new File(readlink) : null;
        } catch (ErrnoException e) {
            file = null;
        }
        return file;
    }

    /* renamed from: a */
    private static void m20609a() {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Class<?> cls;
        if (f1972e) {
            return;
        }
        f1972e = true;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            method2 = cls.getMethod("addFontWeightStyle", String.class, Integer.TYPE, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            Log.e("TypefaceCompatApi21Impl", e.getClass().getName(), e);
            method = null;
            method2 = null;
            constructor = null;
            cls = null;
        }
        f1969b = constructor;
        f1968a = cls;
        f1970c = method2;
        f1971d = method;
    }

    /* renamed from: a */
    private static boolean m20606a(Object obj, String str, int i, boolean z) {
        m20609a();
        try {
            return ((Boolean) f1970c.invoke(obj, str, Integer.valueOf(i), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: b */
    private static Object m20605b() {
        m20609a();
        try {
            return f1969b.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            throw new RuntimeException(e);
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Unreachable block: B:57:0x00c3
        	at jadx.core.dex.visitors.blocks.BlockProcessor.checkForUnreachableBlocks(BlockProcessor.java:92)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:52)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        */
    @Override // androidx.core.graphics.C0544h
    /* renamed from: a */
    public android.graphics.Typeface mo20554a(android.content.Context r6, android.os.CancellationSignal r7, androidx.core.p023e.C0489b.C0495b[] r8, int r9) {
        /*
            Method dump skipped, instructions count: 314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.graphics.C0534d.mo20554a(android.content.Context, android.os.CancellationSignal, androidx.core.e.b$b[], int):android.graphics.Typeface");
    }

    @Override // androidx.core.graphics.C0544h
    /* renamed from: a */
    public Typeface mo20553a(Context context, C0441c.C0443b c0443b, Resources resources, int i) {
        Typeface m20607a;
        Object m20605b = m20605b();
        C0441c.C0444c[] m20865a = c0443b.m20865a();
        int length = m20865a.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                m20607a = m20607a(m20605b);
                break;
            }
            C0441c.C0444c c0444c = m20865a[i2];
            File m20539a = C0548i.m20539a(context);
            if (m20539a == null) {
                m20607a = null;
                break;
            }
            try {
                if (!C0548i.m20534a(m20539a, resources, c0444c.m20859f())) {
                    m20539a.delete();
                    m20607a = null;
                    break;
                } else if (!m20606a(m20605b, m20539a.getPath(), c0444c.m20863b(), c0444c.m20862c())) {
                    m20539a.delete();
                    m20607a = null;
                    break;
                } else {
                    m20539a.delete();
                    i2++;
                }
            } catch (RuntimeException e) {
                m20539a.delete();
                m20607a = null;
            } catch (Throwable th) {
                m20539a.delete();
                throw th;
            }
        }
        return m20607a;
    }
}
