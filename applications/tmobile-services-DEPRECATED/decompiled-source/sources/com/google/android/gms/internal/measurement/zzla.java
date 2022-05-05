package com.google.android.gms.internal.measurement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzla.class */
public final class zzla {

    /* renamed from: a */
    private static final zzlb f8644a;

    static {
        f8644a = (!(zzkx.m12072m() && zzkx.m12067r()) || zzgk.m12658b()) ? new zzle() : new zzlg();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public static int m12043d(CharSequence charSequence) {
        int i;
        int i2;
        int length = charSequence.length();
        int i3 = 0;
        int i4 = 0;
        while (i4 < length && charSequence.charAt(i4) < 128) {
            i4++;
        }
        int i5 = length;
        while (true) {
            i = i5;
            if (i4 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i4);
            if (charAt < 2048) {
                i5 += (127 - charAt) >>> 31;
                i4++;
            } else {
                int length2 = charSequence.length();
                while (i4 < length2) {
                    char charAt2 = charSequence.charAt(i4);
                    if (charAt2 < 2048) {
                        i3 += (127 - charAt2) >>> 31;
                        i2 = i4;
                    } else {
                        int i6 = i3 + 2;
                        i3 = i6;
                        i2 = i4;
                        if (55296 <= charAt2) {
                            i3 = i6;
                            i2 = i4;
                            if (charAt2 > 57343) {
                                continue;
                            } else if (Character.codePointAt(charSequence, i4) >= 65536) {
                                i2 = i4 + 1;
                                i3 = i6;
                            } else {
                                throw new zzld(i4, length2);
                            }
                        } else {
                            continue;
                        }
                    }
                    i4 = i2 + 1;
                }
                i = i5 + i3;
            }
        }
        if (i >= length) {
            return i;
        }
        StringBuilder sb = new StringBuilder(54);
        sb.append("UTF-8 length does not fit in int: ");
        sb.append(i + 4294967296L);
        throw new IllegalArgumentException(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public static int m12042e(CharSequence charSequence, byte[] bArr, int i, int i2) {
        return f8644a.mo12016b(charSequence, bArr, i, i2);
    }

    /* renamed from: f */
    public static boolean m12041f(byte[] bArr) {
        return f8644a.m12033c(bArr, 0, bArr.length);
    }

    /* renamed from: g */
    public static boolean m12040g(byte[] bArr, int i, int i2) {
        return f8644a.m12033c(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public static int m12039h(int i) {
        int i2 = i;
        if (i > -12) {
            i2 = -1;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public static int m12038i(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: j */
    public static int m12037j(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static String m12036k(byte[] bArr, int i, int i2) throws zzih {
        return f8644a.mo12015d(bArr, i, i2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: m */
    public static int m12034m(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            return m12039h(b);
        }
        if (i3 == 1) {
            return m12038i(b, bArr[i]);
        }
        if (i3 == 2) {
            return m12037j(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
