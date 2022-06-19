package kotlin.jvm.internal;

import java.io.Serializable;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\b&\u0018��*\u0006\b��\u0010\u0001 \u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00020\u0003B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\t\u001a\u00020\nH\u0016R\u0014\u0010\u0004\u001a\u00020\u0005X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\b¨\u0006\u000b"}, m4298d2 = {"Lkotlin/jvm/internal/Lambda;", "R", "Lkotlin/jvm/internal/FunctionBase;", "Ljava/io/Serializable;", "arity", "", "(I)V", "getArity", "()I", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.jvm.internal.r */
/* loaded from: classes5-dex2jar.jar:kotlin/jvm/internal/r.class */
public abstract class AbstractC18526r<R> implements Serializable, AbstractC18520l<R> {
    private final int arity;

    public AbstractC18526r(int i) {
        this.arity = i;
    }

    @Override // kotlin.jvm.internal.AbstractC18520l
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String m3886a = C18496ac.m3886a((AbstractC18526r) this);
        C18524p.m3843b(m3886a, "Reflection.renderLambdaToString(this)");
        return m3886a;
    }
}
