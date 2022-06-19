package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.C5845s;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ib1.class */
public final class ib1 extends m81<C5845s.AbstractC5846a> {

    /* renamed from: e */
    private boolean f24186e;

    public ib1(Set<ja1<C5845s.AbstractC5846a>> set) {
        super(set);
    }

    /* renamed from: b */
    public final void m14459b() {
        m13339Q0(eb1.f22055a);
    }

    /* renamed from: c */
    public final void m14458c() {
        synchronized (this) {
            m13339Q0(fb1.f22774a);
            this.f24186e = true;
        }
    }

    /* renamed from: e */
    public final void m14457e() {
        synchronized (this) {
            if (!this.f24186e) {
                m13339Q0(gb1.f23280a);
                this.f24186e = true;
            }
            m13339Q0(hb1.f23842a);
        }
    }

    public final void zza() {
        m13339Q0(db1.f21571a);
    }
}
