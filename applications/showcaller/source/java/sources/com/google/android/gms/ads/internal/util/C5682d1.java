package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.C5667s;
/* renamed from: com.google.android.gms.ads.internal.util.d1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/d1.class */
public final class C5682d1 {

    /* renamed from: a */
    private long f18461a;

    /* renamed from: b */
    private long f18462b = Long.MIN_VALUE;

    /* renamed from: c */
    private final Object f18463c = new Object();

    public C5682d1(long j) {
        this.f18461a = j;
    }

    /* renamed from: a */
    public final boolean m18046a() {
        synchronized (this.f18463c) {
            long mo16806b = C5667s.m18153k().mo16806b();
            if (this.f18462b + this.f18461a > mo16806b) {
                return false;
            }
            this.f18462b = mo16806b;
            return true;
        }
    }

    /* renamed from: b */
    public final void m18045b(long j) {
        synchronized (this.f18463c) {
            this.f18461a = j;
        }
    }
}
