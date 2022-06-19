package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.C11957f;
/* renamed from: com.google.android.gms.measurement.internal.ek */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ek.class */
public final class C13971ek {
    /* renamed from: a */
    public static String m12018a(Context context) {
        String str;
        try {
            str = context.getResources().getResourcePackageName(C11957f.C11958a.common_google_play_services_unknown_issue);
        } catch (Resources.NotFoundException e) {
            str = context.getPackageName();
        }
        return str;
    }

    /* renamed from: a */
    public static final String m12017a(String str, Resources resources, String str2) {
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
