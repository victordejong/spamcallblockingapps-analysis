package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cuk.class */
public final class cuk implements csm {

    /* renamed from: a */
    private static final byte[] f13701a = new byte[0];

    /* renamed from: b */
    private final cya f13702b;

    /* renamed from: c */
    private final csm f13703c;

    public cuk(cya cyaVar, csm csmVar) {
        this.f13702b = cyaVar;
        this.f13703c = csmVar;
    }

    @Override // com.google.android.gms.internal.ads.csm
    /* renamed from: a */
    public final byte[] mo10254a(byte[] bArr, byte[] bArr2) {
        byte[] mo9984l = cti.m10673b(this.f13702b).mo9984l();
        byte[] mo10254a = this.f13703c.mo10254a(mo9984l, f13701a);
        byte[] mo10254a2 = ((csm) cti.m10675a(this.f13702b.m10407a(), mo9984l, csm.class)).mo10254a(bArr, bArr2);
        return ByteBuffer.allocate(mo10254a.length + 4 + mo10254a2.length).putInt(mo10254a.length).put(mo10254a).put(mo10254a2).array();
    }
}
