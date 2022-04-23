package kotlinx.coroutines.internal;

import kotlin.Metadata;
import kotlinx.coroutines.ThreadContextElement;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p643d.AbstractC15150l;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0010\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u0004\u0018\u00010\u00012\b\u0010\u0002\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n¢\u0006\u0002\b\u0005"}, m815d2 = {"<no name provided>", "", "countOrElement", "element", "Lkotlin/coroutines/CoroutineContext$Element;", "invoke"}, m814k = 3, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/internal/ThreadContextKt$countAll$1.class */
public final class ThreadContextKt$countAll$1 extends AbstractC15150l implements AbstractC15122p<Object, AbstractC15049g.AbstractC15052b, Object> {
    public static final ThreadContextKt$countAll$1 INSTANCE = new ThreadContextKt$countAll$1();

    public ThreadContextKt$countAll$1() {
        super(2);
    }

    public final Object invoke(Object obj, AbstractC15049g.AbstractC15052b bVar) {
        if (!(bVar instanceof ThreadContextElement)) {
            return obj;
        }
        Object obj2 = obj;
        if (!(obj instanceof Integer)) {
            obj2 = null;
        }
        Integer num = (Integer) obj2;
        int intValue = num != null ? num.intValue() : 1;
        Object obj3 = bVar;
        if (intValue != 0) {
            obj3 = Integer.valueOf(intValue + 1);
        }
        return obj3;
    }
}
