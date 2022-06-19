package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.j */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/j.class */
public abstract class AbstractC9354j {

    /* renamed from: a */
    protected final int f32058a;

    /* renamed from: b */
    protected AbstractC9354j f32059b;

    public AbstractC9354j(int i) {
        this(i, null);
    }

    public AbstractC9354j(int i, AbstractC9354j abstractC9354j) {
        if (i == 262144 || i == 327680) {
            this.f32058a = i;
            this.f32059b = abstractC9354j;
            return;
        }
        throw new IllegalArgumentException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24586a(int i, C9365u c9365u, String str, boolean z) {
        if (this.f32058a >= 327680) {
            AbstractC9354j abstractC9354j = this.f32059b;
            if (abstractC9354j == null) {
                return null;
            }
            return abstractC9354j.mo24586a(i, c9365u, str, z);
        }
        throw new RuntimeException();
    }

    /* renamed from: a */
    public AbstractC9345a mo24584a(String str, boolean z) {
        AbstractC9354j abstractC9354j = this.f32059b;
        if (abstractC9354j != null) {
            return abstractC9354j.mo24584a(str, z);
        }
        return null;
    }

    /* renamed from: a */
    public void mo24585a(C9347c c9347c) {
        AbstractC9354j abstractC9354j = this.f32059b;
        if (abstractC9354j != null) {
            abstractC9354j.mo24585a(c9347c);
        }
    }
}
