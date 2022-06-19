package io.realm.coroutines;

import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmResults;
import io.realm.internal.coroutines.InternalFlowFactory;
import io.realm.p023rx.CollectionChange;
import io.realm.p023rx.ObjectChange;
import javax.annotation.Nonnull;
import kotlinx.coroutines.flow.Flow;
/* loaded from: classes2-dex2jar.jar:io/realm/coroutines/RealmFlowFactory.class */
public class RealmFlowFactory implements FlowFactory {
    private final InternalFlowFactory factory;

    public RealmFlowFactory(Boolean bool) {
        this.factory = new InternalFlowFactory(bool.booleanValue());
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<ObjectChange<DynamicRealmObject>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull DynamicRealmObject dynamicRealmObject) {
        return this.factory.changesetFrom(dynamicRealm, dynamicRealmObject);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmList<T> realmList) {
        return this.factory.changesetFrom(dynamicRealm, realmList);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmResults<T> realmResults) {
        return this.factory.changesetFrom(dynamicRealm, realmResults);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(@Nonnull Realm realm, @Nonnull RealmList<T> realmList) {
        return this.factory.changesetFrom(realm, realmList);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T extends RealmModel> Flow<ObjectChange<T>> changesetFrom(@Nonnull Realm realm, @Nonnull T t) {
        return this.factory.changesetFrom(realm, (Realm) t);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(@Nonnull Realm realm, @Nonnull RealmResults<T> realmResults) {
        return this.factory.changesetFrom(realm, realmResults);
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<DynamicRealm> from(@Nonnull DynamicRealm dynamicRealm) {
        return this.factory.from(dynamicRealm);
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<DynamicRealmObject> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull DynamicRealmObject dynamicRealmObject) {
        return this.factory.from(dynamicRealm, dynamicRealmObject);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmList<T>> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmList<T> realmList) {
        return this.factory.from(dynamicRealm, realmList);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmResults<T>> from(@Nonnull DynamicRealm dynamicRealm, @Nonnull RealmResults<T> realmResults) {
        return this.factory.from(dynamicRealm, realmResults);
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<Realm> from(@Nonnull Realm realm) {
        return this.factory.from(realm);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmList<T>> from(@Nonnull Realm realm, @Nonnull RealmList<T> realmList) {
        return this.factory.from(realm, realmList);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T extends RealmModel> Flow<T> from(@Nonnull Realm realm, @Nonnull T t) {
        return this.factory.from(realm, (Realm) t);
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmResults<T>> from(@Nonnull Realm realm, @Nonnull RealmResults<T> realmResults) {
        return this.factory.from(realm, realmResults);
    }
}
