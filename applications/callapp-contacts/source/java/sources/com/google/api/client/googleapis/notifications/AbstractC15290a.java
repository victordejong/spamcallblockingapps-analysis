package com.google.api.client.googleapis.notifications;

import com.google.api.client.p379a.C15207aa;
import com.google.api.client.p379a.C15255y;
/* renamed from: com.google.api.client.googleapis.notifications.a */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/googleapis/notifications/a.class */
public abstract class AbstractC15290a {

    /* renamed from: a */
    private long f55263a;

    /* renamed from: b */
    private String f55264b;

    /* renamed from: c */
    private String f55265c;

    /* renamed from: d */
    private String f55266d;

    /* renamed from: e */
    private String f55267e;

    /* renamed from: f */
    private String f55268f;

    /* renamed from: g */
    private String f55269g;

    /* renamed from: h */
    private String f55270h;

    public AbstractC15290a(long j, String str, String str2, String str3, String str4) {
        mo9153a(j);
        mo9152a(str);
        mo9151b(str2);
        mo9150c(str3);
        mo9149d(str4);
    }

    public AbstractC15290a(AbstractC15290a abstractC15290a) {
        this(abstractC15290a.f55263a, abstractC15290a.f55264b, abstractC15290a.f55265c, abstractC15290a.f55266d, abstractC15290a.f55267e);
        mo9148e(abstractC15290a.f55268f);
        mo9147f(abstractC15290a.f55269g);
        mo9146g(abstractC15290a.f55270h);
    }

    /* renamed from: a */
    public final C15255y.C15257a m9159a() {
        return C15255y.m9206a(this).m9204a("messageNumber", Long.valueOf(this.f55263a)).m9204a("resourceState", this.f55264b).m9204a("resourceId", this.f55265c).m9204a("resourceUri", this.f55266d).m9204a("channelId", this.f55267e).m9204a("channelExpiration", this.f55268f).m9204a("channelToken", this.f55269g).m9204a("changed", this.f55270h);
    }

    /* renamed from: a */
    public AbstractC15290a mo9153a(long j) {
        C15207aa.m9281a(j >= 1);
        this.f55263a = j;
        return this;
    }

    /* renamed from: a */
    public AbstractC15290a mo9152a(String str) {
        this.f55264b = (String) C15207aa.m9283a(str);
        return this;
    }

    /* renamed from: b */
    public AbstractC15290a mo9151b(String str) {
        this.f55265c = (String) C15207aa.m9283a(str);
        return this;
    }

    /* renamed from: c */
    public AbstractC15290a mo9150c(String str) {
        this.f55266d = (String) C15207aa.m9283a(str);
        return this;
    }

    /* renamed from: d */
    public AbstractC15290a mo9149d(String str) {
        this.f55267e = (String) C15207aa.m9283a(str);
        return this;
    }

    /* renamed from: e */
    public AbstractC15290a mo9148e(String str) {
        this.f55268f = str;
        return this;
    }

    /* renamed from: f */
    public AbstractC15290a mo9147f(String str) {
        this.f55269g = str;
        return this;
    }

    /* renamed from: g */
    public AbstractC15290a mo9146g(String str) {
        this.f55270h = str;
        return this;
    }

    public String toString() {
        return m9159a().toString();
    }
}
