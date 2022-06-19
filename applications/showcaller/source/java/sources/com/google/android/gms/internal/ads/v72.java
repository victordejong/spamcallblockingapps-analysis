package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/v72.class */
public final class v72 implements il1 {

    /* renamed from: a */
    final /* synthetic */ x92 f31090a;

    public /* synthetic */ v72(x92 x92Var, w82 w82Var) {
        this.f31090a = x92Var;
    }

    @Override // com.google.android.gms.internal.ads.il1
    /* renamed from: a */
    public final void mo10079a(Exception exc) {
        hh1 hh1Var;
        C6952s9.m11098b("MediaCodecAudioRenderer", "Audio sink error", exc);
        hh1Var = this.f31090a.f31941F0;
        hh1Var.m14653i(exc);
    }

    @Override // com.google.android.gms.internal.ads.il1
    public final void zza() {
        AbstractC6949s6 abstractC6949s6;
        AbstractC6949s6 abstractC6949s62;
        abstractC6949s6 = this.f31090a.f31950O0;
        if (abstractC6949s6 != null) {
            abstractC6949s62 = this.f31090a.f31950O0;
            abstractC6949s62.mo11112b();
        }
    }
}
