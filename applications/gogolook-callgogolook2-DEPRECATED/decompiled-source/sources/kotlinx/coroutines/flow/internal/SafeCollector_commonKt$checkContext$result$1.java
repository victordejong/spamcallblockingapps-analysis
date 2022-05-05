package kotlinx.coroutines.flow.internal;

import kotlin.Metadata;
import kotlinx.coroutines.Job;
import p626l.C14986p;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<anonymous>", "", "count", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/internal/SafeCollector_commonKt$checkContext$result$1.class */
public final class SafeCollector_commonKt$checkContext$result$1 extends AbstractC15150l implements AbstractC15122p<Integer, AbstractC15049g.AbstractC15052b, Integer> {
    public final /* synthetic */ SafeCollector $this_checkContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SafeCollector_commonKt$checkContext$result$1(SafeCollector safeCollector) {
        super(2);
        this.$this_checkContext = safeCollector;
    }

    public final int invoke(int i, AbstractC15049g.AbstractC15052b bVar) {
        AbstractC15049g.AbstractC15054c<?> key = bVar.getKey();
        AbstractC15049g.AbstractC15052b bVar2 = this.$this_checkContext.collectContext.get(key);
        if (key != Job.Key) {
            return bVar != bVar2 ? Integer.MIN_VALUE : i + 1;
        }
        Job job = (Job) bVar2;
        if (bVar != null) {
            Job transitiveCoroutineParent = SafeCollector_commonKt.transitiveCoroutineParent((Job) bVar, job);
            if (transitiveCoroutineParent == job) {
                if (job != null) {
                    i++;
                }
                return i;
            }
            throw new IllegalStateException(("Flow invariant is violated:\n\t\tEmission from another coroutine is detected.\n\t\tChild of " + transitiveCoroutineParent + ", expected child of " + job + ".\n\t\tFlowCollector is not thread-safe and concurrent emissions are prohibited.\n\t\tTo mitigate this restriction please use 'channelFlow' builder instead of 'flow'").toString());
        }
        throw new C14986p("null cannot be cast to non-null type kotlinx.coroutines.Job");
    }

    @Override // p626l.p641z.p642c.AbstractC15122p
    public /* bridge */ /* synthetic */ Integer invoke(Integer num, AbstractC15049g.AbstractC15052b bVar) {
        return Integer.valueOf(invoke(num.intValue(), bVar));
    }
}
