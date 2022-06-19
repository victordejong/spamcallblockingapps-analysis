package p1727n3.p1807k.p1812c;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.List;
import p1727n3.p1788g.C26187h;
import p1727n3.p1807k.p1809b.p1811d.C26484d;
import p1727n3.p1807k.p1809b.p1811d.C26485e;
import p1727n3.p1807k.p1817f.C26530l;
/* renamed from: n3.k.c.f */
/* loaded from: classes-dex2jar.jar:n3/k/c/f.class */
public class C26499f extends C26502k {

    /* renamed from: b */
    public static final Class<?> f74291b;

    /* renamed from: c */
    public static final Constructor<?> f74292c;

    /* renamed from: d */
    public static final Method f74293d;

    /* renamed from: e */
    public static final Method f74294e;

    static {
        Method method;
        Method method2;
        Constructor<?> constructor;
        Class<?> cls;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            constructor = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            Method method3 = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            method2 = method3;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            e.getClass().getName();
            cls = null;
            method2 = null;
            method = null;
            constructor = null;
        }
        f74292c = constructor;
        f74291b = cls;
        f74293d = method2;
        f74294e = method;
    }

    /* renamed from: f */
    public static boolean m1735f(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f74293d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: g */
    public static Typeface m1734g(Object obj) {
        try {
            Object newInstance = Array.newInstance(f74291b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f74294e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: a */
    public Typeface mo1733a(Context context, C26484d c26484d, Resources resources, int i) {
        Object obj;
        C26485e[] c26485eArr;
        MappedByteBuffer mappedByteBuffer;
        try {
            obj = f74292c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C26485e c26485e : c26484d.f74252a) {
            int i2 = c26485e.f74258f;
            File m43186x0 = MediaSessionCompat.m43186x0(context);
            if (m43186x0 != null) {
                try {
                    if (MediaSessionCompat.m43295J(m43186x0, resources, i2)) {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(m43186x0);
                            try {
                                FileChannel channel = fileInputStream.getChannel();
                                mappedByteBuffer = channel.map(FileChannel.MapMode.READ_ONLY, 0L, channel.size());
                                fileInputStream.close();
                            } catch (Throwable th) {
                                try {
                                    fileInputStream.close();
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                                throw th;
                                break;
                            }
                        } catch (IOException e2) {
                            mappedByteBuffer = null;
                        }
                        if (mappedByteBuffer != null || !m1735f(obj, mappedByteBuffer, c26485e.f74257e, c26485e.f74254b, c26485e.f74255c)) {
                            return null;
                        }
                    }
                } finally {
                    m43186x0.delete();
                }
            }
            mappedByteBuffer = null;
            if (mappedByteBuffer != null) {
                return null;
            }
        }
        return m1734g(obj);
    }

    @Override // p1727n3.p1807k.p1812c.C26502k
    /* renamed from: b */
    public Typeface mo1732b(Context context, CancellationSignal cancellationSignal, C26530l[] c26530lArr, int i) {
        Object obj;
        try {
            obj = f74292c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        C26187h c26187h = new C26187h();
        for (C26530l c26530l : c26530lArr) {
            Uri uri = c26530l.f74338a;
            ByteBuffer byteBuffer = (ByteBuffer) c26187h.get(uri);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = MediaSessionCompat.m43265V0(context, cancellationSignal, uri);
                c26187h.put(uri, byteBuffer2);
            }
            if (byteBuffer2 == null || !m1735f(obj, byteBuffer2, c26530l.f74339b, c26530l.f74340c, c26530l.f74341d)) {
                return null;
            }
        }
        Typeface m1734g = m1734g(obj);
        if (m1734g != null) {
            return Typeface.create(m1734g, i);
        }
        return null;
    }
}
