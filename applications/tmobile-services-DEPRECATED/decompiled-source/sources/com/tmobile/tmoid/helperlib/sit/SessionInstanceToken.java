package com.tmobile.tmoid.helperlib.sit;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/helperlib/sit/SessionInstanceToken.class */
public class SessionInstanceToken {

    /* renamed from: a */
    private String f14777a;

    /* renamed from: b */
    private String f14778b;

    /* renamed from: c */
    private boolean f14779c = false;

    public SessionInstanceToken(String str, String str2) {
        this.f14777a = str;
        this.f14778b = str2;
    }

    /* renamed from: a */
    public String m4998a() {
        return this.f14777a;
    }

    /* renamed from: b */
    public String m4997b() {
        return this.f14778b;
    }

    /* renamed from: c */
    public boolean m4996c() {
        return this.f14779c;
    }

    /* renamed from: d */
    public void m4995d(boolean z) {
        this.f14779c = z;
    }

    public String toString() {
        return "SessionInstanceToken [" + this.f14777a + "], valid? " + this.f14779c + ", expiry: " + this.f14778b;
    }
}
