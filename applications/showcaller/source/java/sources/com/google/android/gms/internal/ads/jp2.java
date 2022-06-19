package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/jp2.class */
public final class jp2 {

    /* renamed from: a */
    private boolean f24944a;

    /* renamed from: a */
    public final boolean m14075a() {
        return this.f24944a;
    }

    /* renamed from: b */
    public final void m14074b(Context context) {
        oq2.m12546a(context, "Application Context cannot be null");
        if (!this.f24944a) {
            this.f24944a = true;
            bq2.m16299a().m16298b(context);
            wp2.m9495a().m9494b(context);
            mq2.m13115a(context);
            yp2.m8744a().m8742c(context);
        }
    }
}
