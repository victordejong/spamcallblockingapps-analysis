package com.callapp.contacts.manager.cache;

import android.content.Context;
import android.graphics.Bitmap;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.contacts.util.serializer.ArraysAsListSerializer;
import com.callapp.contacts.util.serializer.CallAppKryo;
import com.callapp.contacts.util.serializer.CallAppObjectInstantiator;
import com.callapp.contacts.util.serializer.ContextIgnoreSerializer;
import com.callapp.contacts.util.serializer.KryoBitmapSeriliazer;
import com.callapp.contacts.util.serializer.SubListSerializers;
import com.callapp.contacts.util.serializer.SynchronizedCollectionsSerializer;
import com.callapp.contacts.util.serializer.UnmodifiableCollectionsSerializer;
import com.callapp.framework.util.StringUtils;
import com.esotericsoftware.kryo.AbstractC9413h;
import com.esotericsoftware.kryo.C9380c;
import com.esotericsoftware.kryo.p276a.C9374a;
import com.esotericsoftware.kryo.p276a.C9376c;
import com.esotericsoftware.kryo.p278c.C9385d;
import com.esotericsoftware.kryo.p278c.C9399k;
import com.esotericsoftware.kryo.serializers.C9439e;
import com.esotericsoftware.kryo.serializers.C9452g;
import com.esotericsoftware.p274b.C9366a;
import com.sinch.verification.core.verification.VerificationLanguage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/FileStore.class */
public class FileStore {

    /* renamed from: a */
    private static final Pattern f25952a = Pattern.compile("[|\\\\?*<\\\":>+\\[\\]/'\\s]");

    /* renamed from: a */
    public static String m28375a(Class<?> cls, CharSequence charSequence) {
        Pattern pattern = f25952a;
        String replaceAll = pattern.matcher(charSequence).replaceAll(VerificationLanguage.REGION_PREFIX);
        String replaceAll2 = pattern.matcher(cls.getSimpleName()).replaceAll(VerificationLanguage.REGION_PREFIX);
        return replaceAll2 + File.separator + StringUtils.m26014n(replaceAll);
    }

    private C9380c getKryo() {
        CallAppKryo callAppKryo = new CallAppKryo();
        boolean z = callAppKryo.f32235d;
        if (true != z) {
            if (z) {
                callAppKryo.f32234c.mo24281b();
                callAppKryo.f32236e = null;
            }
            callAppKryo.f32235d = true;
            if (callAppKryo.f32234c == null) {
                callAppKryo.f32234c = new C9399k();
            }
            if (C9366a.f32190e) {
                C9366a.m24494b("kryo", new StringBuilder("References: true").toString());
            }
        }
        callAppKryo.setRegistrationRequired(false);
        callAppKryo.m24374b(Bitmap.class, new KryoBitmapSeriliazer());
        UnmodifiableCollectionsSerializer.m26923a(callAppKryo);
        SynchronizedCollectionsSerializer.m26926a(callAppKryo);
        callAppKryo.m24374b(Arrays.asList(new Object[0]).getClass(), new ArraysAsListSerializer());
        Class<?> cls = new ArrayList().subList(0, 0).getClass();
        AbstractC9413h<List<?>> m26933a = SubListSerializers.m26933a(cls);
        if (m26933a != null) {
            callAppKryo.m24374b(cls, m26933a);
        }
        callAppKryo.m24374b(Void.TYPE, new C9452g.C9464ak());
        callAppKryo.setDefaultSerializer(C9439e.class);
        callAppKryo.m24384a(Context.class, new ContextIgnoreSerializer());
        CallAppObjectInstantiator callAppObjectInstantiator = new CallAppObjectInstantiator();
        C9385d c9385d = new C9385d();
        c9385d.f32289a = callAppObjectInstantiator;
        callAppKryo.setInstantiatorStrategy(c9385d);
        return callAppKryo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.io.ByteArrayInputStream, java.io.Closeable, java.io.InputStream] */
    /* renamed from: a */
    public final <T> T m28373a(String str, byte[] bArr) {
        Closeable closeable;
        Throwable th;
        byte[] bArr2;
        Exception e;
        Closeable closeable2;
        C9374a c9374a;
        ?? byteArrayInputStream;
        if (bArr == null) {
            return null;
        }
        synchronized (str.intern()) {
            try {
                try {
                    byteArrayInputStream = new ByteArrayInputStream(bArr);
                } catch (Throwable th2) {
                    bArr2 = bArr;
                    th = th2;
                }
            } catch (Exception e2) {
                e = e2;
                c9374a = null;
                closeable2 = null;
            } catch (Throwable th3) {
                th = th3;
                bArr2 = null;
                closeable = null;
            }
            try {
                C9374a c9374a2 = new C9374a(new GZIPInputStream(byteArrayInputStream));
                try {
                    T t = (T) getKryo().m24379b(c9374a2);
                    IoUtils.m27514a((Closeable) byteArrayInputStream);
                    IoUtils.m27514a(c9374a2);
                    return t;
                } catch (Exception e3) {
                    e = e3;
                    closeable2 = byteArrayInputStream;
                    c9374a = c9374a2;
                    CLog.m27596b(FileStore.class, e);
                    IoUtils.m27514a(closeable2);
                    IoUtils.m27514a(c9374a);
                    return null;
                }
            } catch (Exception e4) {
                e = e4;
                closeable2 = byteArrayInputStream;
                c9374a = null;
            } catch (Throwable th4) {
                th = th4;
                closeable = null;
                bArr2 = byteArrayInputStream;
                IoUtils.m27514a((Closeable) bArr2);
                IoUtils.m27514a(closeable);
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final byte[] m28374a(String str, Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        GZIPOutputStream gZIPOutputStream;
        GZIPOutputStream gZIPOutputStream2;
        C9376c c9376c;
        ByteArrayOutputStream byteArrayOutputStream2;
        Exception e;
        GZIPOutputStream gZIPOutputStream3;
        GZIPOutputStream gZIPOutputStream4;
        if (obj == null) {
            return new byte[0];
        }
        synchronized (str.intern()) {
            C9376c c9376c2 = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream4 = new GZIPOutputStream(byteArrayOutputStream3);
                    c9376c2 = null;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    gZIPOutputStream2 = gZIPOutputStream4;
                    try {
                        try {
                            c9376c = new C9376c(gZIPOutputStream4);
                        } catch (Exception e2) {
                            e = e2;
                            c9376c = null;
                            byteArrayOutputStream2 = byteArrayOutputStream3;
                            gZIPOutputStream3 = gZIPOutputStream4;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream = gZIPOutputStream2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    c9376c = null;
                    byteArrayOutputStream2 = byteArrayOutputStream3;
                    gZIPOutputStream3 = null;
                } catch (Throwable th3) {
                    th = th3;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    gZIPOutputStream = null;
                }
                try {
                    getKryo().m24388a(c9376c, obj);
                    c9376c.close();
                    gZIPOutputStream4.close();
                    byte[] byteArray = byteArrayOutputStream3.toByteArray();
                    IoUtils.m27514a(c9376c);
                    IoUtils.m27514a(gZIPOutputStream4);
                    IoUtils.m27514a(byteArrayOutputStream3);
                    return byteArray;
                } catch (Exception e4) {
                    e = e4;
                    byteArrayOutputStream2 = byteArrayOutputStream3;
                    gZIPOutputStream3 = gZIPOutputStream4;
                    c9376c2 = c9376c;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    gZIPOutputStream2 = gZIPOutputStream3;
                    CLog.m27596b(FileStore.class, e);
                    IoUtils.m27514a(c9376c);
                    IoUtils.m27514a(gZIPOutputStream3);
                    IoUtils.m27514a(byteArrayOutputStream2);
                    return new byte[0];
                } catch (Throwable th4) {
                    th = th4;
                    c9376c2 = c9376c;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    gZIPOutputStream = gZIPOutputStream4;
                    IoUtils.m27514a(c9376c2);
                    IoUtils.m27514a(gZIPOutputStream);
                    IoUtils.m27514a(byteArrayOutputStream);
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                byteArrayOutputStream2 = null;
                gZIPOutputStream3 = null;
                c9376c = null;
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = null;
                gZIPOutputStream = null;
            }
        }
    }
}
