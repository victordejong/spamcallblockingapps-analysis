package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bif.class */
public final class bif {

    /* renamed from: a */
    final atx f44012a;

    /* renamed from: b */
    private final aeb f44013b;

    /* renamed from: c */
    private final Context f44014c;

    /* renamed from: d */
    private final die f44015d;

    /* renamed from: e */
    private final C12256bw f44016e;

    /* renamed from: f */
    private final zzbar f44017f;

    /* renamed from: g */
    private final zzb f44018g;

    /* renamed from: h */
    private final ehk f44019h;

    public bif(aeb aebVar, Context context, die dieVar, C12256bw c12256bw, zzbar zzbarVar, zzb zzbVar, ehk ehkVar, atx atxVar) {
        this.f44013b = aebVar;
        this.f44014c = context;
        this.f44015d = dieVar;
        this.f44016e = c12256bw;
        this.f44017f = zzbarVar;
        this.f44018g = zzbVar;
        this.f44019h = ehkVar;
        this.f44012a = atxVar;
    }

    /* renamed from: a */
    public final adt m17828a(zzvt zzvtVar, cov covVar, coz cozVar) throws zzbfu {
        return aeb.m18830a(this.f44014c, afh.m18775a(zzvtVar), zzvtVar.zzadd, false, false, this.f44015d, this.f44016e, this.f44017f, new bii(this), this.f44018g, this.f44019h, covVar, cozVar);
    }
}
