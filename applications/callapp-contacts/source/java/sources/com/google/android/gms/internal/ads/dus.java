package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.beb;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dus.class */
public abstract class dus implements Callable {

    /* renamed from: a */
    protected final dtg f47636a;

    /* renamed from: b */
    protected final beb.C12217a.C12219b f47637b;

    /* renamed from: c */
    protected Method f47638c;

    /* renamed from: d */
    private final String f47639d = getClass().getSimpleName();

    /* renamed from: e */
    private final String f47640e;

    /* renamed from: f */
    private final String f47641f;

    /* renamed from: g */
    private final int f47642g;

    /* renamed from: h */
    private final int f47643h;

    public dus(dtg dtgVar, String str, String str2, beb.C12217a.C12219b c12219b, int i, int i2) {
        this.f47636a = dtgVar;
        this.f47640e = str;
        this.f47641f = str2;
        this.f47637b = c12219b;
        this.f47642g = i;
        this.f47643h = i2;
    }

    /* renamed from: a */
    protected abstract void mo15698a() throws IllegalAccessException, InvocationTargetException;

    /* renamed from: b */
    public Void call() throws Exception {
        try {
            long nanoTime = System.nanoTime();
            Method m15732a = this.f47636a.m15732a(this.f47640e, this.f47641f);
            this.f47638c = m15732a;
            if (m15732a == null) {
                return null;
            }
            mo15698a();
            cwd cwdVar = this.f47636a.f47554h;
            if (cwdVar == null) {
                return null;
            }
            int i = this.f47642g;
            if (i == Integer.MIN_VALUE) {
                return null;
            }
            cwdVar.m17142a(this.f47643h, i, (System.nanoTime() - nanoTime) / 1000);
            return null;
        } catch (IllegalAccessException | InvocationTargetException e) {
            return null;
        }
    }
}
