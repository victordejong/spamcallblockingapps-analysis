package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.internal.ads.cmm;
import com.google.android.gms.internal.ads.cmt;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cme.class */
public final class cme {

    /* renamed from: a */
    private final Context f13330a;

    /* renamed from: b */
    private final Looper f13331b;

    public cme(Context context, Looper looper) {
        this.f13330a = context;
        this.f13331b = looper;
    }

    /* renamed from: a */
    public final void m11056a(String str) {
        new cmd(this.f13330a, this.f13331b, (cmt) ((dcw) cmt.m11019a().m11007a(this.f13330a.getPackageName()).m11008a(cmt.EnumC2867a.BLOCKED_IMPRESSION).m11009a(cmm.m11029a().m11020a(str).m11021a(cmm.EnumC2865a.BLOCKED_REASON_BACKGROUND)).mo9987g())).m11058a();
    }
}
