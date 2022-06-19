package com.amazonaws.auth.policy;

import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Condition.class */
public class Condition {

    /* renamed from: a */
    protected String f12021a;

    /* renamed from: b */
    protected String f12022b;

    /* renamed from: c */
    protected List<String> f12023c;

    /* renamed from: a */
    public final Condition m38649a(String str) {
        this.f12021a = str;
        return this;
    }

    /* renamed from: a */
    public final Condition m38648a(List<String> list) {
        this.f12023c = list;
        return this;
    }

    /* renamed from: a */
    public final String m38650a() {
        return this.f12021a;
    }

    /* renamed from: b */
    public final Condition m38646b(String str) {
        this.f12022b = str;
        return this;
    }

    /* renamed from: b */
    public final String m38647b() {
        return this.f12022b;
    }

    /* renamed from: c */
    public final List<String> m38645c() {
        return this.f12023c;
    }
}
