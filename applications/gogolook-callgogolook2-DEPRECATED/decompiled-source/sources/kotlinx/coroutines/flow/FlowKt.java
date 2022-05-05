package kotlinx.coroutines.flow;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Metadata;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.BroadcastChannel;
import kotlinx.coroutines.channels.ProducerScope;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.SendChannel;
import p626l.C14989s;
import p626l.p628b0.C14888d;
import p626l.p628b0.C14893g;
import p626l.p630d0.AbstractC14921e;
import p626l.p632u.C15035z;
import p626l.p634w.AbstractC15044d;
import p626l.p634w.AbstractC15049g;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p642c.AbstractC15122p;
import p626l.p641z.p642c.AbstractC15123q;
import p626l.p641z.p642c.AbstractC15124r;
import p626l.p641z.p642c.AbstractC15125s;
import p626l.p641z.p642c.AbstractC15126t;
import p626l.p641z.p642c.AbstractC15127u;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"kotlinx/coroutines/flow/FlowKt__BuildersKt", "kotlinx/coroutines/flow/FlowKt__ChannelsKt", "kotlinx/coroutines/flow/FlowKt__CollectKt", "kotlinx/coroutines/flow/FlowKt__CollectionKt", "kotlinx/coroutines/flow/FlowKt__ContextKt", "kotlinx/coroutines/flow/FlowKt__CountKt", "kotlinx/coroutines/flow/FlowKt__DelayKt", "kotlinx/coroutines/flow/FlowKt__DistinctKt", "kotlinx/coroutines/flow/FlowKt__EmittersKt", "kotlinx/coroutines/flow/FlowKt__ErrorsKt", "kotlinx/coroutines/flow/FlowKt__LimitKt", "kotlinx/coroutines/flow/FlowKt__MergeKt", "kotlinx/coroutines/flow/FlowKt__MigrationKt", "kotlinx/coroutines/flow/FlowKt__ReduceKt", "kotlinx/coroutines/flow/FlowKt__TransformKt", "kotlinx/coroutines/flow/FlowKt__ZipKt"}, m814k = 4, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/flow/FlowKt.class */
public final class FlowKt {
    public static final String DEFAULT_CONCURRENCY_PROPERTY_NAME = "kotlinx.coroutines.flow.defaultConcurrency";

    @FlowPreview
    public static /* synthetic */ void DEFAULT_CONCURRENCY_PROPERTY_NAME$annotations() {
    }

    public static final <T> Flow<T> asFlow(Iterable<? extends T> iterable) {
        return FlowKt__BuildersKt.asFlow(iterable);
    }

    public static final <T> Flow<T> asFlow(Iterator<? extends T> it) {
        return FlowKt__BuildersKt.asFlow(it);
    }

    @FlowPreview
    public static final <T> Flow<T> asFlow(BroadcastChannel<T> broadcastChannel) {
        return FlowKt__ChannelsKt.asFlow(broadcastChannel);
    }

    public static final Flow<Integer> asFlow(C14888d dVar) {
        return FlowKt__BuildersKt.asFlow(dVar);
    }

    public static final Flow<Long> asFlow(C14893g gVar) {
        return FlowKt__BuildersKt.asFlow(gVar);
    }

    public static final <T> Flow<T> asFlow(AbstractC14921e<? extends T> eVar) {
        return FlowKt__BuildersKt.asFlow(eVar);
    }

    @FlowPreview
    public static final <T> Flow<T> asFlow(AbstractC15107a<? extends T> aVar) {
        return FlowKt__BuildersKt.asFlow(aVar);
    }

    @FlowPreview
    public static final <T> Flow<T> asFlow(AbstractC15118l<? super AbstractC15044d<? super T>, ? extends Object> lVar) {
        return FlowKt__BuildersKt.asFlow(lVar);
    }

    public static final Flow<Integer> asFlow(int[] iArr) {
        return FlowKt__BuildersKt.asFlow(iArr);
    }

    public static final Flow<Long> asFlow(long[] jArr) {
        return FlowKt__BuildersKt.asFlow(jArr);
    }

    public static final <T> Flow<T> asFlow(T[] tArr) {
        return FlowKt__BuildersKt.asFlow(tArr);
    }

    @FlowPreview
    public static final <T> BroadcastChannel<T> broadcastIn(Flow<? extends T> flow, CoroutineScope coroutineScope, CoroutineStart coroutineStart) {
        return FlowKt__ChannelsKt.broadcastIn(flow, coroutineScope, coroutineStart);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> buffer(Flow<? extends T> flow, int i) {
        return FlowKt__ContextKt.buffer(flow, i);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> callbackFlow(AbstractC15122p<? super ProducerScope<? super T>, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return FlowKt__BuildersKt.callbackFlow(pVar);
    }

    @ExperimentalCoroutinesApi
    /* renamed from: catch  reason: not valid java name */
    public static final <T> Flow<T> m41852catch(Flow<? extends T> flow, AbstractC15123q<? super FlowCollector<? super T>, ? super Throwable, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar) {
        return FlowKt__ErrorsKt.m41854catch(flow, qVar);
    }

    public static final <T> Object catchImpl(Flow<? extends T> flow, FlowCollector<? super T> flowCollector, AbstractC15044d<? super Throwable> dVar) {
        return FlowKt__ErrorsKt.catchImpl(flow, flowCollector, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> channelFlow(AbstractC15122p<? super ProducerScope<? super T>, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return FlowKt__BuildersKt.channelFlow(pVar);
    }

    public static final Object collect(Flow<?> flow, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__CollectKt.collect(flow, dVar);
    }

    public static final <T> Object collect(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__CollectKt.collect(flow, pVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object collectIndexed(Flow<? extends T> flow, AbstractC15123q<? super Integer, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__CollectKt.collectIndexed(flow, qVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object collectLatest(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__CollectKt.collectLatest(flow, pVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combine(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, Flow<? extends T5> flow5, AbstractC15126t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super AbstractC15044d<? super R>, ? extends Object> tVar) {
        return FlowKt__ZipKt.combine(flow, flow2, flow3, flow4, flow5, tVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, T4, R> Flow<R> combine(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, AbstractC15125s<? super T1, ? super T2, ? super T3, ? super T4, ? super AbstractC15044d<? super R>, ? extends Object> sVar) {
        return FlowKt__ZipKt.combine(flow, flow2, flow3, flow4, sVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, R> Flow<R> combine(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, AbstractC15124r<? super T1, ? super T2, ? super T3, ? super AbstractC15044d<? super R>, ? extends Object> rVar) {
        return FlowKt__ZipKt.combine(flow, flow2, flow3, rVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, R> Flow<R> combine(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__ZipKt.combine(flow, flow2, qVar);
    }

    public static final <T1, T2, T3, T4, T5, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, Flow<? extends T5> flow5, AbstractC15126t<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super AbstractC15044d<? super R>, ? extends Object> tVar) {
        return FlowKt__MigrationKt.combineLatest(flow, flow2, flow3, flow4, flow5, tVar);
    }

    public static final <T1, T2, T3, T4, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, AbstractC15125s<? super T1, ? super T2, ? super T3, ? super T4, ? super AbstractC15044d<? super R>, ? extends Object> sVar) {
        return FlowKt__MigrationKt.combineLatest(flow, flow2, flow3, flow4, sVar);
    }

    public static final <T1, T2, T3, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, AbstractC15124r<? super T1, ? super T2, ? super T3, ? super AbstractC15044d<? super R>, ? extends Object> rVar) {
        return FlowKt__MigrationKt.combineLatest(flow, flow2, flow3, rVar);
    }

    public static final <T1, T2, R> Flow<R> combineLatest(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__MigrationKt.combineLatest(flow, flow2, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, T4, T5, R> Flow<R> combineTransform(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, Flow<? extends T5> flow5, AbstractC15127u<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super AbstractC15044d<? super C14989s>, ? extends Object> uVar) {
        return FlowKt__ZipKt.combineTransform(flow, flow2, flow3, flow4, flow5, uVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, T4, R> Flow<R> combineTransform(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, Flow<? extends T4> flow4, AbstractC15126t<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super T4, ? super AbstractC15044d<? super C14989s>, ? extends Object> tVar) {
        return FlowKt__ZipKt.combineTransform(flow, flow2, flow3, flow4, tVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, T3, R> Flow<R> combineTransform(Flow<? extends T1> flow, Flow<? extends T2> flow2, Flow<? extends T3> flow3, AbstractC15125s<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super T3, ? super AbstractC15044d<? super C14989s>, ? extends Object> sVar) {
        return FlowKt__ZipKt.combineTransform(flow, flow2, flow3, sVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, R> Flow<R> combineTransform(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15124r<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super AbstractC15044d<? super C14989s>, ? extends Object> rVar) {
        return FlowKt__ZipKt.combineTransform(flow, flow2, rVar);
    }

    public static final <T, R> Flow<R> compose(Flow<? extends T> flow, AbstractC15118l<? super Flow<? extends T>, ? extends Flow<? extends R>> lVar) {
        return FlowKt__MigrationKt.compose(flow, lVar);
    }

    public static final <T, R> Flow<R> concatMap(Flow<? extends T> flow, AbstractC15118l<? super T, ? extends Flow<? extends R>> lVar) {
        return FlowKt__MigrationKt.concatMap(flow, lVar);
    }

    public static final <T> Flow<T> concatWith(Flow<? extends T> flow, T t) {
        return FlowKt__MigrationKt.concatWith(flow, t);
    }

    public static final <T> Flow<T> concatWith(Flow<? extends T> flow, Flow<? extends T> flow2) {
        return FlowKt__MigrationKt.concatWith((Flow) flow, (Flow) flow2);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> conflate(Flow<? extends T> flow) {
        return FlowKt__ContextKt.conflate(flow);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> consumeAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return FlowKt__ChannelsKt.consumeAsFlow(receiveChannel);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object count(Flow<? extends T> flow, AbstractC15044d<? super Integer> dVar) {
        return FlowKt__CountKt.count(flow, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object count(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar, AbstractC15044d<? super Integer> dVar) {
        return FlowKt__CountKt.count(flow, pVar, dVar);
    }

    @FlowPreview
    public static final <T> Flow<T> debounce(Flow<? extends T> flow, long j) {
        return FlowKt__DelayKt.debounce(flow, j);
    }

    public static final <T> Flow<T> delayEach(Flow<? extends T> flow, long j) {
        return FlowKt__MigrationKt.delayEach(flow, j);
    }

    public static final <T> Flow<T> delayFlow(Flow<? extends T> flow, long j) {
        return FlowKt__MigrationKt.delayFlow(flow, j);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> distinctUntilChanged(Flow<? extends T> flow) {
        return FlowKt__DistinctKt.distinctUntilChanged(flow);
    }

    @FlowPreview
    public static final <T> Flow<T> distinctUntilChanged(Flow<? extends T> flow, AbstractC15122p<? super T, ? super T, Boolean> pVar) {
        return FlowKt__DistinctKt.distinctUntilChanged(flow, pVar);
    }

    @FlowPreview
    public static final <T, K> Flow<T> distinctUntilChangedBy(Flow<? extends T> flow, AbstractC15118l<? super T, ? extends K> lVar) {
        return FlowKt__DistinctKt.distinctUntilChangedBy(flow, lVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> drop(Flow<? extends T> flow, int i) {
        return FlowKt__LimitKt.drop(flow, i);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> dropWhile(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return FlowKt__LimitKt.dropWhile(flow, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, ReceiveChannel<? extends T> receiveChannel, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__ChannelsKt.emitAll(flowCollector, receiveChannel, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Object emitAll(FlowCollector<? super T> flowCollector, Flow<? extends T> flow, AbstractC15044d<? super C14989s> dVar) {
        return FlowKt__CollectKt.emitAll(flowCollector, flow, dVar);
    }

    public static final <T> Flow<T> emptyFlow() {
        return FlowKt__BuildersKt.emptyFlow();
    }

    public static final <T> Flow<T> filter(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return FlowKt__TransformKt.filter(flow, pVar);
    }

    public static final <T> Flow<T> filterNot(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return FlowKt__TransformKt.filterNot(flow, pVar);
    }

    public static final <T> Flow<T> filterNotNull(Flow<? extends T> flow) {
        return FlowKt__TransformKt.filterNotNull(flow);
    }

    public static final <T> Object first(Flow<? extends T> flow, AbstractC15044d<? super T> dVar) {
        return FlowKt__ReduceKt.first(flow, dVar);
    }

    public static final <T> Object first(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar, AbstractC15044d<? super T> dVar) {
        return FlowKt__ReduceKt.first(flow, pVar, dVar);
    }

    public static final ReceiveChannel<C14989s> fixedPeriodTicker(CoroutineScope coroutineScope, long j, long j2) {
        return FlowKt__DelayKt.fixedPeriodTicker(coroutineScope, j, j2);
    }

    public static final <T, R> Flow<R> flatMap(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt__MigrationKt.flatMap(flow, pVar);
    }

    @FlowPreview
    public static final <T, R> Flow<R> flatMapConcat(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt__MergeKt.flatMapConcat(flow, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> flatMapLatest(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt__MergeKt.flatMapLatest(flow, pVar);
    }

    @FlowPreview
    public static final <T, R> Flow<R> flatMapMerge(Flow<? extends T> flow, int i, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt__MergeKt.flatMapMerge(flow, i, pVar);
    }

    public static final <T> Flow<T> flatten(Flow<? extends Flow<? extends T>> flow) {
        return FlowKt__MigrationKt.flatten(flow);
    }

    @FlowPreview
    public static final <T> Flow<T> flattenConcat(Flow<? extends Flow<? extends T>> flow) {
        return FlowKt__MergeKt.flattenConcat(flow);
    }

    @FlowPreview
    public static final <T> Flow<T> flattenMerge(Flow<? extends Flow<? extends T>> flow, int i) {
        return FlowKt__MergeKt.flattenMerge(flow, i);
    }

    public static final <T> Flow<T> flow(AbstractC15122p<? super FlowCollector<? super T>, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return FlowKt__BuildersKt.flow(pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, R> Flow<R> flowCombine(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__ZipKt.flowCombine(flow, flow2, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, R> Flow<R> flowCombineTransform(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15124r<? super FlowCollector<? super R>, ? super T1, ? super T2, ? super AbstractC15044d<? super C14989s>, ? extends Object> rVar) {
        return FlowKt__ZipKt.flowCombineTransform(flow, flow2, rVar);
    }

    public static final <T> Flow<T> flowOf(T t) {
        return FlowKt__BuildersKt.flowOf(t);
    }

    public static final <T> Flow<T> flowOf(T... tArr) {
        return FlowKt__BuildersKt.flowOf((Object[]) tArr);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> flowOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        return FlowKt__ContextKt.flowOn(flow, gVar);
    }

    @FlowPreview
    public static final <T> Flow<T> flowViaChannel(int i, AbstractC15122p<? super CoroutineScope, ? super SendChannel<? super T>, C14989s> pVar) {
        return FlowKt__BuildersKt.flowViaChannel(i, pVar);
    }

    @FlowPreview
    public static final <T, R> Flow<R> flowWith(Flow<? extends T> flow, AbstractC15049g gVar, int i, AbstractC15118l<? super Flow<? extends T>, ? extends Flow<? extends R>> lVar) {
        return FlowKt__ContextKt.flowWith(flow, gVar, i, lVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Object fold(Flow<? extends T> flow, R r, AbstractC15123q<? super R, ? super T, ? super AbstractC15044d<? super R>, ? extends Object> qVar, AbstractC15044d<? super R> dVar) {
        return FlowKt__ReduceKt.fold(flow, r, qVar, dVar);
    }

    public static final <T> void forEach(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        FlowKt__MigrationKt.forEach(flow, pVar);
    }

    public static final int getDEFAULT_CONCURRENCY() {
        return FlowKt__MergeKt.getDEFAULT_CONCURRENCY();
    }

    @ExperimentalCoroutinesApi
    public static final <T> Job launchIn(Flow<? extends T> flow, CoroutineScope coroutineScope) {
        return FlowKt__CollectKt.launchIn(flow, coroutineScope);
    }

    public static final <T, R> Flow<R> map(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return FlowKt__TransformKt.map(flow, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> mapLatest(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return FlowKt__MergeKt.mapLatest(flow, pVar);
    }

    public static final <T, R> Flow<R> mapNotNull(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super R>, ? extends Object> pVar) {
        return FlowKt__TransformKt.mapNotNull(flow, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> merge(Iterable<? extends Flow<? extends T>> iterable) {
        return FlowKt__MergeKt.merge(iterable);
    }

    public static final <T> Flow<T> merge(Flow<? extends Flow<? extends T>> flow) {
        return FlowKt__MigrationKt.merge(flow);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> merge(Flow<? extends T>... flowArr) {
        return FlowKt__MergeKt.merge(flowArr);
    }

    public static final <T> Flow<T> observeOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        return FlowKt__MigrationKt.observeOn(flow, gVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> onCompletion(Flow<? extends T> flow, AbstractC15123q<? super FlowCollector<? super T>, ? super Throwable, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar) {
        return FlowKt__EmittersKt.onCompletion(flow, qVar);
    }

    public static final <T> Flow<T> onEach(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return FlowKt__TransformKt.onEach(flow, pVar);
    }

    public static final <T> Flow<T> onErrorCollect(Flow<? extends T> flow, Flow<? extends T> flow2, AbstractC15118l<? super Throwable, Boolean> lVar) {
        return FlowKt__ErrorsKt.onErrorCollect(flow, flow2, lVar);
    }

    public static final <T> Flow<T> onErrorResume(Flow<? extends T> flow, Flow<? extends T> flow2) {
        return FlowKt__MigrationKt.onErrorResume(flow, flow2);
    }

    public static final <T> Flow<T> onErrorResumeNext(Flow<? extends T> flow, Flow<? extends T> flow2) {
        return FlowKt__MigrationKt.onErrorResumeNext(flow, flow2);
    }

    public static final <T> Flow<T> onErrorReturn(Flow<? extends T> flow, T t) {
        return FlowKt__MigrationKt.onErrorReturn(flow, t);
    }

    public static final <T> Flow<T> onErrorReturn(Flow<? extends T> flow, T t, AbstractC15118l<? super Throwable, Boolean> lVar) {
        return FlowKt__MigrationKt.onErrorReturn(flow, t, lVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> onStart(Flow<? extends T> flow, AbstractC15122p<? super FlowCollector<? super T>, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        return FlowKt__EmittersKt.onStart(flow, pVar);
    }

    @FlowPreview
    public static final <T> ReceiveChannel<T> produceIn(Flow<? extends T> flow, CoroutineScope coroutineScope) {
        return FlowKt__ChannelsKt.produceIn(flow, coroutineScope);
    }

    public static final <T> Flow<T> publishOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        return FlowKt__MigrationKt.publishOn(flow, gVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> receiveAsFlow(ReceiveChannel<? extends T> receiveChannel) {
        return FlowKt__ChannelsKt.receiveAsFlow(receiveChannel);
    }

    @ExperimentalCoroutinesApi
    public static final <S, T extends S> Object reduce(Flow<? extends T> flow, AbstractC15123q<? super S, ? super T, ? super AbstractC15044d<? super S>, ? extends Object> qVar, AbstractC15044d<? super S> dVar) {
        return FlowKt__ReduceKt.reduce(flow, qVar, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> retry(Flow<? extends T> flow, long j, AbstractC15122p<? super Throwable, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return FlowKt__ErrorsKt.retry(flow, j, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> retryWhen(Flow<? extends T> flow, AbstractC15124r<? super FlowCollector<? super T>, ? super Throwable, ? super Long, ? super AbstractC15044d<? super Boolean>, ? extends Object> rVar) {
        return FlowKt__ErrorsKt.retryWhen(flow, rVar);
    }

    @FlowPreview
    public static final <T> Flow<T> sample(Flow<? extends T> flow, long j) {
        return FlowKt__DelayKt.sample(flow, j);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> scan(Flow<? extends T> flow, R r, AbstractC15123q<? super R, ? super T, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__TransformKt.scan(flow, r, qVar);
    }

    public static final <T, R> Flow<R> scanFold(Flow<? extends T> flow, R r, AbstractC15123q<? super R, ? super T, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__MigrationKt.scanFold(flow, r, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> scanReduce(Flow<? extends T> flow, AbstractC15123q<? super T, ? super T, ? super AbstractC15044d<? super T>, ? extends Object> qVar) {
        return FlowKt__TransformKt.scanReduce(flow, qVar);
    }

    public static final <T> Object single(Flow<? extends T> flow, AbstractC15044d<? super T> dVar) {
        return FlowKt__ReduceKt.single(flow, dVar);
    }

    public static final <T> Object singleOrNull(Flow<? extends T> flow, AbstractC15044d<? super T> dVar) {
        return FlowKt__ReduceKt.singleOrNull(flow, dVar);
    }

    public static final <T> Flow<T> skip(Flow<? extends T> flow, int i) {
        return FlowKt__MigrationKt.skip(flow, i);
    }

    public static final <T> Flow<T> startWith(Flow<? extends T> flow, T t) {
        return FlowKt__MigrationKt.startWith(flow, t);
    }

    public static final <T> Flow<T> startWith(Flow<? extends T> flow, Flow<? extends T> flow2) {
        return FlowKt__MigrationKt.startWith((Flow) flow, (Flow) flow2);
    }

    public static final <T> void subscribe(Flow<? extends T> flow) {
        FlowKt__MigrationKt.subscribe(flow);
    }

    public static final <T> void subscribe(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar) {
        FlowKt__MigrationKt.subscribe(flow, pVar);
    }

    public static final <T> void subscribe(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar, AbstractC15122p<? super Throwable, ? super AbstractC15044d<? super C14989s>, ? extends Object> pVar2) {
        FlowKt__MigrationKt.subscribe(flow, pVar, pVar2);
    }

    public static final <T> Flow<T> subscribeOn(Flow<? extends T> flow, AbstractC15049g gVar) {
        return FlowKt__MigrationKt.subscribeOn(flow, gVar);
    }

    public static final <T, R> Flow<R> switchMap(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Flow<? extends R>>, ? extends Object> pVar) {
        return FlowKt__MigrationKt.switchMap(flow, pVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> take(Flow<? extends T> flow, int i) {
        return FlowKt__LimitKt.take(flow, i);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<T> takeWhile(Flow<? extends T> flow, AbstractC15122p<? super T, ? super AbstractC15044d<? super Boolean>, ? extends Object> pVar) {
        return FlowKt__LimitKt.takeWhile(flow, pVar);
    }

    public static final <T, C extends Collection<? super T>> Object toCollection(Flow<? extends T> flow, C c, AbstractC15044d<? super C> dVar) {
        return FlowKt__CollectionKt.toCollection(flow, c, dVar);
    }

    public static final <T> Object toList(Flow<? extends T> flow, List<T> list, AbstractC15044d<? super List<? extends T>> dVar) {
        return FlowKt__CollectionKt.toList(flow, list, dVar);
    }

    public static final <T> Object toSet(Flow<? extends T> flow, Set<T> set, AbstractC15044d<? super Set<? extends T>> dVar) {
        return FlowKt__CollectionKt.toSet(flow, set, dVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> transform(Flow<? extends T> flow, AbstractC15123q<? super FlowCollector<? super R>, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar) {
        return FlowKt__EmittersKt.transform(flow, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T, R> Flow<R> transformLatest(Flow<? extends T> flow, AbstractC15123q<? super FlowCollector<? super R>, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar) {
        return FlowKt__MergeKt.transformLatest(flow, qVar);
    }

    public static final <T, R> Flow<R> unsafeTransform(Flow<? extends T> flow, AbstractC15123q<? super FlowCollector<? super R>, ? super T, ? super AbstractC15044d<? super C14989s>, ? extends Object> qVar) {
        return FlowKt__EmittersKt.unsafeTransform(flow, qVar);
    }

    @ExperimentalCoroutinesApi
    public static final <T> Flow<C15035z<T>> withIndex(Flow<? extends T> flow) {
        return FlowKt__TransformKt.withIndex(flow);
    }

    @ExperimentalCoroutinesApi
    public static final <T1, T2, R> Flow<R> zip(Flow<? extends T1> flow, Flow<? extends T2> flow2, AbstractC15123q<? super T1, ? super T2, ? super AbstractC15044d<? super R>, ? extends Object> qVar) {
        return FlowKt__ZipKt.zip(flow, flow2, qVar);
    }
}
