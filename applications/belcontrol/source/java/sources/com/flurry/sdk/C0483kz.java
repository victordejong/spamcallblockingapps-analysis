package com.flurry.sdk;

import android.text.TextUtils;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.flurry.sdk.kz */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/kz.class */
public class C0483kz {

    /* renamed from: a */
    private final Pattern f3514a = Pattern.compile(".*?(%\\{\\w+\\}).*?");

    /* renamed from: a */
    public static boolean m4573a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("%{" + str + "}");
    }

    /* renamed from: a */
    public final String m4574a(String str) {
        Matcher matcher = this.f3514a.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }
}
