package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.atw;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/djh.class */
public final class djh implements Callable {

    /* renamed from: a */
    private final din f14477a;

    /* renamed from: b */
    private final atw.C2798a.C2799a f14478b;

    public djh(din dinVar, atw.C2798a.C2799a c2799a) {
        this.f14477a = dinVar;
        this.f14478b = c2799a;
    }

    /* renamed from: a */
    public final Void call() {
        if (this.f14477a.m9397m() != null) {
            this.f14477a.m9397m().get();
        }
        atw.C2798a m9398l = this.f14477a.m9398l();
        if (m9398l != null) {
            try {
                synchronized (this.f14478b) {
                    atw.C2798a.C2799a c2799a = this.f14478b;
                    byte[] mo9984l = m9398l.mo9984l();
                    c2799a.mo10070a(mo9984l, 0, mo9984l.length, dci.m10136b());
                }
                return null;
            } catch (zzeco e) {
                return null;
            }
        }
        return null;
    }
}
