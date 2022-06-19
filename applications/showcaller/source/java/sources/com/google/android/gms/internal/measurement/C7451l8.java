package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.l8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l8.class */
final class C7451l8 extends AbstractC7437k8 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v24, types: [int] */
    /* JADX WARN: Type inference failed for: r0v40, types: [int] */
    @Override // com.google.android.gms.internal.measurement.AbstractC7437k8
    /* renamed from: b */
    final int mo7185b(int i, byte[] bArr, int i2, int i3) {
        byte b;
        while (i2 < i3 && bArr[i2] >= 0) {
            i2++;
        }
        int i4 = i2;
        if (i2 >= i3) {
            b = 0;
        } else {
            while (true) {
                if (i4 < i3) {
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    i4 = i5;
                    if (b2 < 0) {
                        if (b2 >= -32) {
                            if (b2 >= -16) {
                                if (i5 < i3 - 2) {
                                    int i6 = i5 + 1;
                                    byte b3 = bArr[i5];
                                    if (b3 > -65 || (((b2 << 28) + (b3 + 112)) >> 30) != 0) {
                                        break;
                                    }
                                    int i7 = i6 + 1;
                                    if (bArr[i6] > -65) {
                                        break;
                                    }
                                    i4 = i7 + 1;
                                    if (bArr[i7] > -65) {
                                        break;
                                    }
                                } else {
                                    b = C7465m8.m7103f(bArr, i5, i3);
                                    break;
                                }
                            } else if (i5 < i3 - 1) {
                                int i8 = i5 + 1;
                                byte b4 = bArr[i5];
                                if (b4 > -65 || ((b2 == -32 && b4 < -96) || (b2 == -19 && b4 >= -96))) {
                                    break;
                                }
                                i4 = i8 + 1;
                                if (bArr[i8] > -65) {
                                    break;
                                }
                            } else {
                                b = C7465m8.m7103f(bArr, i5, i3);
                                break;
                            }
                        } else if (i5 >= i3) {
                            b = b2;
                            break;
                        } else if (b2 < -62) {
                            break;
                        } else {
                            i4 = i5 + 1;
                            if (bArr[i5] > -65) {
                                break;
                            }
                        }
                    }
                } else {
                    b = 0;
                    break;
                }
            }
            b = -1;
        }
        return b;
    }
}
