package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dih;
import java.security.GeneralSecurityException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ded.class */
public final class ded extends dcu<dgv> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ded() {
        super(dgv.class, new deg(dcn.class));
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ dgv a(dlw dlwVar) throws zzenn {
        return dgv.a(dlwVar, dmt.a());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final String a() {
        return "type.googleapis.com/google.crypto.tink.AesGcmKey";
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final /* synthetic */ void a(dgv dgvVar) throws GeneralSecurityException {
        dgv dgvVar2 = dgvVar;
        dla.b(dgvVar2.zzihc);
        dla.a(dgvVar2.zzihd.b());
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dih.a b() {
        return dih.a.SYMMETRIC;
    }

    @Override // com.google.android.gms.internal.ads.dcu
    public final dcx<?, dgv> d() {
        return new def(this, dgy.class);
    }
}
