package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxp.class */
public abstract class cxp {
    public static cxp a(char c2) {
        return new cxr(c2);
    }

    public int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        cyg.a(i, length, "index");
        while (i < length) {
            if (b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean b(char c2);
}
