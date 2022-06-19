package com.amazonaws.auth.policy;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Statement.class */
public class Statement {

    /* renamed from: b */
    public Effect f12035b;

    /* renamed from: e */
    public List<Resource> f12038e;

    /* renamed from: c */
    public List<Principal> f12036c = new ArrayList();

    /* renamed from: d */
    public List<Action> f12037d = new ArrayList();

    /* renamed from: f */
    public List<Condition> f12039f = new ArrayList();

    /* renamed from: a */
    public String f12034a = null;

    /* loaded from: classes-dex2jar.jar:com/amazonaws/auth/policy/Statement$Effect.class */
    public enum Effect {
        Allow,
        Deny
    }

    public Statement(Effect effect) {
        this.f12035b = effect;
    }
}
