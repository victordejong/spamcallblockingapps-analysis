package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Locale;
/* renamed from: com.google.android.gms.internal.ads.k8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/k8.class */
public final class C6655k8 {

    /* renamed from: a */
    public static final AbstractC6580i8 f25079a = C6543h8.f23822a;

    /* JADX WARN: Removed duplicated region for block: B:41:0x015e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x0160  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final com.google.android.gms.internal.ads.zzaiv m13974a(byte[] r6, int r7, com.google.android.gms.internal.ads.AbstractC6580i8 r8, com.google.android.gms.internal.ads.C7024u7 r9) {
        /*
            Method dump skipped, instructions count: 540
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6655k8.m13974a(byte[], int, com.google.android.gms.internal.ads.i8, com.google.android.gms.internal.ads.u7):com.google.android.gms.internal.ads.zzaiv");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [long] */
    /* JADX WARN: Type inference failed for: r0v73, types: [long] */
    /* JADX WARN: Type inference failed for: r0v78, types: [long] */
    /* renamed from: b */
    private static boolean m13973b(C6694la c6694la, int i, int i2, boolean z) {
        int i3;
        char c;
        int i4;
        int i5;
        int i6;
        int i7;
        int m13636o = c6694la.m13636o();
        while (c6694la.m13639l() >= i2) {
            try {
                if (i >= 3) {
                    i4 = c6694la.m13655D();
                    c = c6694la.m13657B();
                    i3 = c6694la.m13628w();
                } else {
                    i4 = c6694la.m13625z();
                    c = c6694la.m13625z();
                    i3 = 0;
                }
                if (i4 == 0 && c == 0 && i3 == 0) {
                    c6694la.m13635p(m13636o);
                    return true;
                }
                char c2 = c;
                if (i == 4) {
                    c2 = c;
                    if (!z) {
                        if ((32896 & c) != 0) {
                            c6694la.m13635p(m13636o);
                            return false;
                        }
                        c2 = ((c >> 24) << 21) | ((255 & (c >> 16)) << 14) | (c & 255) | (((c >> '\b') & 255) << 7);
                    }
                }
                if (i == 4) {
                    i6 = (i3 & 64) != 0 ? 1 : 0;
                    i5 = i3 & 1;
                } else {
                    if (i == 3) {
                        i6 = (i3 & 32) != 0 ? 1 : 0;
                        i7 = i6;
                        if ((i3 & 128) != 0) {
                            i5 = 1;
                        }
                    } else {
                        i7 = 0;
                    }
                    i5 = 0;
                    i6 = i7;
                }
                int i8 = i6;
                if (i5 != 0) {
                    i8 = i6 + 4;
                }
                if (c2 < i8) {
                    c6694la.m13635p(m13636o);
                    return false;
                } else if (c6694la.m13639l() < c2) {
                    c6694la.m13635p(m13636o);
                    return false;
                } else {
                    c6694la.m13632s(c2);
                }
            } catch (Throwable th) {
                c6694la.m13635p(m13636o);
                throw th;
            }
        }
        c6694la.m13635p(m13636o);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:410:0x0ace A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v203, types: [long] */
    /* JADX WARN: Type inference failed for: r0v208, types: [long] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static com.google.android.gms.internal.ads.zzajx m13972c(int r12, com.google.android.gms.internal.ads.C6694la r13, boolean r14, int r15, com.google.android.gms.internal.ads.AbstractC6580i8 r16) {
        /*
            Method dump skipped, instructions count: 2952
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6655k8.m13972c(int, com.google.android.gms.internal.ads.la, boolean, int, com.google.android.gms.internal.ads.i8):com.google.android.gms.internal.ads.zzajx");
    }

    /* renamed from: d */
    private static int m13971d(C6694la c6694la, int i) {
        byte[] m13634q = c6694la.m13634q();
        int m13636o = c6694la.m13636o();
        int i2 = m13636o;
        while (true) {
            int i3 = i2;
            int i4 = i;
            int i5 = i3 + 1;
            if (i5 < m13636o + i4) {
                i = i4;
                if ((m13634q[i3] & 255) == 255) {
                    i = i4;
                    if (m13634q[i5] == 0) {
                        System.arraycopy(m13634q, i3 + 2, m13634q, i5, (i4 - (i3 - m13636o)) - 2);
                        i = i4 - 1;
                    }
                }
                i2 = i5;
            } else {
                return i4;
            }
        }
    }

    /* renamed from: e */
    private static String m13970e(int i) {
        return i != 1 ? i != 2 ? i != 3 ? "ISO-8859-1" : "UTF-8" : "UTF-16BE" : "UTF-16";
    }

    /* renamed from: f */
    private static String m13969f(int i, int i2, int i3, int i4, int i5) {
        return i == 2 ? String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4)) : String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    /* renamed from: g */
    private static int m13968g(byte[] bArr, int i, int i2) {
        int m13967h = m13967h(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return m13967h;
        }
        int i3 = m13967h;
        while (true) {
            int i4 = i3;
            int length = bArr.length;
            if (i4 >= length - 1) {
                return length;
            }
            if ((i4 - i) % 2 == 0 && bArr[i4 + 1] == 0) {
                return i4;
            }
            i3 = m13967h(bArr, i4 + 1);
        }
    }

    /* renamed from: h */
    private static int m13967h(byte[] bArr, int i) {
        while (true) {
            int length = bArr.length;
            if (i < length) {
                if (bArr[i] == 0) {
                    return i;
                }
                i++;
            } else {
                return length;
            }
        }
    }

    /* renamed from: i */
    private static int m13966i(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    /* renamed from: j */
    private static byte[] m13965j(byte[] bArr, int i, int i2) {
        return i2 <= i ? C7101wa.f31480f : Arrays.copyOfRange(bArr, i, i2);
    }

    /* renamed from: k */
    private static String m13964k(byte[] bArr, int i, int i2, String str) {
        return (i2 <= i || i2 > bArr.length) ? "" : new String(bArr, i, i2 - i, str);
    }
}
