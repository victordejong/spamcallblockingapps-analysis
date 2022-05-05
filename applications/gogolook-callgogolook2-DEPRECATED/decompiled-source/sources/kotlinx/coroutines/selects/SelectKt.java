package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.p635j.C15064c;
import p626l.p634w.p636k.p637a.C15072h;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n��\n\u0002\u0010��\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a8\u0010\r\u001a\u0002H\u000e\"\u0004\b��\u0010\u000e2\u001f\b\u0004\u0010\u000f\u001a\u0019\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u0011\u0012\u0004\u0012\u00020\u00120\u0010¢\u0006\u0002\b\u0013H\u0086Hø\u0001��¢\u0006\u0002\u0010\u0014\"\u001c\u0010��\u001a\u00020\u00018��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005\"\u0016\u0010\u0006\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0007\u0010\u0003\"\u0016\u0010\b\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\t\u0010\u0003\"\u0016\u0010\n\u001a\u00020\u000b8\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\f\u0010\u0003\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u0015"}, m815d2 = {"ALREADY_SELECTED", "", "ALREADY_SELECTED$annotations", "()V", "getALREADY_SELECTED", "()Ljava/lang/Object;", "RESUMED", "RESUMED$annotations", "UNDECIDED", "UNDECIDED$annotations", "selectOpSequenceNumber", "Lkotlinx/coroutines/selects/SeqNumber;", "selectOpSequenceNumber$annotations", "select", "R", "builder", "Lkotlin/Function1;", "Lkotlinx/coroutines/selects/SelectBuilder;", "", "Lkotlin/ExtensionFunctionType;", "(Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/selects/SelectKt.class */
public final class SelectKt {
    public static final Object ALREADY_SELECTED = new Symbol("ALREADY_SELECTED");
    public static final Object UNDECIDED = new Symbol("UNDECIDED");
    public static final Object RESUMED = new Symbol("RESUMED");
    public static final SeqNumber selectOpSequenceNumber = new SeqNumber();

    public static /* synthetic */ void ALREADY_SELECTED$annotations() {
    }

    public static /* synthetic */ void RESUMED$annotations() {
    }

    public static /* synthetic */ void UNDECIDED$annotations() {
    }

    public static final Object getALREADY_SELECTED() {
        return ALREADY_SELECTED;
    }

    public static final <R> Object select(AbstractC15118l<? super SelectBuilder<? super R>, C14989s> lVar, AbstractC15044d<? super R> dVar) {
        SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(dVar);
        try {
            lVar.invoke(selectBuilderImpl);
        } catch (Throwable th) {
            selectBuilderImpl.handleBuilderException(th);
        }
        Object result = selectBuilderImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        return result;
    }

    public static final Object select$$forInline(AbstractC15118l lVar, AbstractC15044d dVar) {
        C15148j.m388c(0);
        SelectBuilderImpl selectBuilderImpl = new SelectBuilderImpl(dVar);
        try {
            lVar.invoke(selectBuilderImpl);
        } catch (Throwable th) {
            selectBuilderImpl.handleBuilderException(th);
        }
        Object result = selectBuilderImpl.getResult();
        if (result == C15064c.m478a()) {
            C15072h.m462c(dVar);
        }
        C15148j.m388c(1);
        return result;
    }

    public static /* synthetic */ void selectOpSequenceNumber$annotations() {
    }
}
