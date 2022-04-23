package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.q30;
import p131c.p161d.p170b.p224d.p252g.p253a.r30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzebw.class */
public final class zzebw extends zzeag<zzega> {
    public zzebw() {
        super(zzega.class, new r30(zzdzv.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzega mo12895a(zzeip zzeipVar) throws zzekj {
        return zzega.m12593a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzega zzegaVar) throws GeneralSecurityException {
        zzega zzegaVar2 = zzegaVar;
        zzeht.m12547a(zzegaVar2.m12591m(), 0);
        if (zzegaVar2.m12590n().size() != 32) {
            throw new GeneralSecurityException("invalid XChaCha20Poly1305Key: incorrect key length");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<?, zzega> mo12891f() {
        return new q30(this, zzegb.class);
    }
}
