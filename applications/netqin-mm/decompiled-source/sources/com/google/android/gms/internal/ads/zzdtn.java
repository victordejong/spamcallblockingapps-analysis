package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.internal.ads.zzdty;
import com.google.android.gms.internal.ads.zzduc;
import p131c.p161d.p170b.p224d.p252g.p253a.e00;
@ShowFirstParty
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdtn.class */
public final class zzdtn {

    /* renamed from: a */
    public final Context f27820a;

    /* renamed from: b */
    public final Looper f27821b;

    public zzdtn(Context context, Looper looper) {
        this.f27820a = context;
        this.f27821b = looper;
    }

    /* renamed from: a */
    public final void m13199a(String str) {
        zzduc.zza m = zzduc.m13169m();
        m.m13165a(this.f27820a.getPackageName());
        m.m13166a(zzduc.zzb.BLOCKED_IMPRESSION);
        zzdty.zzb m2 = zzdty.m13186m();
        m2.m13183a(str);
        m2.m13184a(zzdty.zza.BLOCKED_REASON_BACKGROUND);
        m.m13167a(m2);
        new e00(this.f27820a, this.f27821b, (zzduc) ((zzejz) m.mo12342K())).m27061b();
    }
}
