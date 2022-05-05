package com.privacystar.core.data.realm;

import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.functions.Cancellable;
import io.realm.RealmChangeListener;
import io.realm.RealmObject;
import io.realm.RealmResults;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/realm/RealmResultsObservable.class */
public class RealmResultsObservable<T extends RealmObject> implements ObservableOnSubscribe<RealmResults<T>> {
    private final RealmResults<T> realmResults;

    private RealmResultsObservable(RealmResults<T> realmResults) {
        this.realmResults = realmResults;
    }

    public static <T extends RealmObject> Observable<RealmResults<T>> from(RealmResults<T> realmResults) {
        return Observable.create(new RealmResultsObservable(realmResults));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void lambda$subscribe$0$RealmResultsObservable(RealmChangeListener realmChangeListener) throws Exception {
        this.realmResults.removeChangeListener(realmChangeListener);
    }

    @Override // io.reactivex.ObservableOnSubscribe
    public void subscribe(ObservableEmitter<RealmResults<T>> observableEmitter) throws Exception {
        observableEmitter.onNext(this.realmResults);
        observableEmitter.getClass();
        final RealmChangeListener<RealmResults<T>> realmChangeListener = RealmResultsObservable$$Lambda$0.get$Lambda(observableEmitter);
        this.realmResults.addChangeListener(realmChangeListener);
        observableEmitter.setCancellable(new Cancellable(this, realmChangeListener) { // from class: com.privacystar.core.data.realm.RealmResultsObservable$$Lambda$1
            private final RealmResultsObservable arg$1;
            private final RealmChangeListener arg$2;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.arg$1 = this;
                this.arg$2 = realmChangeListener;
            }

            @Override // io.reactivex.functions.Cancellable
            public void cancel() {
                this.arg$1.lambda$subscribe$0$RealmResultsObservable(this.arg$2);
            }
        });
    }
}
