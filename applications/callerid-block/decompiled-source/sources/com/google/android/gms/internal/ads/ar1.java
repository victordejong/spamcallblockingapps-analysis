package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ar1.class */
public final class ar1 {

    /* renamed from: a */
    private boolean f6071a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m8100a() {
        return this.f6071a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final void m8099b(Context context) {
        fs1.m7449a(context, "Application Context cannot be null");
        if (!this.f6071a) {
            this.f6071a = true;
            tr1.m5490a().m5489b(context);
            or1.m6266a().m6265b(context);
            ds1.m7696a(context);
            qr1.m6064a().m6062c(context);
        }
    }
}
