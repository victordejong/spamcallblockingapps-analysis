package com.amazonaws.auth;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/BasicSessionCredentials.class */
public class BasicSessionCredentials implements AWSSessionCredentials {

    /* renamed from: a  reason: collision with root package name */
    private final String f6567a;

    /* renamed from: b  reason: collision with root package name */
    private final String f6568b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6569c;

    public BasicSessionCredentials(String str, String str2, String str3) {
        this.f6567a = str;
        this.f6568b = str2;
        this.f6569c = str3;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String a() {
        return this.f6567a;
    }

    @Override // com.amazonaws.auth.AWSCredentials
    public final String b() {
        return this.f6568b;
    }

    @Override // com.amazonaws.auth.AWSSessionCredentials
    public final String c() {
        return this.f6569c;
    }
}
