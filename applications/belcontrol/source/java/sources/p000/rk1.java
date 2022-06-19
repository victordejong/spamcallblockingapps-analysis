package p000;

import java.io.Serializable;
/* renamed from: rk1 */
/* loaded from: classes3-dex2jar.jar:rk1.class */
public abstract class rk1<R> implements pk1<R>, Serializable {

    /* renamed from: a */
    public final int f8073a;

    public rk1(int i) {
        this.f8073a = i;
    }

    public int getArity() {
        return this.f8073a;
    }

    public String toString() {
        String m560b = sk1.m560b(this);
        qk1.m745b(m560b, "Reflection.renderLambdaToString(this)");
        return m560b;
    }
}
