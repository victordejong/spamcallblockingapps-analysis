package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C1675R;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzfm.class */
public final class zzfm {
    public static String zza(Context context) {
        String str;
        try {
            str = context.getResources().getResourcePackageName(C1675R.string.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException e) {
            str = context.getPackageName();
        }
        return str;
    }

    public static final String zzb(String str, Resources resources, String str2) {
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
