package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gw2.class */
final class gw2 {
    /* renamed from: a */
    public static void m14795a(Object obj, Object obj2) {
        if (obj == null) {
            String valueOf = String.valueOf(obj2);
            valueOf.length();
            throw new NullPointerException("null key in entry: null=".concat(valueOf));
        } else if (obj2 != null) {
        } else {
            String obj3 = obj.toString();
            StringBuilder sb = new StringBuilder(obj3.length() + 26);
            sb.append("null value in entry: ");
            sb.append(obj3);
            sb.append("=null");
            throw new NullPointerException(sb.toString());
        }
    }

    /* renamed from: b */
    public static int m14794b(int i, String str) {
        if (i >= 0) {
            return i;
        }
        StringBuilder sb = new StringBuilder(str.length() + 40);
        sb.append(str);
        sb.append(" cannot be negative but was: ");
        sb.append(i);
        throw new IllegalArgumentException(sb.toString());
    }
}
