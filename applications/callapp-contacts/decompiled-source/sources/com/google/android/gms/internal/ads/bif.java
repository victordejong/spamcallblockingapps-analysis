package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bif.class */
public final class bif {

    /* renamed from: a  reason: collision with root package name */
    final atx f24496a;

    /* renamed from: b  reason: collision with root package name */
    private final aeb f24497b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f24498c;

    /* renamed from: d  reason: collision with root package name */
    private final die f24499d;
    private final bw e;
    private final zzbar f;
    private final zzb g;
    private final ehk h;

    public bif(aeb aebVar, Context context, die dieVar, bw bwVar, zzbar zzbarVar, zzb zzbVar, ehk ehkVar, atx atxVar) {
        this.f24497b = aebVar;
        this.f24498c = context;
        this.f24499d = dieVar;
        this.e = bwVar;
        this.f = zzbarVar;
        this.g = zzbVar;
        this.h = ehkVar;
        this.f24496a = atxVar;
    }

    public final adt a(zzvt zzvtVar, cov covVar, coz cozVar) throws zzbfu {
        return aeb.a(this.f24498c, afh.a(zzvtVar), zzvtVar.zzadd, false, false, this.f24499d, this.e, this.f, new bii(this), this.g, this.h, covVar, cozVar);
    }
}
