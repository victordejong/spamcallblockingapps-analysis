package kotlin.jvm.internal;

import java.io.Serializable;
import p573f.p590w.p592c.AbstractC10058p;
import p573f.p590w.p592c.C10059q;
import p573f.p590w.p592c.C10062t;
/* loaded from: classes2-dex2jar.jar:kotlin/jvm/internal/Lambda.class */
public abstract class Lambda<R> implements AbstractC10058p<R>, Serializable {
    public final int arity;

    public Lambda(int i) {
        this.arity = i;
    }

    @Override // p573f.p590w.p592c.AbstractC10058p
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String a = C10062t.m1626a((Lambda) this);
        C10059q.m1642a((Object) a, "Reflection.renderLambdaToString(this)");
        return a;
    }
}
