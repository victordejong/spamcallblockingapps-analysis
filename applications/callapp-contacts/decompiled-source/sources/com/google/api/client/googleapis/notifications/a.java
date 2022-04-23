package com.google.api.client.googleapis.notifications;

import com.google.api.client.a.aa;
import com.google.api.client.a.y;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/a.class */
public abstract class a {

    /* renamed from: a  reason: collision with root package name */
    private long f31750a;

    /* renamed from: b  reason: collision with root package name */
    private String f31751b;

    /* renamed from: c  reason: collision with root package name */
    private String f31752c;

    /* renamed from: d  reason: collision with root package name */
    private String f31753d;
    private String e;
    private String f;
    private String g;
    private String h;

    /* JADX INFO: Access modifiers changed from: protected */
    public a(long j, String str, String str2, String str3, String str4) {
        a(j);
        a(str);
        b(str2);
        c(str3);
        d(str4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public a(a aVar) {
        this(aVar.f31750a, aVar.f31751b, aVar.f31752c, aVar.f31753d, aVar.e);
        e(aVar.f);
        f(aVar.g);
        g(aVar.h);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final y.a a() {
        return y.a(this).a("messageNumber", Long.valueOf(this.f31750a)).a("resourceState", this.f31751b).a("resourceId", this.f31752c).a("resourceUri", this.f31753d).a("channelId", this.e).a("channelExpiration", this.f).a("channelToken", this.g).a("changed", this.h);
    }

    public a a(long j) {
        aa.a(j >= 1);
        this.f31750a = j;
        return this;
    }

    public a a(String str) {
        this.f31751b = (String) aa.a(str);
        return this;
    }

    public a b(String str) {
        this.f31752c = (String) aa.a(str);
        return this;
    }

    public a c(String str) {
        this.f31753d = (String) aa.a(str);
        return this;
    }

    public a d(String str) {
        this.e = (String) aa.a(str);
        return this;
    }

    public a e(String str) {
        this.f = str;
        return this;
    }

    public a f(String str) {
        this.g = str;
        return this;
    }

    public a g(String str) {
        this.h = str;
        return this;
    }

    public String toString() {
        return a().toString();
    }
}
