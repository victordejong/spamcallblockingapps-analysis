package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.b7 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/b7.class */
public final class C7664b7 {
    /* renamed from: a */
    public static String m6578a(Context context, String str, String str2) {
        C6155o.m17018j(context);
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = C7781l4.m6250a(context);
        }
        return C7781l4.m6249b("google_app_id", resources, str2);
    }

    /* renamed from: b */
    public static String m6577b(String str, String[] strArr, String[] strArr2) {
        C6155o.m17018j(strArr);
        C6155o.m17018j(strArr2);
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }
}
