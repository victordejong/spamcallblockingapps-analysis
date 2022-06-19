package com.amazonaws.auth.policy;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Policy.class */
public class Policy {

    /* renamed from: a */
    public String f12024a;

    /* renamed from: b */
    public String f12025b;

    /* renamed from: c */
    public List<Statement> f12026c;

    public Policy() {
        this.f12025b = "2012-10-17";
        this.f12026c = new ArrayList();
    }

    public Policy(String str) {
        this.f12025b = "2012-10-17";
        this.f12026c = new ArrayList();
        this.f12024a = str;
    }

    public Policy(String str, Collection<Statement> collection) {
        this(str);
        m38643a(collection);
    }

    /* renamed from: a */
    private void m38644a() {
        int i;
        HashSet hashSet = new HashSet();
        for (Statement statement : this.f12026c) {
            if (statement.f12034a != null) {
                hashSet.add(statement.f12034a);
            }
        }
        int i2 = 0;
        for (Statement statement2 : this.f12026c) {
            if (statement2.f12034a == null) {
                do {
                    i = i2 + 1;
                    i2 = i;
                } while (hashSet.contains(Integer.toString(i)));
                statement2.f12034a = Integer.toString(i);
                i2 = i;
            }
        }
    }

    /* renamed from: a */
    public final void m38643a(Collection<Statement> collection) {
        this.f12026c = new ArrayList(collection);
        m38644a();
    }
}
