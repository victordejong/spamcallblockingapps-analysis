package com.google.firebase.messaging;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.C6147m;
import java.util.regex.Pattern;
/* renamed from: com.google.firebase.messaging.p0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/messaging/p0.class */
final class C9304p0 {

    /* renamed from: a */
    private static final Pattern f39833a = Pattern.compile("[a-zA-Z0-9-_.~%]{1,900}");

    /* renamed from: b */
    private final String f39834b;

    /* renamed from: c */
    private final String f39835c;

    /* renamed from: d */
    private final String f39836d;

    private C9304p0(String str, String str2) {
        this.f39834b = m1175d(str2, str);
        this.f39835c = str;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append("!");
        sb.append(str2);
        this.f39836d = sb.toString();
    }

    /* renamed from: a */
    public static C9304p0 m1178a(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String[] split = str.split("!", -1);
        if (split.length == 2) {
            return new C9304p0(split[0], split[1]);
        }
        return null;
    }

    /* renamed from: d */
    private static String m1175d(String str, String str2) {
        String str3 = str;
        if (str != null) {
            str3 = str;
            if (str.startsWith("/topics/")) {
                Log.w("FirebaseMessaging", String.format("Format /topics/topic-name is deprecated. Only 'topic-name' should be used in %s.", str2));
                str3 = str.substring(8);
            }
        }
        if (str3 == null || !f39833a.matcher(str3).matches()) {
            throw new IllegalArgumentException(String.format("Invalid topic name: %s does not match the allowed format %s.", str3, "[a-zA-Z0-9-_.~%]{1,900}"));
        }
        return str3;
    }

    /* renamed from: b */
    public String m1177b() {
        return this.f39835c;
    }

    /* renamed from: c */
    public String m1176c() {
        return this.f39834b;
    }

    /* renamed from: e */
    public String m1174e() {
        return this.f39836d;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof C9304p0)) {
            return false;
        }
        C9304p0 c9304p0 = (C9304p0) obj;
        return this.f39834b.equals(c9304p0.f39834b) && this.f39835c.equals(c9304p0.f39835c);
    }

    public int hashCode() {
        return C6147m.m17043b(this.f39835c, this.f39834b);
    }
}
