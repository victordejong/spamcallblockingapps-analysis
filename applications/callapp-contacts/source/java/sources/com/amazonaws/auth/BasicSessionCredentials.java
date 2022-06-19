package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicSessionCredentials.class */
public class BasicSessionCredentials implements AWSSessionCredentials {

    /* renamed from: a */
    private final String f12002a;

    /* renamed from: b */
    private final String f12003b;

    /* renamed from: c */
    private final String f12004c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f12002a = str;
        this.f12003b = str2;
        this.f12004c = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: a */
    public final String mo38659a() {
        return this.f12002a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    /* renamed from: b */
    public final String mo38658b() {
        return this.f12003b;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    /* renamed from: c */
    public final String mo38661c() {
        return this.f12004c;
    }
}
