package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxr.class */
public final class cxr extends cxo {

    /* renamed from: a  reason: collision with root package name */
    private final char f26545a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cxr(char c2) {
        this.f26545a = c2;
    }

    @Override // com.google.android.gms.internal.ads.cxp
    public final boolean b(char c2) {
        return c2 == this.f26545a;
    }

    public final String toString() {
        char c2 = this.f26545a;
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c2 & 15);
            c2 = (char) (c2 >> 4);
        }
        String copyValueOf = String.copyValueOf(cArr);
        StringBuilder sb = new StringBuilder(String.valueOf(copyValueOf).length() + 18);
        sb.append("CharMatcher.is('");
        sb.append(copyValueOf);
        sb.append("')");
        return sb.toString();
    }
}
