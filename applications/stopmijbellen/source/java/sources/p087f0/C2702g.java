package p087f0;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.CancellationSignal;
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
import p076e0.C2505d;
import p130j0.C3158l;
import p226s.C4263g;
/* renamed from: f0.g */
/* loaded from: classes-dex2jar.jar:f0/g.class */
public class C2702g extends C2706k {

    /* renamed from: b */
    public static final Class<?> f9287b;

    /* renamed from: c */
    public static final Constructor<?> f9288c;

    /* renamed from: d */
    public static final Method f9289d;

    /* renamed from: e */
    public static final Method f9290e;

    static {
        Method method;
        Method method2;
        Class<?> cls;
        Constructor<?> constructor = null;
        try {
            cls = Class.forName("android.graphics.FontFamily");
            Constructor<?> constructor2 = cls.getConstructor(new Class[0]);
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("addFontWeightStyle", ByteBuffer.class, cls2, List.class, cls2, Boolean.TYPE);
            method2 = Typeface.class.getMethod("createFromFamiliesWithDefault", Array.newInstance(cls, 1).getClass());
            constructor = constructor2;
        } catch (ClassNotFoundException | NoSuchMethodException e) {
            cls = null;
            method2 = null;
            method = null;
        }
        f9288c = constructor;
        f9287b = cls;
        f9289d = method;
        f9290e = method2;
    }

    /* renamed from: f */
    public static boolean m3238f(Object obj, ByteBuffer byteBuffer, int i, int i2, boolean z) {
        try {
            return ((Boolean) f9289d.invoke(obj, byteBuffer, Integer.valueOf(i), null, Integer.valueOf(i2), Boolean.valueOf(z))).booleanValue();
        } catch (IllegalAccessException | InvocationTargetException e) {
            return false;
        }
    }

    /* renamed from: g */
    public static Typeface m3237g(Object obj) {
        try {
            Object newInstance = Array.newInstance(f9287b, 1);
            Array.set(newInstance, 0, obj);
            return (Typeface) f9290e.invoke(null, newInstance);
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }

    @Override // p087f0.C2706k
    /* renamed from: a */
    public Typeface mo3227a(Context context, C2505d.C2507b c2507b, Resources resources, int i) {
        Object obj;
        C2505d.C2508c[] c2508cArr;
        MappedByteBuffer mappedByteBuffer;
        try {
            obj = f9288c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        for (C2505d.C2508c c2508c : c2507b.f8762a) {
            int i2 = c2508c.f8768f;
            File m3220c = C2707l.m3220c(context);
            if (m3220c != null) {
                try {
                    if (C2707l.m3222a(m3220c, resources, i2)) {
                        try {
                            FileInputStream fileInputStream = new FileInputStream(m3220c);
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
                        if (mappedByteBuffer != null || !m3238f(obj, mappedByteBuffer, c2508c.f8767e, c2508c.f8764b, c2508c.f8765c)) {
                            return null;
                        }
                    }
                } finally {
                    m3220c.delete();
                }
            }
            mappedByteBuffer = null;
            if (mappedByteBuffer != null) {
                return null;
            }
        }
        return m3237g(obj);
    }

    @Override // p087f0.C2706k
    /* renamed from: b */
    public Typeface mo3226b(Context context, CancellationSignal cancellationSignal, C3158l[] c3158lArr, int i) {
        Object obj;
        try {
            obj = f9288c.newInstance(new Object[0]);
        } catch (IllegalAccessException | InstantiationException | InvocationTargetException e) {
            obj = null;
        }
        if (obj == null) {
            return null;
        }
        C4263g c4263g = new C4263g();
        for (C3158l c3158l : c3158lArr) {
            Uri uri = c3158l.f10621a;
            ByteBuffer byteBuffer = (ByteBuffer) c4263g.get(uri);
            ByteBuffer byteBuffer2 = byteBuffer;
            if (byteBuffer == null) {
                byteBuffer2 = C2707l.m3219d(context, cancellationSignal, uri);
                c4263g.put(uri, byteBuffer2);
            }
            if (byteBuffer2 == null || !m3238f(obj, byteBuffer2, c3158l.f10622b, c3158l.f10623c, c3158l.f10624d)) {
                return null;
            }
        }
        Typeface m3237g = m3237g(obj);
        if (m3237g != null) {
            return Typeface.create(m3237g, i);
        }
        return null;
    }
}
