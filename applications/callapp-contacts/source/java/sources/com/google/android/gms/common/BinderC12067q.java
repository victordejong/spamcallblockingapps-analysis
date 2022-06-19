package com.google.android.gms.common;

import java.util.Arrays;
/* renamed from: com.google.android.gms.common.q */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/q.class */
final class BinderC12067q extends AbstractBinderC12066p {

    /* renamed from: a */
    private final byte[] f39584a;

    public BinderC12067q(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f39584a = bArr;
    }

    @Override // com.google.android.gms.common.AbstractBinderC12066p
    /* renamed from: d */
    public final byte[] mo19073d() {
        return this.f39584a;
    }
}
