package org.spongycastle.crypto.tls;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/tls/NamedCurve.class */
public class NamedCurve {
    public static final int arbitrary_explicit_char2_curves = 65282;
    public static final int arbitrary_explicit_prime_curves = 65281;
    public static final int brainpoolP256r1 = 26;
    public static final int brainpoolP384r1 = 27;
    public static final int brainpoolP512r1 = 28;
    public static final int secp160k1 = 15;
    public static final int secp160r1 = 16;
    public static final int secp160r2 = 17;
    public static final int secp192k1 = 18;
    public static final int secp192r1 = 19;
    public static final int secp224k1 = 20;
    public static final int secp224r1 = 21;
    public static final int secp256k1 = 22;
    public static final int secp256r1 = 23;
    public static final int secp384r1 = 24;
    public static final int secp521r1 = 25;
    public static final int sect163k1 = 1;
    public static final int sect163r1 = 2;
    public static final int sect163r2 = 3;
    public static final int sect193r1 = 4;
    public static final int sect193r2 = 5;
    public static final int sect233k1 = 6;
    public static final int sect233r1 = 7;
    public static final int sect239k1 = 8;
    public static final int sect283k1 = 9;
    public static final int sect283r1 = 10;
    public static final int sect409k1 = 11;
    public static final int sect409r1 = 12;
    public static final int sect571k1 = 13;
    public static final int sect571r1 = 14;

    /* JADX WARN: Code restructure failed: missing block: B:5:0x000c, code lost:
        if (r3 > 28) goto L_0x000f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean isValid(int r3) {
        /*
            r0 = 1
            r4 = r0
            r0 = r3
            r1 = 1
            if (r0 < r1) goto L_0x000f
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = 28
            if (r0 <= r1) goto L_0x0022
        L_0x000f:
            r0 = r3
            r1 = 65281(0xff01, float:9.1478E-41)
            if (r0 < r1) goto L_0x0020
            r0 = r3
            r1 = 65282(0xff02, float:9.148E-41)
            if (r0 > r1) goto L_0x0020
            r0 = r4
            r5 = r0
            goto L_0x0022
        L_0x0020:
            r0 = 0
            r5 = r0
        L_0x0022:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.spongycastle.crypto.tls.NamedCurve.isValid(int):boolean");
    }

    public static boolean refersToASpecificNamedCurve(int i) {
        switch (i) {
            case 65281:
            case 65282:
                return false;
            default:
                return true;
        }
    }
}
