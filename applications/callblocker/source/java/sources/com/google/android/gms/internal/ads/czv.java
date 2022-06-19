package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czv.class */
public final class czv implements csm {

    /* renamed from: a */
    private final dai f13877a;

    /* renamed from: b */
    private final ctd f13878b;

    /* renamed from: c */
    private final int f13879c;

    public czv(dai daiVar, ctd ctdVar, int i) {
        this.f13877a = daiVar;
        this.f13878b = ctdVar;
        this.f13879c = i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.csm
    /* renamed from: a */
    public final byte[] mo10254a(byte[] bArr, byte[] bArr2) {
        byte[] mo10274a = this.f13877a.mo10274a(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return czh.m10302a(new byte[]{mo10274a, this.f13878b.mo10275a(czh.m10302a(new byte[]{bArr3, mo10274a, Arrays.copyOf(ByteBuffer.allocate(8).putLong(8 * bArr3.length).array(), 8)}))});
    }
}
