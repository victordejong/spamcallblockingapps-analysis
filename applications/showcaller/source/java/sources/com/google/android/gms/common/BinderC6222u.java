package com.google.android.gms.common;

import java.util.Arrays;
/* renamed from: com.google.android.gms.common.u */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/u.class */
final class BinderC6222u extends AbstractBinderC6221t {

    /* renamed from: e */
    private final byte[] f19707e;

    public BinderC6222u(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f19707e = bArr;
    }

    @Override // com.google.android.gms.common.AbstractBinderC6221t
    /* renamed from: J0 */
    public final byte[] mo16759J0() {
        return this.f19707e;
    }
}
