package io.realm;

import io.reactivex.Flowable;
import io.reactivex.Observable;
import io.realm.ProxyState;
import io.realm.annotations.RealmClass;
import io.realm.internal.InvalidRow;
import io.realm.internal.ManageableObject;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.log.RealmLog;
import io.realm.p023rx.ObjectChange;
import java.util.Collections;
import javax.annotation.Nullable;
@RealmClass
/* loaded from: classes2-dex2jar.jar:io/realm/RealmObject.class */
public abstract class RealmObject implements RealmModel, ManageableObject {
    static final String MSG_DELETED_OBJECT = "the object is already deleted.";
    static final String MSG_DYNAMIC_OBJECT = "the object is an instance of DynamicRealmObject. Use DynamicRealmObject.getDynamicRealm() instead.";
    static final String MSG_NULL_OBJECT = "'model' is null.";

    public static <E extends RealmModel> void addChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        addChangeListener(e, new ProxyState.RealmChangeListenerWrapper(realmChangeListener));
    }

    public static <E extends RealmModel> void addChangeListener(E e, RealmObjectChangeListener<E> realmObjectChangeListener) {
        if (e != null) {
            if (realmObjectChangeListener == null) {
                throw new IllegalArgumentException("Listener should not be null");
            }
            if (!(e instanceof RealmObjectProxy)) {
                throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
            }
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            realm$realm.sharedRealm.capabilities.checkCanDeliverNotification("Listeners cannot be used on current thread.");
            realmObjectProxy.realmGet$proxyState().addChangeListener(realmObjectChangeListener);
            return;
        }
        throw new IllegalArgumentException("Object should not be null");
    }

    public static <E extends RealmModel> Observable<ObjectChange<E>> asChangesetObservable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm realm$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRealm$realm();
            if (realm$realm instanceof Realm) {
                return realm$realm.configuration.getRxFactory().changesetsFrom((Realm) realm$realm, (Realm) e);
            }
            if (realm$realm instanceof DynamicRealm) {
                return realm$realm.configuration.getRxFactory().changesetsFrom((DynamicRealm) realm$realm, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(realm$realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> Flowable<E> asFlowable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm realm$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRealm$realm();
            if (realm$realm instanceof Realm) {
                return realm$realm.configuration.getRxFactory().from((Realm) realm$realm, (Realm) e);
            }
            if (realm$realm instanceof DynamicRealm) {
                return realm$realm.configuration.getRxFactory().from((DynamicRealm) realm$realm, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(realm$realm.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> void deleteFromRealm(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy.realmGet$proxyState().getRow$realm() == null) {
                throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
            if (realmObjectProxy.realmGet$proxyState().getRealm$realm() == null) {
                throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
            realmObjectProxy.realmGet$proxyState().getRealm$realm().checkIfValid();
            Row row$realm = realmObjectProxy.realmGet$proxyState().getRow$realm();
            row$realm.getTable().moveLastOver(row$realm.getObjectKey());
            realmObjectProxy.realmGet$proxyState().setRow$realm(InvalidRow.INSTANCE);
            return;
        }
        throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
    }

    public static <E extends RealmModel> E freeze(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            BaseRealm freeze = realm$realm.isFrozen() ? realm$realm : realm$realm.freeze();
            Row freeze2 = realmObjectProxy.realmGet$proxyState().getRow$realm().freeze(freeze.sharedRealm);
            if (freeze instanceof DynamicRealm) {
                return new DynamicRealmObject(freeze, freeze2);
            }
            if (freeze instanceof Realm) {
                Class<? super Object> superclass = e.getClass().getSuperclass();
                return (E) freeze.getConfiguration().getSchemaMediator().newInstance(superclass, freeze, freeze2, realm$realm.getSchema().getColumnInfo((Class<? extends RealmModel>) superclass), false, Collections.emptyList());
            }
            throw new UnsupportedOperationException("Unknown Realm type: " + freeze.getClass().getName());
        }
        throw new IllegalArgumentException("It is only possible to freeze valid managed Realm objects.");
    }

    public static Realm getRealm(RealmModel realmModel) {
        if (realmModel != null) {
            if (realmModel instanceof DynamicRealmObject) {
                throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
            }
            if (!(realmModel instanceof RealmObjectProxy)) {
                return null;
            }
            BaseRealm realm$realm = ((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm();
            realm$realm.checkIfValid();
            if (!isValid(realmModel)) {
                throw new IllegalStateException(MSG_DELETED_OBJECT);
            }
            return (Realm) realm$realm;
        }
        throw new IllegalArgumentException(MSG_NULL_OBJECT);
    }

    public static <E extends RealmModel> boolean isFrozen(E e) {
        if (e instanceof RealmObjectProxy) {
            return ((RealmObjectProxy) e).realmGet$proxyState().getRealm$realm().isFrozen();
        }
        return false;
    }

    public static <E extends RealmModel> boolean isLoaded(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            realmObjectProxy.realmGet$proxyState().getRealm$realm().checkIfValid();
            return realmObjectProxy.realmGet$proxyState().isLoaded();
        }
        return true;
    }

    public static <E extends RealmModel> boolean isManaged(E e) {
        return e instanceof RealmObjectProxy;
    }

    public static <E extends RealmModel> boolean isValid(@Nullable E e) {
        boolean z = true;
        if (!(e instanceof RealmObjectProxy)) {
            return e != null;
        }
        Row row$realm = ((RealmObjectProxy) e).realmGet$proxyState().getRow$realm();
        if (row$realm == null || !row$realm.isValid()) {
            z = false;
        }
        return z;
    }

    public static <E extends RealmModel> boolean load(E e) {
        if (isLoaded(e)) {
            return true;
        }
        if (!(e instanceof RealmObjectProxy)) {
            return false;
        }
        ((RealmObjectProxy) e).realmGet$proxyState().load();
        return true;
    }

    public static <E extends RealmModel> void removeAllChangeListeners(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            if (realm$realm.isClosed()) {
                RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", realm$realm.configuration.getPath());
            }
            realmObjectProxy.realmGet$proxyState().removeAllChangeListeners();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        removeChangeListener(e, new ProxyState.RealmChangeListenerWrapper(realmChangeListener));
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmObjectChangeListener realmObjectChangeListener) {
        if (e != null) {
            if (realmObjectChangeListener == null) {
                throw new IllegalArgumentException("Listener should not be null");
            }
            if (!(e instanceof RealmObjectProxy)) {
                throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
            }
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm realm$realm = realmObjectProxy.realmGet$proxyState().getRealm$realm();
            if (realm$realm.isClosed()) {
                RealmLog.warn("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", realm$realm.configuration.getPath());
            }
            realmObjectProxy.realmGet$proxyState().removeChangeListener(realmObjectChangeListener);
            return;
        }
        throw new IllegalArgumentException("Object should not be null");
    }

    public final <E extends RealmModel> void addChangeListener(RealmChangeListener<E> realmChangeListener) {
        addChangeListener(this, (RealmChangeListener<RealmObject>) realmChangeListener);
    }

    public final <E extends RealmModel> void addChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        addChangeListener(this, (RealmObjectChangeListener<RealmObject>) realmObjectChangeListener);
    }

    public final <E extends RealmObject> Observable<ObjectChange<E>> asChangesetObservable() {
        return asChangesetObservable(this);
    }

    public final <E extends RealmObject> Flowable<E> asFlowable() {
        return asFlowable(this);
    }

    public final void deleteFromRealm() {
        deleteFromRealm(this);
    }

    public final <E extends RealmModel> E freeze() {
        return (E) freeze(this);
    }

    public Realm getRealm() {
        return getRealm(this);
    }

    @Override // io.realm.internal.ManageableObject
    public final boolean isFrozen() {
        return isFrozen(this);
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    @Override // io.realm.internal.ManageableObject
    public boolean isManaged() {
        return isManaged(this);
    }

    @Override // io.realm.internal.ManageableObject
    public final boolean isValid() {
        return isValid(this);
    }

    public final boolean load() {
        return load(this);
    }

    public final void removeAllChangeListeners() {
        removeAllChangeListeners(this);
    }

    public final void removeChangeListener(RealmChangeListener realmChangeListener) {
        removeChangeListener(this, realmChangeListener);
    }

    public final void removeChangeListener(RealmObjectChangeListener realmObjectChangeListener) {
        removeChangeListener(this, realmObjectChangeListener);
    }
}
