package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r33.class */
public final class r33 implements i13 {

    /* renamed from: a */
    private static final byte[] f28758a = new byte[0];

    /* renamed from: b */
    private final d93 f28759b;

    /* renamed from: c */
    private final i13 f28760c;

    public r33(d93 d93Var, i13 i13Var) {
        this.f28759b = d93Var;
        this.f28760c = i13Var;
    }

    @Override // com.google.android.gms.internal.ads.i13
    /* renamed from: a */
    public final byte[] mo8531a(byte[] bArr, byte[] bArr2) {
        byte[] mo10723K = p23.m12452h(this.f28759b).mo10723K();
        byte[] mo8531a = this.f28760c.mo8531a(mo10723K, f28758a);
        byte[] mo8531a2 = ((i13) p23.m12450j(this.f28759b.m15860C(), mo10723K, i13.class)).mo8531a(bArr, bArr2);
        int length = mo8531a.length;
        return ByteBuffer.allocate(length + 4 + mo8531a2.length).putInt(length).put(mo8531a).put(mo8531a2).array();
    }
}
