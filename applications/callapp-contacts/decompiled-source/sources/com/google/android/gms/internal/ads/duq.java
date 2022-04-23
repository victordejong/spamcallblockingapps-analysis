package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/duq.class */
public class duq {

    /* renamed from: a  reason: collision with root package name */
    private static final String f27232a = "duq";

    /* renamed from: b  reason: collision with root package name */
    private final dtg f27233b;

    /* renamed from: c  reason: collision with root package name */
    private final String f27234c;

    /* renamed from: d  reason: collision with root package name */
    private final String f27235d;
    private final Class<?>[] g;
    private final int e = 2;
    private volatile Method f = null;
    private CountDownLatch h = new CountDownLatch(1);

    public duq(dtg dtgVar, String str, String str2, Class<?>... clsArr) {
        this.f27233b = dtgVar;
        this.f27234c = str;
        this.f27235d = str2;
        this.g = clsArr;
        dtgVar.f27191b.submit(new dut(this));
    }

    private final String a(byte[] bArr, String str) throws zzej, UnsupportedEncodingException {
        return new String(this.f27233b.f27193d.a(bArr, str), "UTF-8");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(duq duqVar) {
        try {
            Class loadClass = duqVar.f27233b.f27192c.loadClass(duqVar.a(duqVar.f27233b.e, duqVar.f27234c));
            if (loadClass != null) {
                duqVar.f = loadClass.getMethod(duqVar.a(duqVar.f27233b.e, duqVar.f27235d), duqVar.g);
                if (duqVar.f != null) {
                }
            }
        } catch (zzej e) {
        } catch (UnsupportedEncodingException e2) {
        } catch (ClassNotFoundException e3) {
        } catch (NoSuchMethodException e4) {
        } catch (NullPointerException e5) {
        } finally {
            duqVar.h.countDown();
        }
    }

    public final Method a() {
        if (this.f != null) {
            return this.f;
        }
        Method method = null;
        if (!this.h.await(2L, TimeUnit.SECONDS)) {
            return null;
        }
        method = this.f;
        return method;
    }
}
