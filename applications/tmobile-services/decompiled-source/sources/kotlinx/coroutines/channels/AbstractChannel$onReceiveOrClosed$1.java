package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.selects.SelectClause1;
import kotlinx.coroutines.selects.SelectInstance;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��+\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0003*\u0001��\b\n\u0018��2\u00020\u0001JS\u0010\u000b\u001a\u00020\n\"\u0004\b\u0001\u0010\u00022\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028\u00010\u00032(\u0010\t\u001a$\b\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0\u0006\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00010\u0007\u0012\u0006\u0012\u0004\u0018\u00010\b0\u0005H\u0016ø\u0001��ø\u0001��¢\u0006\u0004\b\u000b\u0010\fø\u0001��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\r"}, d2 = {"kotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1", "Lkotlinx/coroutines/selects/SelectClause1;", "R", "Lkotlinx/coroutines/selects/SelectInstance;", "select", "Lkotlin/Function2;", "Lkotlinx/coroutines/channels/ValueOrClosed;", "Lkotlin/coroutines/Continuation;", "", "block", "", "registerSelectClause1", "(Lkotlinx/coroutines/selects/SelectInstance;Lkotlin/jvm/functions/Function2;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/AbstractChannel$onReceiveOrClosed$1.class */
public final class AbstractChannel$onReceiveOrClosed$1 implements SelectClause1<ValueOrClosed<? extends E>> {

    /* renamed from: f */
    final /* synthetic */ AbstractChannel f21291f;

    @Override // kotlinx.coroutines.selects.SelectClause1
    /* renamed from: f */
    public <R> void mo317f(@NotNull SelectInstance<? super R> selectInstance, @NotNull Function2<? super ValueOrClosed<? extends E>, ? super Continuation<? super R>, ? extends Object> function2) {
        AbstractChannel abstractChannel = this.f21291f;
        if (function2 != 0) {
            abstractChannel.m1066f0(selectInstance, 2, function2);
            return;
        }
        throw new NullPointerException("null cannot be cast to non-null type suspend (kotlin.Any?) -> R");
    }
}
