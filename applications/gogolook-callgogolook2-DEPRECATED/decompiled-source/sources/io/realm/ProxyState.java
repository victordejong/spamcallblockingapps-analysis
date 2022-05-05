package io.realm;

import io.realm.RealmModel;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsObject;
import io.realm.internal.OsSharedRealm;
import io.realm.internal.PendingRow;
import io.realm.internal.RealmObjectProxy;
import io.realm.internal.Row;
import io.realm.internal.UncheckedRow;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes3-dex2jar.jar:io/realm/ProxyState.class */
public final class ProxyState<E extends RealmModel> implements PendingRow.FrontEnd {
    public static QueryCallback queryCallback = new QueryCallback();
    public boolean acceptDefaultValue;
    public List<String> excludeFields;
    public E model;
    public OsObject osObject;
    public BaseRealm realm;
    public Row row;
    public boolean underConstruction = true;
    public ObserverPairList<OsObject.ObjectObserverPair> observerPairs = new ObserverPairList<>();

    /* loaded from: classes3-dex2jar.jar:io/realm/ProxyState$QueryCallback.class */
    public static class QueryCallback implements ObserverPairList.Callback<OsObject.ObjectObserverPair> {
        public QueryCallback() {
        }

        public void onCalled(OsObject.ObjectObserverPair objectObserverPair, Object obj) {
            objectObserverPair.onChange((RealmModel) obj, null);
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/ProxyState$RealmChangeListenerWrapper.class */
    public static class RealmChangeListenerWrapper<T extends RealmModel> implements RealmObjectChangeListener<T> {
        public final RealmChangeListener<T> listener;

        public RealmChangeListenerWrapper(RealmChangeListener<T> realmChangeListener) {
            if (realmChangeListener != null) {
                this.listener = realmChangeListener;
                return;
            }
            throw new IllegalArgumentException("Listener should not be null");
        }

        public boolean equals(Object obj) {
            return (obj instanceof RealmChangeListenerWrapper) && this.listener == ((RealmChangeListenerWrapper) obj).listener;
        }

        public int hashCode() {
            return this.listener.hashCode();
        }

        @Override // io.realm.RealmObjectChangeListener
        public void onChange(T t, @Nullable ObjectChangeSet objectChangeSet) {
            this.listener.onChange(t);
        }
    }

    public ProxyState() {
    }

    public ProxyState(E e) {
        this.model = e;
    }

    private void notifyQueryFinished() {
        this.observerPairs.foreach(queryCallback);
    }

    private void registerToObjectNotifier() {
        OsSharedRealm osSharedRealm = this.realm.sharedRealm;
        if (osSharedRealm != null && !osSharedRealm.isClosed() && this.row.isAttached() && this.osObject == null) {
            this.osObject = new OsObject(this.realm.sharedRealm, (UncheckedRow) this.row);
            this.osObject.setObserverPairs(this.observerPairs);
            this.observerPairs = null;
        }
    }

    public void addChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        Row row = this.row;
        if (row instanceof PendingRow) {
            this.observerPairs.add(new OsObject.ObjectObserverPair(this.model, realmObjectChangeListener));
        } else if (row instanceof UncheckedRow) {
            registerToObjectNotifier();
            OsObject osObject = this.osObject;
            if (osObject != null) {
                osObject.addListener(this.model, realmObjectChangeListener);
            }
        }
    }

    public void checkValidObject(RealmModel realmModel) {
        if (!RealmObject.isValid(realmModel) || !RealmObject.isManaged(realmModel)) {
            throw new IllegalArgumentException("'value' is not a valid managed object.");
        } else if (((RealmObjectProxy) realmModel).realmGet$proxyState().getRealm$realm() != getRealm$realm()) {
            throw new IllegalArgumentException("'value' belongs to a different Realm.");
        }
    }

    public boolean getAcceptDefaultValue$realm() {
        return this.acceptDefaultValue;
    }

    public List<String> getExcludeFields$realm() {
        return this.excludeFields;
    }

    public BaseRealm getRealm$realm() {
        return this.realm;
    }

    public Row getRow$realm() {
        return this.row;
    }

    public boolean isLoaded() {
        return !(this.row instanceof PendingRow);
    }

    public boolean isUnderConstruction() {
        return this.underConstruction;
    }

    public void load() {
        Row row = this.row;
        if (row instanceof PendingRow) {
            ((PendingRow) row).executeQuery();
        }
    }

    @Override // io.realm.internal.PendingRow.FrontEnd
    public void onQueryFinished(Row row) {
        this.row = row;
        notifyQueryFinished();
        if (row.isAttached()) {
            registerToObjectNotifier();
        }
    }

    public void removeAllChangeListeners() {
        OsObject osObject = this.osObject;
        if (osObject != null) {
            osObject.removeListener(this.model);
        } else {
            this.observerPairs.clear();
        }
    }

    public void removeChangeListener(RealmObjectChangeListener<E> realmObjectChangeListener) {
        OsObject osObject = this.osObject;
        if (osObject != null) {
            osObject.removeListener(this.model, realmObjectChangeListener);
        } else {
            this.observerPairs.remove(this.model, realmObjectChangeListener);
        }
    }

    public void setAcceptDefaultValue$realm(boolean z) {
        this.acceptDefaultValue = z;
    }

    public void setConstructionFinished() {
        this.underConstruction = false;
        this.excludeFields = null;
    }

    public void setExcludeFields$realm(List<String> list) {
        this.excludeFields = list;
    }

    public void setRealm$realm(BaseRealm baseRealm) {
        this.realm = baseRealm;
    }

    public void setRow$realm(Row row) {
        this.row = row;
    }
}
