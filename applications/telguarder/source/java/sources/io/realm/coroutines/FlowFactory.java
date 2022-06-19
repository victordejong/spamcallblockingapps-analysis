package io.realm.coroutines;

import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmResults;
import io.realm.p023rx.CollectionChange;
import io.realm.p023rx.ObjectChange;
import javax.annotation.Nonnull;
import kotlinx.coroutines.flow.Flow;
/* loaded from: classes2-dex2jar.jar:io/realm/coroutines/FlowFactory.class */
public interface FlowFactory {
    Flow<ObjectChange<DynamicRealmObject>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull DynamicRealmObject dynamicRealmObject);

    <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmList<T> realmList);

    <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmResults<T> realmResults);

    <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(@Nonnull Realm realm, @Nonnull RealmList<T> realmList);

    <T extends RealmModel> Flow<ObjectChange<T>> changesetFrom(@Nonnull Realm realm, @Nonnull T t);

    <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(@Nonnull Realm realm, @Nonnull RealmResults<T> realmResults);

    Flow<DynamicRealm> from(@Nonnull DynamicRealm dynamicRealm);

    Flow<DynamicRealmObject> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull DynamicRealmObject dynamicRealmObject);

    <T> Flow<RealmList<T>> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmList<T> realmList);

    <T> Flow<RealmResults<T>> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmResults<T> realmResults);

    Flow<Realm> from(@Nonnull Realm realm);

    <T> Flow<RealmList<T>> from(@Nonnull Realm realm, @Nonnull RealmList<T> realmList);

    <T extends RealmModel> Flow<T> from(@Nonnull Realm realm, @Nonnull T t);

    <T> Flow<RealmResults<T>> from(@Nonnull Realm realm, @Nonnull RealmResults<T> realmResults);
}
