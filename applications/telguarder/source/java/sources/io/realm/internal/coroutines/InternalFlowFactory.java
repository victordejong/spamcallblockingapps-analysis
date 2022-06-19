package io.realm.internal.coroutines;

import io.realm.DynamicRealm;
import io.realm.DynamicRealmObject;
import io.realm.Realm;
import io.realm.RealmList;
import io.realm.RealmModel;
import io.realm.RealmResults;
import io.realm.coroutines.FlowFactory;
import io.realm.p023rx.CollectionChange;
import io.realm.p023rx.ObjectChange;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowKt;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u0001B\u000f\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J$\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\b0\u00070\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J6\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\r0\f0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rH\u0016J6\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00100\f0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010H\u0016J3\u0010\u0005\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00070\u0006\"\b\b��\u0010\u000e*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u000eH\u0016¢\u0006\u0002\u0010\u0016J6\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\r0\f0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rH\u0016J6\u0010\u0005\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00100\f0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010H\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\n0\u00062\u0006\u0010\t\u001a\u00020\nH\u0016J\u001e\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\b0\u00062\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\bH\u0016J0\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\r0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rH\u0016J0\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00100\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\t\u001a\u00020\n2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010H\u0016J\u0016\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00140\u00062\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J-\u0010\u0017\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0006\"\b\b��\u0010\u000e*\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u0002H\u000eH\u0016¢\u0006\u0002\u0010\u0016J0\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\r0\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u0002H\u000e0\rH\u0016J0\u0010\u0017\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u000e0\u00100\u0006\"\u0004\b��\u0010\u000e2\u0006\u0010\u0013\u001a\u00020\u00142\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u0002H\u000e0\u0010H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0019"}, m400d2 = {"Lio/realm/internal/coroutines/InternalFlowFactory;", "Lio/realm/coroutines/FlowFactory;", "returnFrozenObjects", "", "(Z)V", "changesetFrom", "Lkotlinx/coroutines/flow/Flow;", "Lio/realm/rx/ObjectChange;", "Lio/realm/DynamicRealmObject;", "dynamicRealm", "Lio/realm/DynamicRealm;", "dynamicRealmObject", "Lio/realm/rx/CollectionChange;", "Lio/realm/RealmList;", "T", "list", "Lio/realm/RealmResults;", "results", "Lio/realm/RealmModel;", "realm", "Lio/realm/Realm;", "realmObject", "(Lio/realm/Realm;Lio/realm/RealmModel;)Lkotlinx/coroutines/flow/Flow;", "from", "realmList", "realm-android-library_baseRelease"}, m399k = 1, m398mv = {1, 1, 16})
/* loaded from: classes2-dex2jar.jar:io/realm/internal/coroutines/InternalFlowFactory.class */
public final class InternalFlowFactory implements FlowFactory {
    private final boolean returnFrozenObjects;

    public InternalFlowFactory() {
        this(false, 1, null);
    }

    public InternalFlowFactory(boolean z) {
        this.returnFrozenObjects = z;
    }

    public /* synthetic */ InternalFlowFactory(boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z);
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<ObjectChange<DynamicRealmObject>> changesetFrom(DynamicRealm dynamicRealm, DynamicRealmObject dynamicRealmObject) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(dynamicRealmObject, "dynamicRealmObject");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(new ObjectChange(dynamicRealmObject, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$6(this, dynamicRealmObject, dynamicRealm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(DynamicRealm dynamicRealm, RealmList<T> list) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(list, "list");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(new CollectionChange(list, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$4(this, list, dynamicRealm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(DynamicRealm dynamicRealm, RealmResults<T> results) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(results, "results");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(new CollectionChange(results, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$2(this, results, dynamicRealm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmList<T>>> changesetFrom(Realm realm, RealmList<T> list) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(list, "list");
        return realm.isFrozen() ? FlowKt.flowOf(new CollectionChange(list, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$3(this, list, realm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T extends RealmModel> Flow<ObjectChange<T>> changesetFrom(Realm realm, T realmObject) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(realmObject, "realmObject");
        return realm.isFrozen() ? FlowKt.flowOf(new ObjectChange(realmObject, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$5(this, realm, realm.getConfiguration(), realmObject, null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<CollectionChange<RealmResults<T>>> changesetFrom(Realm realm, RealmResults<T> results) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(results, "results");
        return realm.isFrozen() ? FlowKt.flowOf(new CollectionChange(results, null)) : FlowKt.callbackFlow(new InternalFlowFactory$changesetFrom$1(this, results, realm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<DynamicRealm> from(DynamicRealm dynamicRealm) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(dynamicRealm) : FlowKt.callbackFlow(new InternalFlowFactory$from$2(this, dynamicRealm, null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<DynamicRealmObject> from(DynamicRealm dynamicRealm, DynamicRealmObject dynamicRealmObject) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(dynamicRealmObject, "dynamicRealmObject");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(dynamicRealmObject) : FlowKt.callbackFlow(new InternalFlowFactory$from$8(this, dynamicRealm, dynamicRealm.getConfiguration(), dynamicRealmObject, null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmList<T>> from(DynamicRealm dynamicRealm, RealmList<T> realmList) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(realmList, "realmList");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(realmList) : FlowKt.callbackFlow(new InternalFlowFactory$from$6(this, realmList, dynamicRealm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmResults<T>> from(DynamicRealm dynamicRealm, RealmResults<T> results) {
        Intrinsics.checkParameterIsNotNull(dynamicRealm, "dynamicRealm");
        Intrinsics.checkParameterIsNotNull(results, "results");
        return dynamicRealm.isFrozen() ? FlowKt.flowOf(results) : FlowKt.callbackFlow(new InternalFlowFactory$from$4(this, results, dynamicRealm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public Flow<Realm> from(Realm realm) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        return realm.isFrozen() ? FlowKt.flowOf(realm) : FlowKt.callbackFlow(new InternalFlowFactory$from$1(this, realm, null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmList<T>> from(Realm realm, RealmList<T> realmList) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(realmList, "realmList");
        return realm.isFrozen() ? FlowKt.flowOf(realmList) : FlowKt.callbackFlow(new InternalFlowFactory$from$5(this, realmList, realm.getConfiguration(), null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T extends RealmModel> Flow<T> from(Realm realm, T realmObject) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(realmObject, "realmObject");
        return realm.isFrozen() ? FlowKt.flowOf(realmObject) : FlowKt.callbackFlow(new InternalFlowFactory$from$7(this, realm, realm.getConfiguration(), realmObject, null));
    }

    @Override // io.realm.coroutines.FlowFactory
    public <T> Flow<RealmResults<T>> from(Realm realm, RealmResults<T> results) {
        Intrinsics.checkParameterIsNotNull(realm, "realm");
        Intrinsics.checkParameterIsNotNull(results, "results");
        return realm.isFrozen() ? FlowKt.flowOf(results) : FlowKt.callbackFlow(new InternalFlowFactory$from$3(this, results, realm.getConfiguration(), null));
    }
}
