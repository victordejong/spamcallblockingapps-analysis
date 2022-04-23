package p626l.p641z.p643d;

import java.io.Serializable;
/* renamed from: l.z.d.l */
/* loaded from: classes3-dex2jar.jar:l/z/d/l.class */
public abstract class AbstractC15150l<R> implements AbstractC15146h<R>, Serializable {
    public final int arity;

    public AbstractC15150l(int i) {
        this.arity = i;
    }

    @Override // p626l.p641z.p643d.AbstractC15146h
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String a = C15131a0.m415a((AbstractC15150l) this);
        C15149k.m383a((Object) a, "Reflection.renderLambdaToString(this)");
        return a;
    }
}
