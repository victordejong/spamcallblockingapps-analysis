package io.reactivex.internal.operators.flowable;

import io.reactivex.Emitter;
import io.reactivex.Flowable;
import io.reactivex.Scheduler;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Action;
import io.reactivex.functions.BiConsumer;
import io.reactivex.functions.BiFunction;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
import org.reactivestreams.Subscription;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper.class */
public final class FlowableInternalHelper {

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedReplayCallable.class */
    static final class BufferedReplayCallable<T> implements Callable<ConnectableFlowable<T>> {

        /* renamed from: f */
        private final Flowable<T> f16065f;

        /* renamed from: g */
        private final int f16066g;

        /* renamed from: a */
        public ConnectableFlowable<T> call() {
            return this.f16065f.m4496s(this.f16066g);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$BufferedTimedReplay.class */
    static final class BufferedTimedReplay<T> implements Callable<ConnectableFlowable<T>> {

        /* renamed from: f */
        private final Flowable<T> f16067f;

        /* renamed from: g */
        private final int f16068g;

        /* renamed from: h */
        private final long f16069h;

        /* renamed from: i */
        private final TimeUnit f16070i;

        /* renamed from: j */
        private final Scheduler f16071j;

        /* renamed from: a */
        public ConnectableFlowable<T> call() {
            return this.f16067f.m4495t(this.f16068g, this.f16069h, this.f16070i, this.f16071j);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapIntoIterable.class */
    static final class FlatMapIntoIterable<T, U> implements Function<T, Publisher<U>> {

        /* renamed from: f */
        private final Function<? super T, ? extends Iterable<? extends U>> f16072f;

        /* renamed from: a */
        public Publisher<U> apply(T t) throws Exception {
            Object apply = this.f16072f.apply(t);
            ObjectHelper.m4363e(apply, "The mapper returned a null Iterable");
            return new FlowableFromIterable((Iterable) apply);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerInner.class */
    public static final class FlatMapWithCombinerInner<U, R, T> implements Function<U, R> {

        /* renamed from: f */
        private final BiFunction<? super T, ? super U, ? extends R> f16073f;

        /* renamed from: g */
        private final T f16074g;

        FlatMapWithCombinerInner(BiFunction<? super T, ? super U, ? extends R> biFunction, T t) {
            this.f16073f = biFunction;
            this.f16074g = t;
        }

        @Override // io.reactivex.functions.Function
        public R apply(U u) throws Exception {
            return (R) this.f16073f.apply((T) this.f16074g, u);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$FlatMapWithCombinerOuter.class */
    static final class FlatMapWithCombinerOuter<T, R, U> implements Function<T, Publisher<R>> {

        /* renamed from: f */
        private final BiFunction<? super T, ? super U, ? extends R> f16075f;

        /* renamed from: g */
        private final Function<? super T, ? extends Publisher<? extends U>> f16076g;

        /* renamed from: a */
        public Publisher<R> apply(T t) throws Exception {
            Object apply = this.f16076g.apply(t);
            ObjectHelper.m4363e(apply, "The mapper returned a null Publisher");
            return new FlowableMapPublisher((Publisher) apply, new FlatMapWithCombinerInner(this.f16075f, t));
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$ItemDelayFunction.class */
    static final class ItemDelayFunction<T, U> implements Function<T, Publisher<T>> {

        /* renamed from: f */
        final Function<? super T, ? extends Publisher<U>> f16077f;

        /* renamed from: a */
        public Publisher<T> apply(T t) throws Exception {
            Object apply = this.f16077f.apply(t);
            ObjectHelper.m4363e(apply, "The itemDelay returned a null Publisher");
            return new FlowableTakePublisher((Publisher) apply, 1L).m4505i(Functions.m4403l(t)).m4509e(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayCallable.class */
    static final class ReplayCallable<T> implements Callable<ConnectableFlowable<T>> {

        /* renamed from: f */
        private final Flowable<T> f16078f;

        /* renamed from: a */
        public ConnectableFlowable<T> call() {
            return this.f16078f.m4497r();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$ReplayFunction.class */
    static final class ReplayFunction<T, R> implements Function<Flowable<T>, Publisher<R>> {

        /* renamed from: f */
        private final Function<? super Flowable<T>, ? extends Publisher<R>> f16079f;

        /* renamed from: g */
        private final Scheduler f16080g;

        /* renamed from: a */
        public Publisher<R> apply(Flowable<T> flowable) throws Exception {
            Object apply = this.f16079f.apply(flowable);
            ObjectHelper.m4363e(apply, "The selector returned a null Publisher");
            return Flowable.m4507g((Publisher) apply).m4503k(this.f16080g);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$RequestMax.class */
    public enum RequestMax implements Consumer<Subscription> {
        INSTANCE;

        public void accept(Subscription subscription) throws Exception {
            subscription.request(Long.MAX_VALUE);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleBiGenerator.class */
    static final class SimpleBiGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: f */
        final BiConsumer<S, Emitter<T>> f16081f;

        /* renamed from: a */
        public S m4186a(S s, Emitter<T> emitter) throws Exception {
            this.f16081f.mo4369a(s, emitter);
            return s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) throws Exception {
            m4186a(obj, (Emitter) obj2);
            return obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$SimpleGenerator.class */
    static final class SimpleGenerator<T, S> implements BiFunction<S, Emitter<T>, S> {

        /* renamed from: f */
        final Consumer<Emitter<T>> f16082f;

        /* renamed from: a */
        public S m4185a(S s, Emitter<T> emitter) throws Exception {
            this.f16082f.accept(emitter);
            return s;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // io.reactivex.functions.BiFunction
        public /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) throws Exception {
            m4185a(obj, (Emitter) obj2);
            return obj;
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnComplete.class */
    static final class SubscriberOnComplete<T> implements Action {

        /* renamed from: f */
        final Subscriber<T> f16083f;

        @Override // io.reactivex.functions.Action
        public void run() throws Exception {
            this.f16083f.onComplete();
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnError.class */
    static final class SubscriberOnError<T> implements Consumer<Throwable> {

        /* renamed from: f */
        final Subscriber<T> f16084f;

        /* renamed from: a */
        public void accept(Throwable th) throws Exception {
            this.f16084f.onError(th);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$SubscriberOnNext.class */
    static final class SubscriberOnNext<T> implements Consumer<T> {

        /* renamed from: f */
        final Subscriber<T> f16085f;

        @Override // io.reactivex.functions.Consumer
        public void accept(T t) throws Exception {
            this.f16085f.onNext(t);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$TimedReplay.class */
    static final class TimedReplay<T> implements Callable<ConnectableFlowable<T>> {

        /* renamed from: f */
        private final Flowable<T> f16086f;

        /* renamed from: g */
        private final long f16087g;

        /* renamed from: h */
        private final TimeUnit f16088h;

        /* renamed from: i */
        private final Scheduler f16089i;

        /* renamed from: a */
        public ConnectableFlowable<T> call() {
            return this.f16086f.m4494u(this.f16087g, this.f16088h, this.f16089i);
        }
    }

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/flowable/FlowableInternalHelper$ZipIterableFunction.class */
    static final class ZipIterableFunction<T, R> implements Function<List<Publisher<? extends T>>, Publisher<? extends R>> {

        /* renamed from: f */
        private final Function<? super Object[], ? extends R> f16090f;

        /* renamed from: a */
        public Publisher<? extends R> apply(List<Publisher<? extends T>> list) {
            return Flowable.m4512B(list, this.f16090f, false, Flowable.m4511a());
        }
    }

    private FlowableInternalHelper() {
        throw new IllegalStateException("No instances!");
    }
}
