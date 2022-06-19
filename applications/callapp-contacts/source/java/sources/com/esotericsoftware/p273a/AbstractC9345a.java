package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.a */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/a.class */
public abstract class AbstractC9345a {

    /* renamed from: a */
    protected final int f31973a;

    /* renamed from: b */
    protected AbstractC9345a f31974b;

    public AbstractC9345a(int i) {
        this(i, null);
    }

    public AbstractC9345a(int i, AbstractC9345a abstractC9345a) {
        if (i == 262144 || i == 327680) {
            this.f31973a = i;
            this.f31974b = abstractC9345a;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24663a(String str) {
        AbstractC9345a abstractC9345a = this.f31974b;
        if (abstractC9345a != null) {
            return abstractC9345a.mo24663a(str);
        }
        return null;
    }

    /* renamed from: a */
    public AbstractC9345a mo24661a(String str, String str2) {
        AbstractC9345a abstractC9345a = this.f31974b;
        if (abstractC9345a != null) {
            return abstractC9345a.mo24661a(str, str2);
        }
        return null;
    }

    /* renamed from: a */
    public void mo24666a() {
        AbstractC9345a abstractC9345a = this.f31974b;
        if (abstractC9345a != null) {
            abstractC9345a.mo24666a();
        }
    }

    /* renamed from: a */
    public void mo24662a(String str, Object obj) {
        AbstractC9345a abstractC9345a = this.f31974b;
        if (abstractC9345a != null) {
            abstractC9345a.mo24662a(str, obj);
        }
    }

    /* renamed from: a */
    public void mo24660a(String str, String str2, String str3) {
        AbstractC9345a abstractC9345a = this.f31974b;
        if (abstractC9345a != null) {
            abstractC9345a.mo24660a(str, str2, str3);
        }
    }
}
