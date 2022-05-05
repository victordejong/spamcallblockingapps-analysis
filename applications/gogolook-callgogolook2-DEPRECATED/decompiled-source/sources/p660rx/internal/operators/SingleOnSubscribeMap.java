package p660rx.internal.operators;

import p660rx.Single;
import p660rx.SingleSubscriber;
import p660rx.exceptions.Exceptions;
import p660rx.exceptions.OnErrorThrowable;
import p660rx.functions.Func1;
import p660rx.plugins.RxJavaHooks;
/* renamed from: rx.internal.operators.SingleOnSubscribeMap */
/* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleOnSubscribeMap.class */
public final class SingleOnSubscribeMap<T, R> implements Single.OnSubscribe<R> {
    public final Single<T> source;
    public final Func1<? super T, ? extends R> transformer;

    /* renamed from: rx.internal.operators.SingleOnSubscribeMap$MapSubscriber */
    /* loaded from: classes3-dex2jar.jar:rx/internal/operators/SingleOnSubscribeMap$MapSubscriber.class */
    public static final class MapSubscriber<T, R> extends SingleSubscriber<T> {
        public final SingleSubscriber<? super R> actual;
        public boolean done;
        public final Func1<? super T, ? extends R> mapper;

        public MapSubscriber(SingleSubscriber<? super R> singleSubscriber, Func1<? super T, ? extends R> func1) {
            this.actual = singleSubscriber;
            this.mapper = func1;
        }

        @Override // p660rx.SingleSubscriber
        public void onError(Throwable th) {
            if (this.done) {
                RxJavaHooks.onError(th);
                return;
            }
            this.done = true;
            this.actual.onError(th);
        }

        @Override // p660rx.SingleSubscriber
        public void onSuccess(T t) {
            try {
                this.actual.onSuccess(this.mapper.call(t));
            } catch (Throwable th) {
                Exceptions.throwIfFatal(th);
                unsubscribe();
                onError(OnErrorThrowable.addValueAsLastCause(th, t));
            }
        }
    }

    public SingleOnSubscribeMap(Single<T> single, Func1<? super T, ? extends R> func1) {
        this.source = single;
        this.transformer = func1;
    }

    @Override // p660rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object obj) {
        call((SingleSubscriber) ((SingleSubscriber) obj));
    }

    public void call(SingleSubscriber<? super R> singleSubscriber) {
        MapSubscriber mapSubscriber = new MapSubscriber(singleSubscriber, this.transformer);
        singleSubscriber.add(mapSubscriber);
        this.source.subscribe(mapSubscriber);
    }
}
