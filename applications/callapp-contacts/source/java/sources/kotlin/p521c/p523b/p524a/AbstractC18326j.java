package kotlin.p521c.p523b.p524a;

import kotlin.Metadata;
import kotlin.jvm.internal.AbstractC18520l;
import kotlin.jvm.internal.C18496ac;
import kotlin.jvm.internal.C18524p;
import kotlin.p521c.AbstractC18332d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\b!\u0018��2\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u00020\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, m4298d2 = {"Lkotlin/coroutines/jvm/internal/SuspendLambda;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/jvm/internal/FunctionBase;", "", "Lkotlin/coroutines/jvm/internal/SuspendFunction;", "arity", "", "(I)V", "completion", "Lkotlin/coroutines/Continuation;", "(ILkotlin/coroutines/Continuation;)V", "getArity", "()I", "toString", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.c.b.a.j */
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/j.class */
public abstract class AbstractC18326j extends AbstractC18318c implements AbstractC18520l<Object> {

    /* renamed from: a */
    private final int f63432a;

    public AbstractC18326j(int i) {
        this(i, null);
    }

    public AbstractC18326j(int i, AbstractC18332d<Object> abstractC18332d) {
        super(abstractC18332d);
        this.f63432a = i;
    }

    @Override // kotlin.jvm.internal.AbstractC18520l
    public int getArity() {
        return this.f63432a;
    }

    @Override // kotlin.p521c.p523b.p524a.AbstractC18316a
    public String toString() {
        if (m4093e() == null) {
            String m3888a = C18496ac.m3888a(this);
            C18524p.m3843b(m3888a, "Reflection.renderLambdaToString(this)");
            return m3888a;
        }
        return super.toString();
    }
}
