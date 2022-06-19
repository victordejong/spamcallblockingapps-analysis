package com.twitter.sdk.android.core.internal;
/* renamed from: com.twitter.sdk.android.core.internal.g */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/g.class */
public final class C17254g {

    /* renamed from: a */
    public final String f61007a;

    public C17254g() {
        this("https://api.twitter.com");
    }

    public C17254g(String str) {
        this.f61007a = str;
    }

    /* renamed from: a */
    public static String m5660a(String str) {
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
