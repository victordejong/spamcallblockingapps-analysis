package com.google.firebase.components;

import com.google.firebase.p313k.AbstractC9247b;
/* renamed from: com.google.firebase.components.j */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/components/j.class */
public final /* synthetic */ class C8869j implements AbstractC9247b {

    /* renamed from: a */
    private final C8873n f38813a;

    /* renamed from: b */
    private final C8858d f38814b;

    private C8869j(C8873n c8873n, C8858d c8858d) {
        this.f38813a = c8873n;
        this.f38814b = c8858d;
    }

    /* renamed from: a */
    public static AbstractC9247b m2479a(C8873n c8873n, C8858d c8858d) {
        return new C8869j(c8873n, c8858d);
    }

    @Override // com.google.firebase.p313k.AbstractC9247b
    public Object get() {
        Object mo1136a;
        mo1136a = r1.m2507d().mo1136a(new C8890z(this.f38814b, this.f38813a));
        return mo1136a;
    }
}
