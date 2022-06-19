package com.google.android.gms.ads.internal.util;

import com.google.android.gms.ads.internal.C1407r;
import javax.annotation.concurrent.GuardedBy;
/* renamed from: com.google.android.gms.ads.internal.util.m0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/m0.class */
public final class C1435m0 {

    /* renamed from: a */
    private long f5605a;
    @GuardedBy("lock")

    /* renamed from: b */
    private long f5606b = Long.MIN_VALUE;

    /* renamed from: c */
    private final Object f5607c = new Object();

    public C1435m0(long j) {
        this.f5605a = j;
    }

    /* renamed from: a */
    public final boolean m8740a() {
        synchronized (this.f5607c) {
            long m8245c = C1407r.m8913k().m8245c();
            if (this.f5606b + this.f5605a > m8245c) {
                return false;
            }
            this.f5606b = m8245c;
            return true;
        }
    }

    /* renamed from: b */
    public final void m8739b(long j) {
        synchronized (this.f5607c) {
            this.f5605a = j;
        }
    }
}
