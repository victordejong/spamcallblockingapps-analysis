package com.google.android.gms.internal;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/x.class */
final class x {

    /* renamed from: a  reason: collision with root package name */
    final int f4226a;

    /* renamed from: b  reason: collision with root package name */
    final byte[] f4227b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public x(int i, byte[] bArr) {
        this.f4226a = i;
        this.f4227b = bArr;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof x)) {
                z = false;
            } else {
                x xVar = (x) obj;
                if (this.f4226a != xVar.f4226a || !Arrays.equals(this.f4227b, xVar.f4227b)) {
                    z = false;
                }
            }
        }
        return z;
    }

    public final int hashCode() {
        return ((this.f4226a + 527) * 31) + Arrays.hashCode(this.f4227b);
    }
}
