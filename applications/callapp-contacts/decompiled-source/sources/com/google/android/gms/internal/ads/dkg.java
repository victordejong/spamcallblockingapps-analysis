package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dkg.class */
public final class dkg implements dcn {

    /* renamed from: a  reason: collision with root package name */
    private final dkt f26893a;

    /* renamed from: b  reason: collision with root package name */
    private final ddb f26894b;

    /* renamed from: c  reason: collision with root package name */
    private final int f26895c;

    public dkg(dkt dktVar, ddb ddbVar, int i) {
        this.f26893a = dktVar;
        this.f26894b = ddbVar;
        this.f26895c = i;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.dcn
    public final byte[] a(byte[] bArr, byte[] bArr2) throws GeneralSecurityException {
        byte[] a2 = this.f26893a.a(bArr);
        byte[] bArr3 = bArr2;
        if (bArr2 == null) {
            bArr3 = new byte[0];
        }
        return djs.a(new byte[]{a2, this.f26894b.a(djs.a(new byte[]{bArr3, a2, Arrays.copyOf(ByteBuffer.allocate(8).putLong(bArr3.length * 8).array(), 8)}))});
    }
}
