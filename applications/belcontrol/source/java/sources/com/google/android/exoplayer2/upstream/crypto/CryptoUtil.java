package com.google.android.exoplayer2.upstream.crypto;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/crypto/CryptoUtil.class */
public final class CryptoUtil {
    private CryptoUtil() {
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static long getFNV64Hash(String str) {
        char c = 0;
        if (str == null) {
            return 0L;
        }
        for (int i = 0; i < str.length(); i++) {
            long charAt = c ^ str.charAt(i);
            c = charAt + (charAt << 1) + (charAt << 4) + (charAt << 5) + (charAt << 7) + (charAt << 8) + (charAt << 40);
        }
        return c;
    }
}
