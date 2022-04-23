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
import com.esotericsoftware.b.a;
import com.esotericsoftware.kryo.c;
import com.esotericsoftware.kryo.c.d;
import com.esotericsoftware.kryo.c.k;
import com.esotericsoftware.kryo.h;
import com.esotericsoftware.kryo.serializers.e;
import com.esotericsoftware.kryo.serializers.g;
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
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/cache/FileStore.class */
public class FileStore {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f15015a = Pattern.compile("[|\\\\?*<\\\":>+\\[\\]/'\\s]");

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Class<?> cls, CharSequence charSequence) {
        Pattern pattern = f15015a;
        String replaceAll = pattern.matcher(charSequence).replaceAll(VerificationLanguage.REGION_PREFIX);
        String replaceAll2 = pattern.matcher(cls.getSimpleName()).replaceAll(VerificationLanguage.REGION_PREFIX);
        return replaceAll2 + File.separator + StringUtils.n(replaceAll);
    }

    private c getKryo() {
        CallAppKryo callAppKryo = new CallAppKryo();
        boolean z = callAppKryo.f18971d;
        if (true != z) {
            if (z) {
                callAppKryo.f18970c.b();
                callAppKryo.e = null;
            }
            callAppKryo.f18971d = true;
            if (callAppKryo.f18970c == null) {
                callAppKryo.f18970c = new k();
            }
            if (a.e) {
                a.b("kryo", new StringBuilder("References: true").toString());
            }
        }
        callAppKryo.setRegistrationRequired(false);
        callAppKryo.b(Bitmap.class, new KryoBitmapSeriliazer());
        UnmodifiableCollectionsSerializer.a(callAppKryo);
        SynchronizedCollectionsSerializer.a(callAppKryo);
        callAppKryo.b(Arrays.asList(new Object[0]).getClass(), new ArraysAsListSerializer());
        Class<?> cls = new ArrayList().subList(0, 0).getClass();
        h<List<?>> a2 = SubListSerializers.a(cls);
        if (a2 != null) {
            callAppKryo.b(cls, a2);
        }
        callAppKryo.b(Void.TYPE, new g.ak());
        callAppKryo.setDefaultSerializer(e.class);
        callAppKryo.a(Context.class, new ContextIgnoreSerializer());
        CallAppObjectInstantiator callAppObjectInstantiator = new CallAppObjectInstantiator();
        d dVar = new d();
        dVar.f18986a = callAppObjectInstantiator;
        callAppKryo.setInstantiatorStrategy(dVar);
        return callAppKryo;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5 */
    public final <T> T a(String str, byte[] bArr) {
        Closeable closeable;
        Throwable th;
        ByteArrayInputStream byteArrayInputStream;
        Exception e;
        ByteArrayInputStream byteArrayInputStream2;
        com.esotericsoftware.kryo.a.a aVar;
        ByteArrayInputStream byteArrayInputStream3;
        if (bArr == null) {
            return null;
        }
        synchronized (str.intern()) {
            try {
                try {
                    byteArrayInputStream3 = new ByteArrayInputStream(bArr);
                } catch (Throwable th2) {
                    th = th2;
                    byteArrayInputStream = bArr;
                }
            } catch (Exception e2) {
                e = e2;
                aVar = null;
                byteArrayInputStream2 = null;
            } catch (Throwable th3) {
                th = th3;
                byteArrayInputStream = 0;
                closeable = null;
            }
            try {
                com.esotericsoftware.kryo.a.a aVar2 = new com.esotericsoftware.kryo.a.a(new GZIPInputStream(byteArrayInputStream3));
                try {
                    T t = (T) getKryo().b(aVar2);
                    IoUtils.a(byteArrayInputStream3);
                    IoUtils.a(aVar2);
                    return t;
                } catch (Exception e3) {
                    e = e3;
                    byteArrayInputStream2 = byteArrayInputStream3;
                    aVar = aVar2;
                    CLog.b(FileStore.class, e);
                    IoUtils.a(byteArrayInputStream2);
                    IoUtils.a(aVar);
                    return null;
                }
            } catch (Exception e4) {
                e = e4;
                aVar = null;
                byteArrayInputStream2 = byteArrayInputStream3;
            } catch (Throwable th4) {
                th = th4;
                closeable = null;
                byteArrayInputStream = byteArrayInputStream3;
                IoUtils.a((Closeable) byteArrayInputStream);
                IoUtils.a(closeable);
                throw th;
            }
        }
    }

    public final byte[] a(String str, Object obj) {
        ByteArrayOutputStream byteArrayOutputStream;
        Throwable th;
        GZIPOutputStream gZIPOutputStream;
        com.esotericsoftware.kryo.a.c cVar;
        ByteArrayOutputStream byteArrayOutputStream2;
        Exception e;
        GZIPOutputStream gZIPOutputStream2;
        GZIPOutputStream gZIPOutputStream3;
        if (obj == null) {
            return new byte[0];
        }
        synchronized (str.intern()) {
            r9 = null;
            com.esotericsoftware.kryo.a.c cVar2 = null;
            try {
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                try {
                    gZIPOutputStream3 = new GZIPOutputStream(byteArrayOutputStream3);
                    byteArrayOutputStream = byteArrayOutputStream3;
                    gZIPOutputStream = gZIPOutputStream3;
                    try {
                        try {
                            cVar = new com.esotericsoftware.kryo.a.c(gZIPOutputStream3);
                        } catch (Exception e2) {
                            e = e2;
                            cVar = null;
                            byteArrayOutputStream2 = byteArrayOutputStream3;
                            gZIPOutputStream2 = gZIPOutputStream3;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                    }
                } catch (Exception e3) {
                    e = e3;
                    gZIPOutputStream2 = null;
                    cVar = null;
                    byteArrayOutputStream2 = byteArrayOutputStream3;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPOutputStream = null;
                    byteArrayOutputStream = byteArrayOutputStream3;
                }
                try {
                    getKryo().a(cVar, obj);
                    cVar.close();
                    gZIPOutputStream3.close();
                    byte[] byteArray = byteArrayOutputStream3.toByteArray();
                    IoUtils.a(cVar);
                    IoUtils.a(gZIPOutputStream3);
                    IoUtils.a(byteArrayOutputStream3);
                    return byteArray;
                } catch (Exception e4) {
                    e = e4;
                    byteArrayOutputStream2 = byteArrayOutputStream3;
                    gZIPOutputStream2 = gZIPOutputStream3;
                    cVar2 = cVar;
                    byteArrayOutputStream = byteArrayOutputStream2;
                    gZIPOutputStream = gZIPOutputStream2;
                    CLog.b(FileStore.class, e);
                    IoUtils.a(cVar);
                    IoUtils.a(gZIPOutputStream2);
                    IoUtils.a(byteArrayOutputStream2);
                    return new byte[0];
                } catch (Throwable th4) {
                    th = th4;
                    cVar2 = cVar;
                    byteArrayOutputStream = byteArrayOutputStream3;
                    gZIPOutputStream = gZIPOutputStream3;
                    IoUtils.a(cVar2);
                    IoUtils.a(gZIPOutputStream);
                    IoUtils.a(byteArrayOutputStream);
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
                byteArrayOutputStream2 = null;
                gZIPOutputStream2 = null;
                cVar = null;
            } catch (Throwable th5) {
                th = th5;
                byteArrayOutputStream = null;
                gZIPOutputStream = null;
            }
        }
    }
}
