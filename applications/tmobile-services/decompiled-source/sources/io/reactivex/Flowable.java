package io.reactivex;

import io.reactivex.annotations.BackpressureSupport;
import io.reactivex.annotations.CheckReturnValue;
import io.reactivex.annotations.NonNull;
import io.reactivex.annotations.SchedulerSupport;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.flowables.ConnectableFlowable;
import io.reactivex.functions.Function;
import io.reactivex.internal.functions.Functions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.flowable.FlowableCreate;
import io.reactivex.internal.operators.flowable.FlowableFromIterable;
import io.reactivex.internal.operators.flowable.FlowableFromPublisher;
import io.reactivex.internal.operators.flowable.FlowableJust;
import io.reactivex.internal.operators.flowable.FlowableMap;
import io.reactivex.internal.operators.flowable.FlowableMaterialize;
import io.reactivex.internal.operators.flowable.FlowableObserveOn;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureBuffer;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureDrop;
import io.reactivex.internal.operators.flowable.FlowableOnBackpressureLatest;
import io.reactivex.internal.operators.flowable.FlowableReplay;
import io.reactivex.internal.operators.flowable.FlowableSubscribeOn;
import io.reactivex.internal.operators.flowable.FlowableSwitchIfEmpty;
import io.reactivex.internal.operators.flowable.FlowableUnsubscribeOn;
import io.reactivex.internal.operators.flowable.FlowableZip;
import io.reactivex.internal.subscribers.StrictSubscriber;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import org.reactivestreams.Publisher;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/Flowable.class */
public abstract class Flowable<T> implements Publisher<T> {

    /* renamed from: f */
    static final int f15085f = Math.max(1, Integer.getInteger("rx2.buffer-size", 128).intValue());

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: B */
    public static <T, R> Flowable<R> m4512B(Iterable<? extends Publisher<? extends T>> iterable, Function<? super Object[], ? extends R> function, boolean z, int i) {
        ObjectHelper.m4363e(function, "zipper is null");
        ObjectHelper.m4363e(iterable, "sources is null");
        ObjectHelper.m4362f(i, "bufferSize");
        return RxJavaPlugins.m3362l(new FlowableZip(null, iterable, function, i, z));
    }

    /* renamed from: a */
    public static int m4511a() {
        return f15085f;
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: d */
    public static <T> Flowable<T> m4510d(FlowableOnSubscribe<T> flowableOnSubscribe, BackpressureStrategy backpressureStrategy) {
        ObjectHelper.m4363e(flowableOnSubscribe, "source is null");
        ObjectHelper.m4363e(backpressureStrategy, "mode is null");
        return RxJavaPlugins.m3362l(new FlowableCreate(flowableOnSubscribe, backpressureStrategy));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: f */
    public static <T> Flowable<T> m4508f(Iterable<? extends T> iterable) {
        ObjectHelper.m4363e(iterable, "source is null");
        return RxJavaPlugins.m3362l(new FlowableFromIterable(iterable));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: g */
    public static <T> Flowable<T> m4507g(Publisher<? extends T> publisher) {
        if (publisher instanceof Flowable) {
            return RxJavaPlugins.m3362l((Flowable) publisher);
        }
        ObjectHelper.m4363e(publisher, "source is null");
        return RxJavaPlugins.m3362l(new FlowableFromPublisher(publisher));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: h */
    public static <T> Flowable<T> m4506h(T t) {
        ObjectHelper.m4363e(t, "item is null");
        return RxJavaPlugins.m3362l(new FlowableJust(t));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: A */
    public final Flowable<T> m4513A(Scheduler scheduler) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3362l(new FlowableUnsubscribeOn(this, scheduler));
    }

    @Override // org.reactivestreams.Publisher
    @SchedulerSupport
    @BackpressureSupport
    /* renamed from: c */
    public final void mo5c(Subscriber<? super T> subscriber) {
        if (subscriber instanceof FlowableSubscriber) {
            m4493v((FlowableSubscriber) subscriber);
            return;
        }
        ObjectHelper.m4363e(subscriber, "s is null");
        m4493v(new StrictSubscriber(subscriber));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: e */
    public final Flowable<T> m4509e(T t) {
        ObjectHelper.m4363e(t, "defaultItem is null");
        return m4490z(m4506h(t));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: i */
    public final <R> Flowable<R> m4505i(Function<? super T, ? extends R> function) {
        ObjectHelper.m4363e(function, "mapper is null");
        return RxJavaPlugins.m3362l(new FlowableMap(this, function));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: j */
    public final Flowable<Notification<T>> m4504j() {
        return RxJavaPlugins.m3362l(new FlowableMaterialize(this));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: k */
    public final Flowable<T> m4503k(Scheduler scheduler) {
        return m4502l(scheduler, false, m4511a());
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: l */
    public final Flowable<T> m4502l(Scheduler scheduler, boolean z, int i) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        ObjectHelper.m4362f(i, "bufferSize");
        return RxJavaPlugins.m3362l(new FlowableObserveOn(this, scheduler, z, i));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: m */
    public final Flowable<T> m4501m() {
        return m4500n(m4511a(), false, true);
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: n */
    public final Flowable<T> m4500n(int i, boolean z, boolean z2) {
        ObjectHelper.m4362f(i, "capacity");
        return RxJavaPlugins.m3362l(new FlowableOnBackpressureBuffer(this, i, z2, z, Functions.f15131c));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: o */
    public final Flowable<T> m4499o() {
        return RxJavaPlugins.m3362l(new FlowableOnBackpressureDrop(this));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: q */
    public final Flowable<T> m4498q() {
        return RxJavaPlugins.m3362l(new FlowableOnBackpressureLatest(this));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: r */
    public final ConnectableFlowable<T> m4497r() {
        return FlowableReplay.m4110H(this);
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: s */
    public final ConnectableFlowable<T> m4496s(int i) {
        ObjectHelper.m4362f(i, "bufferSize");
        return FlowableReplay.m4114D(this, i);
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: t */
    public final ConnectableFlowable<T> m4495t(int i, long j, TimeUnit timeUnit, Scheduler scheduler) {
        ObjectHelper.m4362f(i, "bufferSize");
        ObjectHelper.m4363e(timeUnit, "unit is null");
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        ObjectHelper.m4362f(i, "bufferSize");
        return FlowableReplay.m4112F(this, j, timeUnit, scheduler, i);
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    /* renamed from: u */
    public final ConnectableFlowable<T> m4494u(long j, TimeUnit timeUnit, Scheduler scheduler) {
        ObjectHelper.m4363e(timeUnit, "unit is null");
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return FlowableReplay.m4113E(this, j, timeUnit, scheduler);
    }

    @SchedulerSupport
    @BackpressureSupport
    /* renamed from: v */
    public final void m4493v(FlowableSubscriber<? super T> flowableSubscriber) {
        ObjectHelper.m4363e(flowableSubscriber, "s is null");
        try {
            Subscriber<? super T> B = RxJavaPlugins.m3375B(this, flowableSubscriber);
            ObjectHelper.m4363e(B, "The RxJavaPlugins.onSubscribe hook returned a null FlowableSubscriber. Please check the handler provided to RxJavaPlugins.setOnFlowableSubscribe for invalid null returns. Further reading: https://github.com/ReactiveX/RxJava/wiki/Plugins");
            mo3305w(B);
        } catch (NullPointerException e) {
            throw e;
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            RxJavaPlugins.m3354t(th);
            NullPointerException nullPointerException = new NullPointerException("Actually not, but can't throw other exceptions due to RS");
            nullPointerException.initCause(th);
            throw nullPointerException;
        }
    }

    /* renamed from: w */
    protected abstract void mo3305w(Subscriber<? super T> subscriber);

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: x */
    public final Flowable<T> m4492x(@NonNull Scheduler scheduler) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return m4491y(scheduler, !(this instanceof FlowableCreate));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: y */
    public final Flowable<T> m4491y(@NonNull Scheduler scheduler, boolean z) {
        ObjectHelper.m4363e(scheduler, "scheduler is null");
        return RxJavaPlugins.m3362l(new FlowableSubscribeOn(this, scheduler, z));
    }

    @SchedulerSupport
    @BackpressureSupport
    @CheckReturnValue
    @NonNull
    /* renamed from: z */
    public final Flowable<T> m4490z(Publisher<? extends T> publisher) {
        ObjectHelper.m4363e(publisher, "other is null");
        return RxJavaPlugins.m3362l(new FlowableSwitchIfEmpty(this, publisher));
    }
}
