package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dhb.class */
public class dhb extends dhd implements adi {

    /* renamed from: f */
    private agj f14333f;

    /* renamed from: g */
    private String f14334g;

    /* renamed from: h */
    private boolean f14335h;

    /* renamed from: i */
    private long f14336i;

    public dhb(String str) {
        this.f14334g = str;
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final String mo9473a() {
        return this.f14334g;
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final void mo9472a(agj agjVar) {
        this.f14333f = agjVar;
    }

    @Override // com.google.android.gms.internal.ads.dhd
    /* renamed from: a */
    public final void mo9467a(dhf dhfVar, long j, aci aciVar) {
        this.f14351b = dhfVar;
        this.f14352c = dhfVar.mo9459b();
        this.f14353d = this.f14352c - ((this.f14335h || 8 + j >= 4294967296L) ? 16 : 8);
        dhfVar.mo9462a(dhfVar.mo9459b() + j);
        this.f14354e = dhfVar.mo9459b();
        this.f14350a = aciVar;
    }

    @Override // com.google.android.gms.internal.ads.adi
    /* renamed from: a */
    public final void mo9471a(dhf dhfVar, ByteBuffer byteBuffer, long j, aci aciVar) {
        this.f14336i = dhfVar.mo9459b() - byteBuffer.remaining();
        this.f14335h = byteBuffer.remaining() == 16;
        mo9467a(dhfVar, j, aciVar);
    }
}
