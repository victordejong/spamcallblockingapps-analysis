package p033i.p034a.p035a.p039i;

import java.util.Arrays;
import p033i.p034a.p035a.p037g.C0306c;
/* renamed from: i.a.a.i.f */
/* loaded from: classes2-dex2jar.jar:i/a/a/i/f.class */
final class C0319f {

    /* renamed from: a */
    private static final char[] f854a = m414b();

    /* renamed from: b */
    private static final byte[] f855b = m415a();

    /* renamed from: a */
    private static byte[] m415a() {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        for (int i = 0; i < 16; i++) {
            bArr["0123456789abcdef".charAt(i)] = (byte) i;
        }
        return bArr;
    }

    /* renamed from: b */
    private static char[] m414b() {
        char[] cArr = new char[512];
        for (int i = 0; i < 256; i++) {
            cArr[i] = "0123456789abcdef".charAt(i >>> 4);
            cArr[i | 256] = "0123456789abcdef".charAt(i & 15);
        }
        return cArr;
    }

    /* renamed from: c */
    private static void m413c(byte b, char[] cArr, int i) {
        int i2 = b & 255;
        char[] cArr2 = f854a;
        cArr[i] = cArr2[i2];
        cArr[i + 1] = cArr2[i2 | 256];
    }

    /* renamed from: d */
    private static byte m412d(char c, char c2) {
        boolean z = true;
        boolean z2 = c2 < 128 && f855b[c2] != -1;
        C0306c.m436a(z2, "invalid character " + c2);
        if (c >= 128 || f855b[c] == -1) {
            z = false;
        }
        C0306c.m436a(z, "invalid character " + c);
        byte[] bArr = f855b;
        return (byte) ((bArr[c] << 4) | bArr[c2]);
    }

    /* renamed from: e */
    private static boolean m411e(char c) {
        return '0' <= c && c <= '9';
    }

    /* renamed from: f */
    private static boolean m410f(char c) {
        return 'a' <= c && c <= 'f';
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public static boolean m409g(CharSequence charSequence) {
        for (int i = 0; i < charSequence.length(); i++) {
            char charAt = charSequence.charAt(i);
            if (!(m411e(charAt) || m410f(charAt))) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public static long m408h(CharSequence charSequence, int i) {
        C0306c.m436a(charSequence.length() >= i + 16, "chars too small");
        return (m412d(charSequence.charAt(i + 14), charSequence.charAt(i + 15)) & 255) | ((m412d(charSequence.charAt(i), charSequence.charAt(i + 1)) & 255) << 56) | ((m412d(charSequence.charAt(i + 2), charSequence.charAt(i + 3)) & 255) << 48) | ((m412d(charSequence.charAt(i + 4), charSequence.charAt(i + 5)) & 255) << 40) | ((m412d(charSequence.charAt(i + 6), charSequence.charAt(i + 7)) & 255) << 32) | ((m412d(charSequence.charAt(i + 8), charSequence.charAt(i + 9)) & 255) << 24) | ((m412d(charSequence.charAt(i + 10), charSequence.charAt(i + 11)) & 255) << 16) | ((m412d(charSequence.charAt(i + 12), charSequence.charAt(i + 13)) & 255) << 8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static void m407i(long j, char[] cArr, int i) {
        m413c((byte) ((j >> 56) & 255), cArr, i);
        m413c((byte) ((j >> 48) & 255), cArr, i + 2);
        m413c((byte) ((j >> 40) & 255), cArr, i + 4);
        m413c((byte) ((j >> 32) & 255), cArr, i + 6);
        m413c((byte) ((j >> 24) & 255), cArr, i + 8);
        m413c((byte) ((j >> 16) & 255), cArr, i + 10);
        m413c((byte) ((j >> 8) & 255), cArr, i + 12);
        m413c((byte) (j & 255), cArr, i + 14);
    }
}
