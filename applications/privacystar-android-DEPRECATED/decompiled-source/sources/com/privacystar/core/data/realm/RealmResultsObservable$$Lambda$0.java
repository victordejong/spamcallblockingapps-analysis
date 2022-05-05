package com.privacystar.core.data.realm;

import io.reactivex.ObservableEmitter;
import io.realm.RealmChangeListener;
import io.realm.RealmResults;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/realm/RealmResultsObservable$$Lambda$0.class */
final /* synthetic */ class RealmResultsObservable$$Lambda$0 implements RealmChangeListener {
    private final ObservableEmitter arg$1;

    private RealmResultsObservable$$Lambda$0(ObservableEmitter observableEmitter) {
        this.arg$1 = observableEmitter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RealmChangeListener get$Lambda(ObservableEmitter observableEmitter) {
        return new RealmResultsObservable$$Lambda$0(observableEmitter);
    }

    @Override // io.realm.RealmChangeListener
    public void onChange(Object obj) {
        this.arg$1.onNext((RealmResults) obj);
    }
}
