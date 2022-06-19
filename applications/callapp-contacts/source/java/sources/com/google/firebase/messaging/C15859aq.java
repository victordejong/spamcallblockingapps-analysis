package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.messaging.aq */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aq.class */
final class C15859aq {

    /* renamed from: d */
    private static final Pattern f56360d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a */
    final String f56361a;

    /* renamed from: b */
    final String f56362b;

    /* renamed from: c */
    final String f56363c;

    private C15859aq(String str, String str2) {
        String str3;
        if (str2 == null || !str2.startsWith("/topics/")) {
            str3 = str2;
        } else {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str));
            str3 = str2.substring(8);
        }
        if (str3 == null || !f56360d.matcher(str3).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str3, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        this.f56361a = str3;
        this.f56362b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f56363c = sb.toString();
    }

    /* renamed from: a */
    public static C15859aq m8161a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length == 2) {
            return new C15859aq(split[0], split[1]);
        }
        return null;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C15859aq)) {
            return false;
        }
        C15859aq c15859aq = (C15859aq) obj;
        return this.f56361a.equals(c15859aq.f56361a) && this.f56362b.equals(c15859aq.f56362b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f56362b, this.f56361a});
    }
}
