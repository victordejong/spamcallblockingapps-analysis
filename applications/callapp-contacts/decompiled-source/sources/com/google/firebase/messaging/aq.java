package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/messaging/aq.class */
final class aq {

    /* renamed from: d  reason: collision with root package name */
    private static final Pattern f32497d = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: a  reason: collision with root package name */
    final String f32498a;

    /* renamed from: b  reason: collision with root package name */
    final String f32499b;

    /* renamed from: c  reason: collision with root package name */
    final String f32500c;

    private aq(String str, String str2) {
        String str3;
        if (str2 == null || !str2.startsWith("/topics/")) {
            str3 = str2;
        } else {
            Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str));
            str3 = str2.substring(8);
        }
        if (str3 == null || !f32497d.matcher(str3).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str3, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        this.f32498a = str3;
        this.f32499b = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f32500c = sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static aq a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length != 2) {
            return null;
        }
        return new aq(split[0], split[1]);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof aq)) {
            return false;
        }
        aq aqVar = (aq) obj;
        return this.f32498a.equals(aqVar.f32498a) && this.f32499b.equals(aqVar.f32499b);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f32499b, this.f32498a});
    }
}
