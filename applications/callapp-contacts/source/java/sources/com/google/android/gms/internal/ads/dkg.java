package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkg.class */
public final class dkg implements dcn {

    /* renamed from: a */
    private final dkt f47143a;

    /* renamed from: b */
    private final ddb f47144b;

    /* renamed from: c */
    private final int f47145c;

    public dkg(dkt dktVar, ddb ddbVar, int i) {
        this.f47143a = dktVar;
        this.f47144b = ddbVar;
        this.f47145c = i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.dcn
    /* renamed from: a */
    public final byte[] mo16516a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] mo16530a = this.f47143a.mo16530a(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return djs.m16560a(new byte[]{mo16530a, this.f47144b.mo16527a(djs.m16560a(new byte[]{bArr3, mo16530a, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr3.length * 8).array(), 8)}))});
    }
}
