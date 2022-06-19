package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.cvt;
import com.google.android.gms.internal.ads.cwa;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cvm.class */
public final class cvm {

    /* renamed from: a */
    private final Context f46637a;

    /* renamed from: b */
    private final Looper f46638b;

    public cvm(Context context, Looper looper) {
        this.f46637a = context;
        this.f46638b = looper;
    }

    /* renamed from: a */
    public final void m17163a(String str) {
        new cvl(this.f46637a, this.f46638b, cwa.m17151a().m17144a(this.f46637a.getPackageName()).m17145a(cwa.EnumC12291a.BLOCKED_IMPRESSION).m17146a(cvt.m17159a().m17154a(str).m17155a(cvt.EnumC12288a.BLOCKED_REASON_BACKGROUND)).mo16259f()).m17165b();
    }
}
