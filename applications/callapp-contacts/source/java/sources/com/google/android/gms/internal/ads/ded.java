package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ded.class */
public final class ded extends dcu<dgv> {
    public ded() {
        super(dgv.class, new deg(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ dgv mo16803a(dlw dlwVar) throws zzenn {
        return dgv.m16723a(dlwVar, dmt.m16396a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final String mo16806a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: a */
    public final /* synthetic */ void mo16802a(dgv dgvVar) throws GeneralSecurityException {
        dgv dgvVar2 = dgvVar;
        dla.m16520b(dgvVar2.zzihc);
        dla.m16521a(dgvVar2.zzihd.mo16138b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: b */
    public final dih.EnumC12358a mo16801b() {
        return dih.EnumC12358a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    /* renamed from: d */
    public final dcx<?, dgv> mo16800d() {
        return new def(this, dgy.class);
    }
}
