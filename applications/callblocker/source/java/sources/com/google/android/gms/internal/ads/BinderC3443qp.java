package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.C2657q;
/* renamed from: com.google.android.gms.internal.ads.qp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qp.class */
public final class BinderC3443qp extends AbstractBinderC3448qu {

    /* renamed from: a */
    private final String f17293a;

    /* renamed from: b */
    private final int f17294b;

    public BinderC3443qp(String str, int i) {
        this.f17293a = str;
        this.f17294b = i;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3445qr
    /* renamed from: a */
    public final String mo7292a() {
        return this.f17293a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3445qr
    /* renamed from: b */
    public final int mo7291b() {
        return this.f17294b;
    }

    public final boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            if (!(obj instanceof BinderC3443qp)) {
                z = false;
            } else {
                BinderC3443qp binderC3443qp = (BinderC3443qp) obj;
                z = false;
                if (C2657q.m13992a(this.f17293a, binderC3443qp.f17293a)) {
                    z = false;
                    if (C2657q.m13992a(Integer.valueOf(this.f17294b), Integer.valueOf(binderC3443qp.f17294b))) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }
}
