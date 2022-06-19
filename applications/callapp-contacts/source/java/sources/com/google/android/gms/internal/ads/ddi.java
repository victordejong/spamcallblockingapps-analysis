package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ddi.class */
final class ddi implements Comparable<ddi> {

    /* renamed from: a */
    private final byte[] f46977a;

    /* JADX INFO: Access modifiers changed from: private */
    public ddi(byte[] bArr) {
        this.f46977a = Arrays.copyOf(bArr, bArr.length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [int] */
    /* JADX WARN: Type inference failed for: r0v28, types: [int] */
    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(ddi ddiVar) {
        byte b;
        byte b2;
        ddi ddiVar2 = ddiVar;
        byte[] bArr = this.f46977a;
        int length = bArr.length;
        byte[] bArr2 = ddiVar2.f46977a;
        if (length != bArr2.length) {
            b = bArr.length;
            b2 = bArr2.length;
        } else {
            int i = 0;
            while (true) {
                byte[] bArr3 = this.f46977a;
                if (i >= bArr3.length) {
                    return 0;
                }
                byte b3 = bArr3[i];
                byte[] bArr4 = ddiVar2.f46977a;
                if (b3 != bArr4[i]) {
                    b = bArr3[i];
                    b2 = bArr4[i];
                    break;
                }
                i++;
            }
        }
        return b - b2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof ddi)) {
            return false;
        }
        return Arrays.equals(this.f46977a, ((ddi) obj).f46977a);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f46977a);
    }

    public final String toString() {
        byte[] bArr = this.f46977a;
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            int i = b & 255;
            sb.append("0123456789abcdef".charAt(i / 16));
            sb.append("0123456789abcdef".charAt(i % 16));
        }
        return sb.toString();
    }
}
