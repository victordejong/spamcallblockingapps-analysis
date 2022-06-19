package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxr.class */
public final class cxr extends cxo {

    /* renamed from: a */
    private final char f46737a;

    public cxr(char c) {
        this.f46737a = c;
    }

    @Override // com.google.android.gms.internal.ads.cxp
    /* renamed from: b */
    public final boolean mo17073b(char c) {
        return c == this.f46737a;
    }

    public final String toString() {
        char c = this.f46737a;
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(copyValueOf);
        sb.append("')");
        return sb.toString();
    }
}
