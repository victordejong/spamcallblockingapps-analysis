package com.facebook.login.widget;
/* loaded from: classes-dex2jar.jar:com/facebook/login/widget/LoginButton$f.class */
public enum LoginButton$f {
    AUTOMATIC("automatic", 0),
    DISPLAY_ALWAYS("display_always", 1),
    NEVER_DISPLAY("never_display", 2);
    

    /* renamed from: a */
    public String f2578a;

    /* renamed from: b */
    public int f2579b;

    /* renamed from: g */
    public static LoginButton$f f2576g = AUTOMATIC;

    LoginButton$f(String str, int i) {
        this.f2578a = str;
        this.f2579b = i;
    }

    /* renamed from: a */
    public static LoginButton$f m5018a(int i) {
        LoginButton$f[] values;
        for (LoginButton$f loginButton$f : values()) {
            if (loginButton$f.m5017b() == i) {
                return loginButton$f;
            }
        }
        return null;
    }

    /* renamed from: b */
    public int m5017b() {
        return this.f2579b;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f2578a;
    }
}
