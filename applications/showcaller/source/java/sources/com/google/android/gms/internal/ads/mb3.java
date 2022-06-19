package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mb3.class */
public final class mb3 implements i13 {

    /* renamed from: a */
    private final xb3 f26530a;

    /* renamed from: b */
    private final a23 f26531b;

    public mb3(xb3 xb3Var, a23 a23Var, int i) {
        this.f26530a = xb3Var;
        this.f26531b = a23Var;
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r4v1, types: [byte[], byte[][]] */
    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        byte[] mo9294a = this.f26530a.mo9294a(bArr);
        return za3.m8471a(new byte[]{mo9294a, this.f26531b.mo14981a(za3.m8471a(new byte[]{bArr2, mo9294a, Arrays.copyOf(ByteBuffer.allocate(8).putLong(0L).array(), 8)}))});
    }
}
