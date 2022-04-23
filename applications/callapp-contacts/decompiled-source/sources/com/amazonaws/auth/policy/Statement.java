package com.amazonaws.auth.policy;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Statement.class */
public class Statement {

    /* renamed from: b  reason: collision with root package name */
    public Effect f6594b;
    public List<Resource> e;

    /* renamed from: c  reason: collision with root package name */
    public List<Principal> f6595c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    public List<Action> f6596d = new ArrayList();
    public List<Condition> f = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    public String f6593a = null;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Statement$Effect.class */
    public enum Effect {
        Allow,
        Deny
    }

    public Statement(Effect effect) {
        this.f6594b = effect;
    }
}
