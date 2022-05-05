package kotlinx.coroutines.selects;

import kotlin.Metadata;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0018\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a8\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u00012\u001f\b\u0004\u0010\u0002\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u0004\u0012\u0004\u0012\u00020\u00050\u0003¢\u0006\u0002\b\u0006H\u0086Hø\u0001��¢\u0006\u0002\u0010\u0007\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\b"}, m815d2 = {"selectUnbiased", "R", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectUnbiasedKt.class */
public final class SelectUnbiasedKt {
    public static final <R> Object selectUnbiased(AbstractC15118l<? super SelectBuilder<? super R>, C14989s> lVar, AbstractC15044d<? super R> dVar) {
        UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl = new UnbiasedSelectBuilderImpl(dVar);
        try {
            lVar.invoke(unbiasedSelectBuilderImpl);
        } catch (Throwable th) {
            unbiasedSelectBuilderImpl.handleBuilderException(th);
        }
        Object initSelectResult = unbiasedSelectBuilderImpl.initSelectResult();
        if (initSelectResult == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return initSelectResult;
    }

    public static final Object selectUnbiased$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        UnbiasedSelectBuilderImpl unbiasedSelectBuilderImpl = new UnbiasedSelectBuilderImpl(dVar);
        try {
            lVar.invoke(unbiasedSelectBuilderImpl);
        } catch (Throwable th) {
            unbiasedSelectBuilderImpl.handleBuilderException(th);
        }
        Object initSelectResult = unbiasedSelectBuilderImpl.initSelectResult();
        if (initSelectResult == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return initSelectResult;
    }
}
