package com.google.android.gms.internal.ads;

import com.android.volley.Request;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p170b.p224d.p252g.p253a.nb0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgk.class */
public class zzgk {

    /* renamed from: a */
    public final zzex f28228a;

    /* renamed from: b */
    public final String f28229b;

    /* renamed from: c */
    public final String f28230c;

    /* renamed from: e */
    public final Class<?>[] f28232e;

    /* renamed from: d */
    public volatile Method f28231d = null;

    /* renamed from: f */
    public CountDownLatch f28233f = new CountDownLatch(1);

    public zzgk(zzex zzexVar, String str, String str2, Class<?>... clsArr) {
        this.f28228a = zzexVar;
        this.f28229b = str;
        this.f28230c = str2;
        this.f28232e = clsArr;
        zzexVar.m12160e().submit(new nb0(this));
    }

    /* renamed from: a */
    public final String m12121a(byte[] bArr, String str) throws zzeh, UnsupportedEncodingException {
        return new String(this.f28228a.m12158g().m12537a(bArr, str), Request.DEFAULT_PARAMS_ENCODING);
    }

    /* renamed from: a */
    public final void m12123a() {
        try {
            Class loadClass = this.f28228a.m12159f().loadClass(m12121a(this.f28228a.m12157h(), this.f28229b));
            if (loadClass != null) {
                this.f28231d = loadClass.getMethod(m12121a(this.f28228a.m12157h(), this.f28230c), this.f28232e);
                if (this.f28231d != null) {
                }
            }
        } catch (zzeh e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            this.f28233f.countDown();
        }
    }

    /* renamed from: b */
    public final Method m12120b() {
        if (this.f28231d != null) {
            return this.f28231d;
        }
        Method method = null;
        if (!this.f28233f.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.f28231d;
        return method;
    }
}
