package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u0001JD\u0010\n\u001a\u00020\t\"\u0004\b��\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u00032\u001c\u0010\b\u001a\u0018\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00070\u0005H'ø\u0001��¢\u0006\u0004\b\n\u0010\u000b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlinx/coroutines/selects/SelectClause0;", "Lkotlin/Any;", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function1;", "Lkotlin/coroutines/Continuation;", "", "block", "", "registerSelectClause0", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function1;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/selects/SelectClause0.class */
public interface SelectClause0 {
    @InternalCoroutinesApi
    /* renamed from: k */
    <R> void mo318k(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1);
}
