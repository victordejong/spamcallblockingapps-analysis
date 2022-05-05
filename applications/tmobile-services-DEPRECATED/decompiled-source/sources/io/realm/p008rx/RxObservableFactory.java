package io.realm.p008rx;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmModel;
/* renamed from: io.realm.rx.RxObservableFactory */
/* loaded from: classes2-dex2jar.jar:io/realm/rx/RxObservableFactory.class */
public interface RxObservableFactory {
    /* renamed from: a */
    Observable<ObjectChange<DynamicRealmObject>> mo2499a(DynamicRealm dynamicRealm, DynamicRealmObject dynamicRealmObject);

    /* renamed from: b */
    <E extends RealmModel> Flowable<E> mo2498b(Realm realm, E e);

    /* renamed from: c */
    <E extends RealmModel> Observable<ObjectChange<E>> mo2497c(Realm realm, E e);

    /* renamed from: d */
    Flowable<DynamicRealmObject> mo2496d(DynamicRealm dynamicRealm, DynamicRealmObject dynamicRealmObject);
}
