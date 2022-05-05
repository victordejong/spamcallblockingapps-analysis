package kotlinx.coroutines.channels;

import java.util.Collection;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(bv = {1, 0, 3}, d1 = {"kotlinx/coroutines/channels/ChannelsKt__ChannelsKt", "kotlinx/coroutines/channels/ChannelsKt__Channels_commonKt"}, d2 = {}, k = 4, mv = {1, 4, 0}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/channels/ChannelsKt.class */
public final class ChannelsKt {
    @Deprecated
    @Nullable
    /* renamed from: A */
    public static final <E> Object m998A(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m926A(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: B */
    public static final <E> Object m997B(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m925B(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: C */
    public static final <E> Object m996C(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m924C(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: D */
    public static final <E> Object m995D(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m923D(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: E */
    public static final <E> Object m994E(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m922E(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: F */
    public static final <E> Object m993F(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m921F(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: G */
    public static final <E, R> Object m992G(@NotNull ReceiveChannel<? extends E> receiveChannel, R r, @NotNull Function2<? super R, ? super E, ? extends R> function2, @NotNull Continuation<? super R> continuation) {
        return ChannelsKt__Channels_commonKt.m920G(receiveChannel, r, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: H */
    public static final <E, R> Object m991H(@NotNull ReceiveChannel<? extends E> receiveChannel, R r, @NotNull Function3<? super Integer, ? super R, ? super E, ? extends R> function3, @NotNull Continuation<? super R> continuation) {
        return ChannelsKt__Channels_commonKt.m919H(receiveChannel, r, function3, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: I */
    public static final <E, K> Object m990I(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends K> function1, @NotNull Continuation<? super Map<K, ? extends List<? extends E>>> continuation) {
        return ChannelsKt__Channels_commonKt.m918I(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: J */
    public static final <E, K, V> Object m989J(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends K> function1, @NotNull Function1<? super E, ? extends V> function12, @NotNull Continuation<? super Map<K, ? extends List<? extends V>>> continuation) {
        return ChannelsKt__Channels_commonKt.m917J(receiveChannel, function1, function12, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: K */
    public static final <E, K, M extends Map<? super K, List<E>>> Object m988K(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull M m, @NotNull Function1<? super E, ? extends K> function1, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m916K(receiveChannel, m, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: L */
    public static final <E, K, V, M extends Map<? super K, List<V>>> Object m987L(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull M m, @NotNull Function1<? super E, ? extends K> function1, @NotNull Function1<? super E, ? extends V> function12, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m915L(receiveChannel, m, function1, function12, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: M */
    public static final <E> Object m986M(@NotNull ReceiveChannel<? extends E> receiveChannel, E e, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m914M(receiveChannel, e, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: N */
    public static final <E> Object m985N(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m913N(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: O */
    public static final <E> Object m984O(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m912O(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: P */
    public static final <E> Object m983P(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m911P(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: Q */
    public static final <E> Object m982Q(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m910Q(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: R */
    public static final <E> Object m981R(@NotNull ReceiveChannel<? extends E> receiveChannel, E e, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m909R(receiveChannel, e, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: S */
    public static final <E> Object m980S(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m908S(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: T */
    public static final <E> Object m979T(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m907T(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: U */
    public static final <E, R, C extends Collection<? super R>> Object m978U(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, ? extends R> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m906U(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: V */
    public static final <E, R, C extends SendChannel<? super R>> Object m977V(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, ? extends R> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m905V(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: W */
    public static final <E, R, C extends Collection<? super R>> Object m976W(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, ? extends R> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m904W(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: X */
    public static final <E, R, C extends SendChannel<? super R>> Object m975X(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, ? extends R> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m903X(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: Y */
    public static final <E, R, C extends Collection<? super R>> Object m974Y(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m902Y(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: Z */
    public static final <E, R, C extends SendChannel<? super R>> Object m973Z(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m901Z(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: a */
    public static final <E> Object m972a(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.m900a(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: a0 */
    public static final <E, R, C extends Collection<? super R>> Object m971a0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m899a0(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: b */
    public static final <E> Object m970b(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.m898b(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: b0 */
    public static final <E, R, C extends SendChannel<? super R>> Object m969b0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m897b0(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: c */
    public static final <E> Object m968c(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.m896c(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: c0 */
    public static final <E, R extends Comparable<? super R>> Object m967c0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m895c0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: d */
    public static final <E, K, V> Object m966d(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends Pair<? extends K, ? extends V>> function1, @NotNull Continuation<? super Map<K, ? extends V>> continuation) {
        return ChannelsKt__Channels_commonKt.m894d(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: d0 */
    public static final <E> Object m965d0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Comparator<? super E> comparator, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m893d0(receiveChannel, comparator, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: e */
    public static final <E, K> Object m964e(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends K> function1, @NotNull Continuation<? super Map<K, ? extends E>> continuation) {
        return ChannelsKt__Channels_commonKt.m892e(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: e0 */
    public static final <E, R extends Comparable<? super R>> Object m963e0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends R> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m891e0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: f */
    public static final <E, K, V> Object m962f(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, ? extends K> function1, @NotNull Function1<? super E, ? extends V> function12, @NotNull Continuation<? super Map<K, ? extends V>> continuation) {
        return ChannelsKt__Channels_commonKt.m890f(receiveChannel, function1, function12, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: f0 */
    public static final <E> Object m961f0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Comparator<? super E> comparator, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m889f0(receiveChannel, comparator, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: g */
    public static final <E, K, M extends Map<? super K, ? super E>> Object m960g(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull M m, @NotNull Function1<? super E, ? extends K> function1, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m888g(receiveChannel, m, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: g0 */
    public static final <E> Object m959g0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.m887g0(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: h */
    public static final <E, K, V, M extends Map<? super K, ? super V>> Object m958h(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull M m, @NotNull Function1<? super E, ? extends K> function1, @NotNull Function1<? super E, ? extends V> function12, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m886h(receiveChannel, m, function1, function12, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: h0 */
    public static final <E> Object m957h0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Boolean> continuation) {
        return ChannelsKt__Channels_commonKt.m885h0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: i */
    public static final <E, K, V, M extends Map<? super K, ? super V>> Object m956i(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull M m, @NotNull Function1<? super E, ? extends Pair<? extends K, ? extends V>> function1, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m884i(receiveChannel, m, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: i0 */
    public static final <E> Object m955i0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Pair<? extends List<? extends E>, ? extends List<? extends E>>> continuation) {
        return ChannelsKt__Channels_commonKt.m883i0(receiveChannel, function1, continuation);
    }

    @PublishedApi
    /* renamed from: j */
    public static final void m954j(@NotNull ReceiveChannel<?> receiveChannel, @Nullable Throwable th) {
        ChannelsKt__Channels_commonKt.m882j(receiveChannel, th);
    }

    @Deprecated
    @Nullable
    /* renamed from: j0 */
    public static final <S, E extends S> Object m953j0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function2<? super S, ? super E, ? extends S> function2, @NotNull Continuation<? super S> continuation) {
        return ChannelsKt__Channels_commonKt.m881j0(receiveChannel, function2, continuation);
    }

    @ObsoleteCoroutinesApi
    @Nullable
    /* renamed from: k */
    public static final <E> Object m952k(@NotNull BroadcastChannel<E> broadcastChannel, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return ChannelsKt__Channels_commonKt.m880k(broadcastChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: k0 */
    public static final <S, E extends S> Object m951k0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function3<? super Integer, ? super S, ? super E, ? extends S> function3, @NotNull Continuation<? super S> continuation) {
        return ChannelsKt__Channels_commonKt.m879k0(receiveChannel, function3, continuation);
    }

    @ExperimentalCoroutinesApi
    @Nullable
    /* renamed from: l */
    public static final <E> Object m950l(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return ChannelsKt__Channels_commonKt.m878l(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: l0 */
    public static final <E> Object m949l0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m877l0(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: m */
    public static final <E> Object m948m(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super IndexedValue<? extends E>, Unit> function1, @NotNull Continuation<? super Unit> continuation) {
        return ChannelsKt__Channels_commonKt.m876m(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: m0 */
    public static final <E> Object m947m0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m875m0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: n */
    public static final <E> Object m946n(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m874n(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: n0 */
    public static final <E> Object m945n0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m873n0(receiveChannel, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: o */
    public static final <E> Object m944o(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m872o(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: o0 */
    public static final <E> Object m943o0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m871o0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: p */
    public static final <E> Object m942p(@NotNull ReceiveChannel<? extends E> receiveChannel, int i, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m870p(receiveChannel, i, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: p0 */
    public static final <E> Object m941p0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Integer> function1, @NotNull Continuation<? super Integer> continuation) {
        return ChannelsKt__Channels_commonKt.m869p0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: q */
    public static final <E> Object m940q(@NotNull ReceiveChannel<? extends E> receiveChannel, int i, @NotNull Function1<? super Integer, ? extends E> function1, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m868q(receiveChannel, i, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: q0 */
    public static final <E> Object m939q0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Function1<? super E, Double> function1, @NotNull Continuation<? super Double> continuation) {
        return ChannelsKt__Channels_commonKt.m867q0(receiveChannel, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: r */
    public static final <E> Object m938r(@NotNull ReceiveChannel<? extends E> receiveChannel, int i, @NotNull Continuation<? super E> continuation) {
        return ChannelsKt__Channels_commonKt.m866r(receiveChannel, i, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: r0 */
    public static final <E, C extends SendChannel<? super E>> Object m937r0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m865r0(receiveChannel, c, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: s */
    public static final <E, C extends Collection<? super E>> Object m936s(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, Boolean> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m864s(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: s0 */
    public static final <E, C extends Collection<? super E>> Object m935s0(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m863s0(receiveChannel, c, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: t */
    public static final <E, C extends SendChannel<? super E>> Object m934t(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function2<? super Integer, ? super E, Boolean> function2, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m862t(receiveChannel, c, function2, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: t0 */
    public static final <K, V, M extends Map<? super K, ? super V>> Object m933t0(@NotNull ReceiveChannel<? extends Pair<? extends K, ? extends V>> receiveChannel, @NotNull M m, @NotNull Continuation<? super M> continuation) {
        return ChannelsKt__Channels_commonKt.m861t0(receiveChannel, m, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: u */
    public static final <E, C extends Collection<? super E>> Object m932u(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m860u(receiveChannel, c, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: v */
    public static final <E, C extends SendChannel<? super E>> Object m931v(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m859v(receiveChannel, c, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: w */
    public static final <E, C extends Collection<? super E>> Object m930w(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m858w(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: x */
    public static final <E, C extends SendChannel<? super E>> Object m929x(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m857x(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: y */
    public static final <E, C extends Collection<? super E>> Object m928y(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m856y(receiveChannel, c, function1, continuation);
    }

    @Deprecated
    @Nullable
    /* renamed from: z */
    public static final <E, C extends SendChannel<? super E>> Object m927z(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull C c, @NotNull Function1<? super E, Boolean> function1, @NotNull Continuation<? super C> continuation) {
        return ChannelsKt__Channels_commonKt.m855z(receiveChannel, c, function1, continuation);
    }
}
