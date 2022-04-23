package com.amazonaws.auth.policy;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Policy.class */
public class Policy {

    /* renamed from: a  reason: collision with root package name */
    public String f6585a;

    /* renamed from: b  reason: collision with root package name */
    public String f6586b;

    /* renamed from: c  reason: collision with root package name */
    public List<Statement> f6587c;

    public Policy() {
        this.f6586b = "2012-10-17";
        this.f6587c = new ArrayList();
    }

    public Policy(String str) {
        this.f6586b = "2012-10-17";
        this.f6587c = new ArrayList();
        this.f6585a = str;
    }

    public Policy(String str, Collection<Statement> collection) {
        this(str);
        a(collection);
    }

    private void a() {
        int i;
        HashSet hashSet = new HashSet();
        for (Statement statement : this.f6587c) {
            if (statement.f6593a != null) {
                hashSet.add(statement.f6593a);
            }
        }
        int i2 = 0;
        for (Statement statement2 : this.f6587c) {
            if (statement2.f6593a == null) {
                do {
                    i = i2 + 1;
                    i2 = i;
                } while (hashSet.contains(Integer.toString(i)));
                statement2.f6593a = Integer.toString(i);
                i2 = i;
            }
        }
    }

    public final void a(Collection<Statement> collection) {
        this.f6587c = new ArrayList(collection);
        a();
    }
}
