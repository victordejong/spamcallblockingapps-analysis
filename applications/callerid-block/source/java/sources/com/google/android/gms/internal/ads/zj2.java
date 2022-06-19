package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zj2.class */
public final class zj2 {

    /* renamed from: a */
    private final si2 f9356a;

    /* renamed from: b */
    private final String f9357b;

    /* renamed from: c */
    private final String f9358c;

    /* renamed from: e */
    private final Class<?>[] f9360e;

    /* renamed from: d */
    private volatile Method f9359d = null;

    /* renamed from: f */
    private final CountDownLatch f9361f = new CountDownLatch(1);

    public zj2(si2 si2Var, String str, String str2, Class<?>... clsArr) {
        this.f9356a = si2Var;
        this.f9357b = str;
        this.f9358c = str2;
        this.f9360e = clsArr;
        si2Var.m5683d().submit(new yj2(this));
    }

    /* renamed from: b */
    public static /* synthetic */ void m4615b(zj2 zj2Var) {
        try {
            Class loadClass = zj2Var.f9356a.m5682e().loadClass(zj2Var.m4614c(zj2Var.f9356a.m5680g(), zj2Var.f9357b));
            if (loadClass != null) {
                zj2Var.f9359d = loadClass.getMethod(zj2Var.m4614c(zj2Var.f9356a.m5680g(), zj2Var.f9358c), zj2Var.f9360e);
                Method method = zj2Var.f9359d;
            }
        } catch (zzfj | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException | NullPointerException e) {
        } catch (Throwable th) {
            zj2Var.f9361f.countDown();
            throw th;
        }
        zj2Var.f9361f.countDown();
    }

    /* renamed from: c */
    private final String m4614c(byte[] bArr, String str) {
        return new String(this.f9356a.m5681f().m8133b(bArr, str), "UTF-8");
    }

    /* renamed from: a */
    public final Method m4616a() {
        if (this.f9359d != null) {
            return this.f9359d;
        }
        Method method = null;
        if (!this.f9361f.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.f9359d;
        return method;
    }
}
