package p626l.p634w.p636k.p637a;

import p626l.p634w.AbstractC15044d;
import p626l.p641z.p643d.AbstractC15146h;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
/* renamed from: l.w.k.a.k */
/* loaded from: classes3-dex2jar.jar:l/w/k/a/k.class */
public abstract class AbstractC15076k extends AbstractC15075j implements AbstractC15146h<Object>, AbstractC15077l {
    public final int arity;

    public AbstractC15076k(int i) {
        this(i, null);
    }

    public AbstractC15076k(int i, AbstractC15044d<Object> dVar) {
        super(dVar);
        this.arity = i;
    }

    @Override // p626l.p641z.p643d.AbstractC15146h
    public int getArity() {
        return this.arity;
    }

    @Override // p626l.p634w.p636k.p637a.AbstractC15065a
    public String toString() {
        String str;
        if (getCompletion() == null) {
            str = C15131a0.m417a(this);
            C15149k.m383a((Object) str, "Reflection.renderLambdaToString(this)");
        } else {
            str = super.toString();
        }
        return str;
    }
}
