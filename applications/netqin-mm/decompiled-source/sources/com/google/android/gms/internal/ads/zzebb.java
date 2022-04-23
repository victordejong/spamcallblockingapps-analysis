package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.c30;
import p131c.p161d.p170b.p224d.p252g.p253a.d30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebb.class */
public final class zzebb extends zzeag<zzede> {
    public zzebb() {
        super(zzede.class, new d30(zzdzv.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzede mo12895a(zzeip zzeipVar) throws zzekj {
        return zzede.m12859a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzede zzedeVar) throws GeneralSecurityException {
        zzeht.m12547a(zzedeVar.m12857m(), 0);
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzede> mo12891f() {
        return new c30(this, zzedh.class);
    }
}
