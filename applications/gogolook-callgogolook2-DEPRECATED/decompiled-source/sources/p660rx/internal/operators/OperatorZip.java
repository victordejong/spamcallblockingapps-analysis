package p660rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p660rx.Observable;
import p660rx.Observer;
import p660rx.Producer;
import p660rx.Subscriber;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.MissingBackpressureException;
import p660rx.functions.Func2;
import p660rx.functions.FuncN;
import p660rx.functions.Functions;
import p660rx.internal.util.RxRingBuffer;
import p660rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.OperatorZip */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorZip.class */
public final class OperatorZip<R> implements Observable.Operator<R, Observable<?>[]> {
    public final FuncN<? extends R> zipFunction;

    /* renamed from: rx.internal.operators.OperatorZip$Zip */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorZip$Zip.class */
    public static final class Zip<R> extends AtomicLong {
        public static final int THRESHOLD = (int) (RxRingBuffer.SIZE * 0.7d);
        public final Observer<? super R> child;
        public final CompositeSubscription childSubscription = new CompositeSubscription();
        public int emitted;
        public AtomicLong requested;
        public volatile Object[] subscribers;
        public final FuncN<? extends R> zipFunction;

        /* renamed from: rx.internal.operators.OperatorZip$Zip$InnerSubscriber */
        /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorZip$Zip$InnerSubscriber.class */
        public final class InnerSubscriber extends Subscriber {
            public final RxRingBuffer items = RxRingBuffer.getSpmcInstance();

            public InnerSubscriber() {
            }

            @Override // p660rx.Observer
            public void onCompleted() {
                this.items.onCompleted();
                Zip.this.tick();
            }

            @Override // p660rx.Observer
            public void onError(Throwable th) {
                Zip.this.child.onError(th);
            }

            @Override // p660rx.Observer
            public void onNext(Object obj) {
                try {
                    this.items.onNext(obj);
                } catch (MissingBackpressureException e) {
                    onError(e);
                }
                Zip.this.tick();
            }

            @Override // p660rx.Subscriber
            public void onStart() {
                request(RxRingBuffer.SIZE);
            }

            public void requestMore(long j) {
                request(j);
            }
        }

        public Zip(Subscriber<? super R> subscriber, FuncN<? extends R> funcN) {
            this.child = subscriber;
            this.zipFunction = funcN;
            subscriber.add(this.childSubscription);
        }

        public void start(Observable[] observableArr, AtomicLong atomicLong) {
            Object[] objArr = new Object[observableArr.length];
            for (int i = 0; i < observableArr.length; i++) {
                InnerSubscriber innerSubscriber = new InnerSubscriber();
                objArr[i] = innerSubscriber;
                this.childSubscription.add(innerSubscriber);
            }
            this.requested = atomicLong;
            this.subscribers = objArr;
            for (int i2 = 0; i2 < observableArr.length; i2++) {
                observableArr[i2].unsafeSubscribe((InnerSubscriber) objArr[i2]);
            }
        }

        public void tick() {
            Object[] objArr = this.subscribers;
            if (objArr != null && getAndIncrement() == 0) {
                int length = objArr.length;
                Observer<? super R> observer = this.child;
                AtomicLong atomicLong = this.requested;
                while (true) {
                    Object[] objArr2 = new Object[length];
                    boolean z = true;
                    for (int i = 0; i < length; i++) {
                        RxRingBuffer rxRingBuffer = ((InnerSubscriber) objArr[i]).items;
                        Object peek = rxRingBuffer.peek();
                        if (peek == null) {
                            z = false;
                        } else if (rxRingBuffer.isCompleted(peek)) {
                            observer.onCompleted();
                            this.childSubscription.unsubscribe();
                            return;
                        } else {
                            objArr2[i] = rxRingBuffer.getValue(peek);
                        }
                    }
                    if (z && atomicLong.get() > 0) {
                        try {
                            observer.onNext((Object) this.zipFunction.call(objArr2));
                            atomicLong.decrementAndGet();
                            this.emitted++;
                            for (Object obj : objArr) {
                                RxRingBuffer rxRingBuffer2 = ((InnerSubscriber) obj).items;
                                rxRingBuffer2.poll();
                                if (rxRingBuffer2.isCompleted(rxRingBuffer2.peek())) {
                                    observer.onCompleted();
                                    this.childSubscription.unsubscribe();
                                    return;
                                }
                            }
                            if (this.emitted > THRESHOLD) {
                                for (Object obj2 : objArr) {
                                    ((InnerSubscriber) obj2).requestMore(this.emitted);
                                }
                                this.emitted = 0;
                            }
                        } catch (Throwable th) {
                            Exceptions.throwOrReport(th, observer, objArr2);
                            return;
                        }
                    } else if (decrementAndGet() <= 0) {
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: rx.internal.operators.OperatorZip$ZipProducer */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorZip$ZipProducer.class */
    public static final class ZipProducer<R> extends AtomicLong implements Producer {
        public final Zip<R> zipper;

        public ZipProducer(Zip<R> zip) {
            this.zipper = zip;
        }

        @Override // p660rx.Producer
        public void request(long j) {
            BackpressureUtils.getAndAddRequest(this, j);
            this.zipper.tick();
        }
    }

    /* renamed from: rx.internal.operators.OperatorZip$ZipSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/OperatorZip$ZipSubscriber.class */
    public final class ZipSubscriber extends Subscriber<Observable[]> {
        public final Subscriber<? super R> child;
        public final ZipProducer<R> producer;
        public boolean started;
        public final Zip<R> zipper;

        public ZipSubscriber(OperatorZip operatorZip, Subscriber<? super R> subscriber, Zip<R> zip, ZipProducer<R> zipProducer) {
            this.child = subscriber;
            this.zipper = zip;
            this.producer = zipProducer;
        }

        @Override // p660rx.Observer
        public void onCompleted() {
            if (!this.started) {
                this.child.onCompleted();
            }
        }

        @Override // p660rx.Observer
        public void onError(Throwable th) {
            this.child.onError(th);
        }

        public void onNext(Observable[] observableArr) {
            if (observableArr == null || observableArr.length == 0) {
                this.child.onCompleted();
                return;
            }
            this.started = true;
            this.zipper.start(observableArr, this.producer);
        }
    }

    public OperatorZip(Func2 func2) {
        this.zipFunction = Functions.fromFunc(func2);
    }

    public OperatorZip(FuncN<? extends R> funcN) {
        this.zipFunction = funcN;
    }

    @Override // p660rx.functions.Func1
    public /* bridge */ /* synthetic */ Object call(Object obj) {
        return call((Subscriber) ((Subscriber) obj));
    }

    public Subscriber<? super Observable[]> call(Subscriber<? super R> subscriber) {
        Zip zip = new Zip(subscriber, this.zipFunction);
        ZipProducer zipProducer = new ZipProducer(zip);
        ZipSubscriber zipSubscriber = new ZipSubscriber(this, subscriber, zip, zipProducer);
        subscriber.add(zipSubscriber);
        subscriber.setProducer(zipProducer);
        return zipSubscriber;
    }
}
