package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.ja */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ja.class */
final class C13596ja extends AbstractC13594iz {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v25, types: [int] */
    /* JADX WARN: Type inference failed for: r0v41, types: [int] */
    @Override // com.google.android.gms.internal.measurement.AbstractC13594iz
    /* renamed from: b */
    final int mo12507b(byte[] bArr, int i, int i2) {
        byte b;
        int i3 = i;
        while (i3 < i2 && bArr[i3] >= 0) {
            i3++;
        }
        int i4 = i3;
        if (i3 < i2) {
            while (true) {
                if (i4 < i2) {
                    int i5 = i4 + 1;
                    byte b2 = bArr[i4];
                    i4 = i5;
                    if (b2 < 0) {
                        if (b2 >= -32) {
                            if (b2 >= -16) {
                                if (i5 < i2 - 2) {
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
                                    b = C13598jc.m12501c(bArr, i5, i2);
                                    break;
                                }
                            } else if (i5 < i2 - 1) {
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
                                b = C13598jc.m12501c(bArr, i5, i2);
                                break;
                            }
                        } else if (i5 >= i2) {
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
        } else {
            b = 0;
        }
        return b;
    }
}
