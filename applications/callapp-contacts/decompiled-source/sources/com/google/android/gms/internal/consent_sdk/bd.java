package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bd.class */
public final class bd {
    public static bc a(Context context, String str) {
        String str2;
        String str3;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("/", -1);
        if (split.length == 1) {
            str3 = String.valueOf(context.getPackageName()).concat("_preferences");
            str2 = split[0];
        } else if (split.length != 2) {
            return null;
        } else {
            str3 = split[0];
            str2 = split[1];
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str2)) {
            return null;
        }
        return new bc(str3, str2);
    }

    public static void a(Context context, Set<String> set) {
        bf bfVar = new bf(context);
        for (String str : set) {
            bc a2 = a(context, str);
            if (a2 == null) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "clearKeys: unable to process key: ".concat(valueOf);
                } else {
                    new String("clearKeys: unable to process key: ");
                }
            } else {
                bfVar.a(a2.f28747a).remove(a2.f28748b);
            }
        }
        bfVar.a();
    }
}
