package com.google.common.base;

import java.io.Serializable;
import p131c.p161d.p266c.p267a.AbstractC4920g;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/base/Functions$FunctionComposition.class */
public class Functions$FunctionComposition<A, B, C> implements AbstractC4920g<A, C>, Serializable {
    public static final long serialVersionUID = 0;

    /* renamed from: f */
    public final AbstractC4920g<A, ? extends B> f30275f;

    /* renamed from: g */
    public final AbstractC4920g<B, C> f30276g;

    public Functions$FunctionComposition(AbstractC4920g<B, C> gVar, AbstractC4920g<A, ? extends B> gVar2) {
        C4933n.m24795a(gVar);
        this.f30276g = gVar;
        C4933n.m24795a(gVar2);
        this.f30275f = gVar2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public C apply(A a) {
        return (C) this.f30276g.apply(this.f30275f.apply(a));
    }

    @Override // p131c.p161d.p266c.p267a.AbstractC4920g
    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Functions$FunctionComposition) {
            Functions$FunctionComposition functions$FunctionComposition = (Functions$FunctionComposition) obj;
            z = false;
            if (this.f30275f.equals(functions$FunctionComposition.f30275f)) {
                z = false;
                if (this.f30276g.equals(functions$FunctionComposition.f30276g)) {
                    z = true;
                }
            }
        }
        return z;
    }

    public int hashCode() {
        return this.f30275f.hashCode() ^ this.f30276g.hashCode();
    }

    public String toString() {
        return this.f30276g + "(" + this.f30275f + ")";
    }
}
