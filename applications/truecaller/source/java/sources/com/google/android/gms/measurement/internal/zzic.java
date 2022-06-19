package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/measurement/internal/zzic.class */
public final class zzic {
    /* renamed from: a */
    public static String m38562a(String str, String[] strArr, String[] strArr2) {
        int min = Math.min(strArr.length, strArr2.length);
        for (int i = 0; i < min; i++) {
            String str2 = strArr[i];
            if ((str == null && str2 == null) || (str != null && str.equals(str2))) {
                return strArr2[i];
            }
        }
        return null;
    }

    /* renamed from: b */
    public static String m38561b(Context context, String str, String str2) {
        Objects.requireNonNull(context, "null reference");
        Resources resources = context.getResources();
        if (TextUtils.isEmpty(str2)) {
            str2 = C26232y.m2311q2(context);
        }
        int identifier = resources.getIdentifier("google_app_id", "string", str2);
        String str3 = null;
        if (identifier != 0) {
            try {
                str3 = resources.getString(identifier);
            } catch (Resources.NotFoundException e) {
            }
        }
        return str3;
    }
}
