package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cxp.class */
public abstract class cxp {
    /* renamed from: a */
    public static cxp m17075a(char c) {
        return new cxr(c);
    }

    /* renamed from: a */
    public int mo17074a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        cyg.m17061a(i, length, "index");
        while (i < length) {
            if (mo17073b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* renamed from: b */
    public abstract boolean mo17073b(char c);
}
