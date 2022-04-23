package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzefb;
import java.security.GeneralSecurityException;
import p131c.p161d.p170b.p224d.p252g.p253a.t30;
import p131c.p161d.p170b.p224d.p252g.p253a.v30;
import p131c.p161d.p170b.p224d.p252g.p253a.y30;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzecb.class */
public final class zzecb extends zzeas<zzeel, zzeem> {
    public zzecb() {
        super(zzeel.class, zzeem.class, new t30(zzdzz.class));
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ zzelj mo12895a(zzeip zzeipVar) throws zzekj {
        return zzeel.m12756a(zzeipVar, zzejm.m12419a());
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final String mo12897a() {
        return "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey";
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: a */
    public final /* synthetic */ void mo12894a(zzelj zzeljVar) throws GeneralSecurityException {
        zzeel zzeelVar = (zzeel) zzeljVar;
        if (!zzeelVar.m12753n().isEmpty()) {
            zzeht.m12547a(zzeelVar.m12754m(), 0);
            y30.m26143a(zzeelVar.m12752o().m12736n());
            return;
        }
        throw new GeneralSecurityException("invalid ECIES private key");
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: c */
    public final zzefb.zza mo12892c() {
        return zzefb.zza.ASYMMETRIC_PRIVATE;
    }

    @Override // com.google.android.gms.internal.ads.zzeag
    /* renamed from: f */
    public final zzeaf<zzeeh, zzeel> mo12891f() {
        return new v30(this, zzeeh.class);
    }
}
