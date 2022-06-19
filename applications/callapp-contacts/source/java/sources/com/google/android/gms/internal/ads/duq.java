package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duq.class */
public class duq {

    /* renamed from: a */
    private static final String f47627a = "duq";

    /* renamed from: b */
    private final dtg f47628b;

    /* renamed from: c */
    private final String f47629c;

    /* renamed from: d */
    private final String f47630d;

    /* renamed from: g */
    private final Class<?>[] f47633g;

    /* renamed from: e */
    private final int f47631e = 2;

    /* renamed from: f */
    private volatile Method f47632f = null;

    /* renamed from: h */
    private CountDownLatch f47634h = new CountDownLatch(1);

    public duq(dtg dtgVar, String str, String str2, Class<?>... clsArr) {
        this.f47628b = dtgVar;
        this.f47629c = str;
        this.f47630d = str2;
        this.f47633g = clsArr;
        dtgVar.f47548b.submit(new dut(this));
    }

    /* renamed from: a */
    private final String m15699a(byte[] bArr, String str) throws zzej, UnsupportedEncodingException {
        return new String(this.f47628b.f47550d.m16540a(bArr, str), "UTF-8");
    }

    /* renamed from: a */
    public static /* synthetic */ void m15700a(duq duqVar) {
        try {
            Class loadClass = duqVar.f47628b.f47549c.loadClass(duqVar.m15699a(duqVar.f47628b.f47551e, duqVar.f47629c));
            if (loadClass == null) {
                return;
            }
            duqVar.f47632f = loadClass.getMethod(duqVar.m15699a(duqVar.f47628b.f47551e, duqVar.f47630d), duqVar.f47633g);
            if (duqVar.f47632f != null) {
            }
        } catch (zzej e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            duqVar.f47634h.countDown();
        }
    }

    /* renamed from: a */
    public final Method m15701a() {
        if (this.f47632f != null) {
            return this.f47632f;
        }
        Method method = null;
        if (!this.f47634h.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.f47632f;
        return method;
    }
}
