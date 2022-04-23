package com.twitter.sdk.android.core.internal;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/g.class */
public final class g {

    /* renamed from: a  reason: collision with root package name */
    public final String f35159a;

    public g() {
        this("https://api.twitter.com");
    }

    public g(String str) {
        this.f35159a = str;
    }

    public static String a(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            if (charAt > 31 && charAt < 127) {
                sb.append(charAt);
            }
        }
        return sb.toString();
    }
}
