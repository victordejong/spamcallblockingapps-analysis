package com.google.android.gms.common;

import java.util.Arrays;
/* renamed from: com.google.android.gms.common.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/r.class */
final class BinderC2683r extends AbstractBinderC2680o {

    /* renamed from: a */
    private final byte[] f7449a;

    public BinderC2683r(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f7449a = bArr;
    }

    @Override // com.google.android.gms.common.AbstractBinderC2680o
    /* renamed from: c */
    public final byte[] mo13898c() {
        return this.f7449a;
    }
}
