package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/ja.class */
final class ja extends iz {
    @Override // com.google.android.gms.internal.measurement.iz
    final int b(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = i;
        while (i4 < i2 && bArr[i4] >= 0) {
            i4++;
        }
        int i5 = i4;
        if (i4 < i2) {
            while (true) {
                if (i5 < i2) {
                    int i6 = i5 + 1;
                    byte b2 = bArr[i5];
                    i5 = i6;
                    if (b2 < 0) {
                        if (b2 >= -32) {
                            if (b2 >= -16) {
                                if (i6 < i2 - 2) {
                                    int i7 = i6 + 1;
                                    byte b3 = bArr[i6];
                                    if (b3 > -65 || (((b2 << 28) + (b3 + 112)) >> 30) != 0) {
                                        break;
                                    }
                                    int i8 = i7 + 1;
                                    if (bArr[i7] > -65) {
                                        break;
                                    }
                                    i5 = i8 + 1;
                                    if (bArr[i8] > -65) {
                                        break;
                                    }
                                } else {
                                    i3 = jc.c(bArr, i6, i2);
                                    break;
                                }
                            } else if (i6 < i2 - 1) {
                                int i9 = i6 + 1;
                                byte b4 = bArr[i6];
                                if (b4 > -65 || ((b2 == -32 && b4 < -96) || (b2 == -19 && b4 >= -96))) {
                                    break;
                                }
                                i5 = i9 + 1;
                                if (bArr[i9] > -65) {
                                    break;
                                }
                            } else {
                                i3 = jc.c(bArr, i6, i2);
                                break;
                            }
                        } else if (i6 < i2) {
                            if (b2 < -62) {
                                break;
                            }
                            i5 = i6 + 1;
                            if (bArr[i6] > -65) {
                                break;
                            }
                        } else {
                            i3 = b2;
                            break;
                        }
                    }
                } else {
                    i3 = 0;
                    break;
                }
            }
        } else {
            i3 = 0;
        }
        return i3;
    }
}
