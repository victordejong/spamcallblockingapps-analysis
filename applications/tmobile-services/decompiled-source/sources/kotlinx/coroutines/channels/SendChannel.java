package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.selects.SelectClause2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0010\u0003\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��*\u0006\b��\u0010\u0001 ��2\u00020\u0002J\u001b\u0010\u0006\u001a\u00020\u00052\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0003H&¢\u0006\u0004\b\u0006\u0010\u0007J4\u0010\r\u001a\u00020\u000b2#\u0010\f\u001a\u001f\u0012\u0015\u0012\u0013\u0018\u00010\u0003¢\u0006\f\b\t\u0012\b\b\n\u0012\u0004\b\b(\u0004\u0012\u0004\u0012\u00020\u000b0\bH'¢\u0006\u0004\b\r\u0010\u000eJ\u0017\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00028��H&¢\u0006\u0004\b\u0010\u0010\u0011J\u001b\u0010\u0012\u001a\u00020\u000b2\u0006\u0010\u000f\u001a\u00028��H¦@ø\u0001��¢\u0006\u0004\b\u0012\u0010\u0013R\u001c\u0010\u0014\u001a\u00020\u00058&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0018\u001a\u00020\u00058&@'X§\u0004¢\u0006\f\u0012\u0004\b\u0019\u0010\u0017\u001a\u0004\b\u0018\u0010\u0015R(\u0010\u001d\u001a\u0014\u0012\u0004\u0012\u00028��\u0012\n\u0012\b\u0012\u0004\u0012\u00028��0��0\u001a8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u001b\u0010\u001c\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001e"}, d2 = {"Lkotlinx/coroutines/channels/SendChannel;", "E", "Lkotlin/Any;", "", "cause", "", "close", "(Ljava/lang/Throwable;)Z", "Lkotlin/Function1;", "Lkotlin/ParameterName;", "name", "", "handler", "invokeOnClose", "(Lkotlin/Function1;)V", "element", "offer", "(Ljava/lang/Object;)Z", "send", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "isClosedForSend", "()Z", "isClosedForSend$annotations", "()V", "isFull", "isFull$annotations", "Lkotlinx/coroutines/selects/SelectClause2;", "getOnSend", "()Lkotlinx/coroutines/selects/SelectClause2;", "onSend", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/SendChannel.class */
public interface SendChannel<E> {

    @Metadata(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/SendChannel$DefaultImpls.class */
    public static final class DefaultImpls {
        /* renamed from: a */
        public static /* synthetic */ boolean m800a(SendChannel sendChannel, Throwable th, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    th = null;
                }
                return sendChannel.mo802t(th);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
        }
    }

    @Nullable
    /* renamed from: A */
    Object mo805A(E e, @NotNull Continuation<? super Unit> continuation);

    /* renamed from: C */
    boolean mo804C();

    @NotNull
    /* renamed from: r */
    SelectClause2<E, SendChannel<E>> mo803r();

    /* renamed from: t */
    boolean mo802t(@Nullable Throwable th);

    @ExperimentalCoroutinesApi
    /* renamed from: w */
    void mo801w(@NotNull Function1<? super Throwable, Unit> function1);
}
