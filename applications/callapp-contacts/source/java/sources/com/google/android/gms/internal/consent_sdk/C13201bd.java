package com.google.android.gms.internal.consent_sdk;

import android.content.Context;
import android.text.TextUtils;
import java.util.Set;
/* renamed from: com.google.android.gms.internal.consent_sdk.bd */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bd.class */
public final class C13201bd {
    /* renamed from: a */
    public static C13200bc m13566a(Context context, String str) {
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
        if (!TextUtils.isEmpty(str3) && !TextUtils.isEmpty(str2)) {
            return new C13200bc(str3, str2);
        }
        return null;
    }

    /* renamed from: a */
    public static void m13565a(Context context, Set<String> set) {
        C13203bf c13203bf = new C13203bf(context);
        for (String str : set) {
            C13200bc m13566a = m13566a(context, str);
            if (m13566a == null) {
                String valueOf = String.valueOf(str);
                if (valueOf.length() != 0) {
                    "clearKeys: unable to process key: ".concat(valueOf);
                } else {
                    new String("clearKeys: unable to process key: ");
                }
            } else {
                c13203bf.m13562a(m13566a.f50378a).remove(m13566a.f50379b);
            }
        }
        c13203bf.m13563a();
    }
}
