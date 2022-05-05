package retrofit2.adapter.rxjava2;

import io.reactivex.BackpressureStrategy;
import io.reactivex.Observable;
import io.reactivex.Scheduler;
import io.reactivex.plugins.RxJavaPlugins;
import java.lang.reflect.Type;
import javax.annotation.Nullable;
import retrofit2.Call;
import retrofit2.CallAdapter;
/* loaded from: classes2-dex2jar.jar:retrofit2/adapter/rxjava2/RxJava2CallAdapter.class */
final class RxJava2CallAdapter<R> implements CallAdapter<R, Object> {
    private final boolean isAsync;
    private final boolean isBody;
    private final boolean isCompletable;
    private final boolean isFlowable;
    private final boolean isMaybe;
    private final boolean isResult;
    private final boolean isSingle;
    private final Type responseType;
    @Nullable
    private final Scheduler scheduler;

    /* JADX INFO: Access modifiers changed from: package-private */
    public RxJava2CallAdapter(Type type, @Nullable Scheduler scheduler, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        this.responseType = type;
        this.scheduler = scheduler;
        this.isAsync = z;
        this.isResult = z2;
        this.isBody = z3;
        this.isFlowable = z4;
        this.isSingle = z5;
        this.isMaybe = z6;
        this.isCompletable = z7;
    }

    @Override // retrofit2.CallAdapter
    public Object adapt(Call<R> call) {
        Observable observable;
        Observable callEnqueueObservable = this.isAsync ? new CallEnqueueObservable(call) : new CallExecuteObservable(call);
        if (this.isResult) {
            observable = new ResultObservable(callEnqueueObservable);
        } else {
            observable = callEnqueueObservable;
            if (this.isBody) {
                observable = new BodyObservable(callEnqueueObservable);
            }
        }
        Scheduler scheduler = this.scheduler;
        Observable observable2 = observable;
        if (scheduler != null) {
            observable2 = observable.subscribeOn(scheduler);
        }
        return this.isFlowable ? observable2.toFlowable(BackpressureStrategy.LATEST) : this.isSingle ? observable2.singleOrError() : this.isMaybe ? observable2.singleElement() : this.isCompletable ? observable2.ignoreElements() : RxJavaPlugins.m3360n(observable2);
    }

    @Override // retrofit2.CallAdapter
    public Type responseType() {
        return this.responseType;
    }
}
