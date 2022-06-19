package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djx.class */
public class djx {

    /* renamed from: a */
    private static final String f14491a = djx.class.getSimpleName();

    /* renamed from: b */
    private final din f14492b;

    /* renamed from: c */
    private final String f14493c;

    /* renamed from: d */
    private final String f14494d;

    /* renamed from: g */
    private final Class<?>[] f14497g;

    /* renamed from: e */
    private final int f14495e = 2;

    /* renamed from: f */
    private volatile Method f14496f = null;

    /* renamed from: h */
    private CountDownLatch f14498h = new CountDownLatch(1);

    public djx(din dinVar, String str, String str2, Class<?>... clsArr) {
        this.f14492b = dinVar;
        this.f14493c = str;
        this.f14494d = str2;
        this.f14497g = clsArr;
        this.f14492b.m9407c().submit(new dkb(this));
    }

    /* renamed from: a */
    private final String m9367a(byte[] bArr, String str) {
        return new String(this.f14492b.m9405e().m10625a(bArr, str), "UTF-8");
    }

    /* renamed from: b */
    public final void m9366b() {
        try {
            Class loadClass = this.f14492b.m9406d().loadClass(m9367a(this.f14492b.m9404f(), this.f14493c));
            if (loadClass == null) {
                return;
            }
            this.f14496f = loadClass.getMethod(m9367a(this.f14492b.m9404f(), this.f14494d), this.f14497g);
            if (this.f14496f != null) {
            }
        } catch (zzdy e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            this.f14498h.countDown();
        }
    }

    /* renamed from: a */
    public final Method m9369a() {
        Method method;
        if (this.f14496f != null) {
            method = this.f14496f;
        } else {
            method = null;
            try {
                if (this.f14498h.await(2L, TimeUnit.SECONDS)) {
                    method = this.f14496f;
                }
            } catch (InterruptedException e) {
                method = null;
            }
        }
        return method;
    }
}
