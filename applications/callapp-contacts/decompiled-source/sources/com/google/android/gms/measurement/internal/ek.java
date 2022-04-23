package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.f;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ek.class */
public final class ek {
    public static String a(Context context) {
        String str;
        try {
            str = context.getResources().getResourcePackageName(f.a.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException e) {
            str = context.getPackageName();
        }
        return str;
    }

    public static final String a(String str, Resources resources, String str2) {
        int identifier = resources.getIdentifier(str, "string", str2);
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
