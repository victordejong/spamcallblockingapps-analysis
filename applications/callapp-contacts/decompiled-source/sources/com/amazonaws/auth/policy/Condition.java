package com.amazonaws.auth.policy;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Condition.class */
public class Condition {

    /* renamed from: a  reason: collision with root package name */
    protected String f6582a;

    /* renamed from: b  reason: collision with root package name */
    protected String f6583b;

    /* renamed from: c  reason: collision with root package name */
    protected List<String> f6584c;

    public final Condition a(String str) {
        this.f6582a = str;
        return this;
    }

    public final Condition a(List<String> list) {
        this.f6584c = list;
        return this;
    }

    public final String a() {
        return this.f6582a;
    }

    public final Condition b(String str) {
        this.f6583b = str;
        return this;
    }

    public final String b() {
        return this.f6583b;
    }

    public final List<String> c() {
        return this.f6584c;
    }
}
