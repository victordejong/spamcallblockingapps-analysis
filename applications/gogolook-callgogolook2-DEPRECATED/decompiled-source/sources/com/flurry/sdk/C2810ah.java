package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.flurry.sdk.ah */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ah.class */
public final class C2810ah {

    /* renamed from: a */
    public static final String[] f3983a = new String[0];

    /* renamed from: a */
    public static String m33627a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            String str3 = "";
            for (String str4 : Arrays.asList(str2.split("\\s*-\\s*"))) {
                String string = new JSONObject(str).getString(str4);
                str3 = string;
                if (!TextUtils.isEmpty(string)) {
                    str = string;
                    str3 = string;
                }
            }
            return str3;
        } catch (JSONException e) {
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:54:0x0139, code lost:
        if (r0.f4366a == 3) goto L_0x0141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0194, code lost:
        if (android.text.TextUtils.isEmpty(r3) == false) goto L_0x019c;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m33628a(com.flurry.sdk.C2853ay r3, int r4) {
        /*
            Method dump skipped, instructions count: 448
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.flurry.sdk.C2810ah.m33628a(com.flurry.sdk.ay, int):java.util.List");
    }

    /* renamed from: a */
    public static boolean m33626a(List<String> list, String str) {
        if (list == null || TextUtils.isEmpty(str)) {
            return false;
        }
        for (String str2 : list) {
            if (str.equals(str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: b */
    public static String m33625b(C2853ay ayVar, int i) {
        C3021eh b = ayVar.m33531b(i);
        if (b != null) {
            return b.m33276a();
        }
        return null;
    }
}
