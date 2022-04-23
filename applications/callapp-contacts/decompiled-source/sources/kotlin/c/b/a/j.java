package kotlin.c.b.a;

import kotlin.Metadata;
import kotlin.c.d;
import kotlin.jvm.internal.ac;
import kotlin.jvm.internal.l;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000e\n��\b!\u0018��2\u00020\u00012\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u00022\u00020\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001f\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0010\u0010\b\u001a\f\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\t¢\u0006\u0002\u0010\nJ\b\u0010\r\u001a\u00020\u000eH\u0016R\u0014\u0010\u0005\u001a\u00020\u0006X\u0096\u0004¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\u000f"}, d2 = {"Lkotlin/coroutines/jvm/internal/SuspendLambda;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/jvm/internal/FunctionBase;", "", "Lkotlin/coroutines/jvm/internal/SuspendFunction;", "arity", "", "(I)V", "completion", "Lkotlin/coroutines/Continuation;", "(ILkotlin/coroutines/Continuation;)V", "getArity", "()I", "toString", "", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/c/b/a/j.class */
public abstract class j extends c implements l<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final int f36639a;

    public j(int i) {
        this(i, null);
    }

    public j(int i, d<Object> dVar) {
        super(dVar);
        this.f36639a = i;
    }

    @Override // kotlin.jvm.internal.l
    public int getArity() {
        return this.f36639a;
    }

    @Override // kotlin.c.b.a.a
    public String toString() {
        if (e() != null) {
            return super.toString();
        }
        String a2 = ac.a(this);
        p.b(a2, "Reflection.renderLambdaToString(this)");
        return a2;
    }
}
