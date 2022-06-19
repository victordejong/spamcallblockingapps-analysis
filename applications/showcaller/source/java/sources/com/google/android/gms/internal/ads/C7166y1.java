package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* renamed from: com.google.android.gms.internal.ads.y1 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/y1.class */
public final class C7166y1 {

    /* renamed from: a */
    private final C6869q0 f32381a;

    /* renamed from: b */
    private final String f32382b;

    /* renamed from: c */
    private final String f32383c;

    /* renamed from: e */
    private final Class<?>[] f32385e;

    /* renamed from: d */
    private volatile Method f32384d = null;

    /* renamed from: f */
    private final CountDownLatch f32386f = new CountDownLatch(1);

    public C7166y1(C6869q0 c6869q0, String str, String str2, Class<?>... clsArr) {
        this.f32381a = c6869q0;
        this.f32382b = str;
        this.f32383c = str2;
        this.f32385e = clsArr;
        c6869q0.m12079e().submit(new RunnableC7129x1(this));
    }

    /* renamed from: a */
    public static /* synthetic */ void m8995a(C7166y1 c7166y1) {
        CountDownLatch countDownLatch;
        Class loadClass;
        try {
            loadClass = c7166y1.f32381a.m12078f().loadClass(c7166y1.m8993c(c7166y1.f32381a.m12076h(), c7166y1.f32382b));
        } catch (zzaaw | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException e) {
        } catch (NullPointerException e2) {
            countDownLatch = c7166y1.f32386f;
        } catch (Throwable th) {
            c7166y1.f32386f.countDown();
            throw th;
        }
        if (loadClass == null) {
            countDownLatch = c7166y1.f32386f;
        } else {
            c7166y1.f32384d = loadClass.getMethod(c7166y1.m8993c(c7166y1.f32381a.m12076h(), c7166y1.f32383c), c7166y1.f32385e);
            if (c7166y1.f32384d == null) {
                countDownLatch = c7166y1.f32386f;
            }
            countDownLatch = c7166y1.f32386f;
        }
        countDownLatch.countDown();
    }

    /* renamed from: c */
    private final String m8993c(byte[] bArr, String str) {
        return new String(this.f32381a.m12077g().m9393b(bArr, str), "UTF-8");
    }

    /* renamed from: b */
    public final Method m8994b() {
        if (this.f32384d != null) {
            return this.f32384d;
        }
        Method method = null;
        if (!this.f32386f.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.f32384d;
        return method;
    }
}
