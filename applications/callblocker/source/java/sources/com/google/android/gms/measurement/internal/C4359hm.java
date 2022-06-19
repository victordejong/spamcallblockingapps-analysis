package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
/* renamed from: com.google.android.gms.measurement.internal.hm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/hm.class */
public final class C4359hm {
    /* renamed from: a */
    public static String m4369a(String str, String[] strArr, String[] strArr2) {
        String str2;
        C2662s.m13981a(strArr);
        C2662s.m13981a(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        int i = 0;
        while (true) {
            if (i >= min) {
                str2 = null;
                break;
            }
            String str3 = strArr[i];
            if ((str == null && str3 == null) ? true : str == null ? false : str.equals(str3)) {
                str2 = strArr2[i];
                break;
            }
            i++;
        }
        return str2;
    }
}
