package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dec.class */
public final class dec extends dcu<dgq> {
    public dec() {
        super(dgq.class, new dea(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dgq mo16803a(dlw dlwVar) throws zzenn {
        return dgq.m16737a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesEaxKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dgq dgqVar) throws GeneralSecurityException {
        dgq dgqVar2 = dgqVar;
        dla.m16520b(dgqVar2.zzihc);
        dla.m16521a(dgqVar2.zzihd.mo16138b());
        if (dgqVar2.m16741a().zziht == 12 || dgqVar2.m16741a().zziht == 16) {
            return;
        }
        throw new GeneralSecurityException("invalid IV size; acceptable values have 12 or 16 bytes");
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dgq> mo16800d() {
        return new dee(this, dgr.class);
    }
}
