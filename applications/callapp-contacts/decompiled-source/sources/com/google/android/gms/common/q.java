package com.google.android.gms.common;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/q.class */
final class q extends p {

    /* renamed from: a  reason: collision with root package name */
    private final byte[] f22918a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(byte[] bArr) {
        super(Arrays.copyOfRange(bArr, 0, 25));
        this.f22918a = bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.p
    public final byte[] d() {
        return this.f22918a;
    }
}
