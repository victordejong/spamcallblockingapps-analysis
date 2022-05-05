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
import io.realm.p008rx.ObjectChange;
import java.util.Collections;
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
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        } else if (realmObjectChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
            d.m3151h();
            d.f19809j.capabilities.mo2593b("Listeners cannot be used on current thread.");
            realmObjectProxy.realmGet$proxyState().m3087b(realmObjectChangeListener);
        } else {
            throw new IllegalArgumentException("Cannot add listener from this unmanaged RealmObject (created outside of Realm)");
        }
    }

    public static <E extends RealmModel> Observable<ObjectChange<E>> asChangesetObservable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm d = ((RealmObjectProxy) e).realmGet$proxyState().m3085d();
            if (d instanceof Realm) {
                return d.f19807h.m2984o().mo2497c((Realm) d, e);
            }
            if (d instanceof DynamicRealm) {
                return d.f19807h.m2984o().mo2499a((DynamicRealm) d, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(d.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> Flowable<E> asFlowable(E e) {
        if (e instanceof RealmObjectProxy) {
            BaseRealm d = ((RealmObjectProxy) e).realmGet$proxyState().m3085d();
            if (d instanceof Realm) {
                return d.f19807h.m2984o().mo2498b((Realm) d, e);
            }
            if (d instanceof DynamicRealm) {
                return d.f19807h.m2984o().mo2496d((DynamicRealm) d, (DynamicRealmObject) e);
            }
            throw new UnsupportedOperationException(d.getClass() + " does not support RxJava. See https://realm.io/docs/java/latest/#rxjava for more details.");
        }
        throw new IllegalArgumentException("Cannot create Observables from unmanaged RealmObjects");
    }

    public static <E extends RealmModel> void deleteFromRealm(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            if (realmObjectProxy.realmGet$proxyState().m3084e() == null) {
                throw new IllegalStateException("Object malformed: missing object in Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            } else if (realmObjectProxy.realmGet$proxyState().m3085d() != null) {
                realmObjectProxy.realmGet$proxyState().m3085d().m3151h();
                Row e2 = realmObjectProxy.realmGet$proxyState().m3084e();
                e2.getTable().m2665E(e2.getObjectKey());
                realmObjectProxy.realmGet$proxyState().m3072q(InvalidRow.INSTANCE);
            } else {
                throw new IllegalStateException("Object malformed: missing Realm. Make sure to instantiate RealmObjects with Realm.createObject()");
            }
        } else {
            throw new IllegalArgumentException("Object not managed by Realm, so it cannot be removed.");
        }
    }

    public static <E extends RealmModel> E freeze(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
            BaseRealm t = d.m3160W() ? d : d.mo3047t();
            Row freeze = realmObjectProxy.realmGet$proxyState().m3084e().freeze(t.f19809j);
            if (t instanceof DynamicRealm) {
                return new DynamicRealmObject(t, freeze);
            }
            if (t instanceof Realm) {
                Class<? super Object> superclass = e.getClass().getSuperclass();
                return (E) t.m3164J().m2983p().mo2557k(superclass, t, freeze, d.mo3059L().m2854g(superclass), false, Collections.emptyList());
            }
            throw new UnsupportedOperationException("Unknown Realm type: " + t.getClass().getName());
        }
        throw new IllegalArgumentException("It is only possible to freeze valid managed Realm objects.");
    }

    public static Realm getRealm(RealmModel realmModel) {
        if (realmModel == null) {
            throw new IllegalArgumentException(MSG_NULL_OBJECT);
        } else if (realmModel instanceof DynamicRealmObject) {
            throw new IllegalStateException(MSG_DYNAMIC_OBJECT);
        } else if (!(realmModel instanceof RealmObjectProxy)) {
            return null;
        } else {
            BaseRealm d = ((RealmObjectProxy) realmModel).realmGet$proxyState().m3085d();
            d.m3151h();
            if (isValid(realmModel)) {
                return (Realm) d;
            }
            throw new IllegalStateException(MSG_DELETED_OBJECT);
        }
    }

    public static <E extends RealmModel> boolean isFrozen(E e) {
        if (e instanceof RealmObjectProxy) {
            return ((RealmObjectProxy) e).realmGet$proxyState().m3085d().m3160W();
        }
        return false;
    }

    public static <E extends RealmModel> boolean isLoaded(E e) {
        if (!(e instanceof RealmObjectProxy)) {
            return true;
        }
        RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
        realmObjectProxy.realmGet$proxyState().m3085d().m3151h();
        return realmObjectProxy.realmGet$proxyState().m3083f();
    }

    public static <E extends RealmModel> boolean isManaged(E e) {
        return e instanceof RealmObjectProxy;
    }

    public static <E extends RealmModel> boolean isValid(E e) {
        boolean z = true;
        boolean z2 = true;
        if (e instanceof RealmObjectProxy) {
            Row e2 = ((RealmObjectProxy) e).realmGet$proxyState().m3084e();
            if (e2 == null || !e2.isValid()) {
                z2 = false;
            }
            return z2;
        }
        if (e == null) {
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
        ((RealmObjectProxy) e).realmGet$proxyState().m3081h();
        return true;
    }

    public static <E extends RealmModel> void removeAllChangeListeners(E e) {
        if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
            if (d.isClosed()) {
                RealmLog.m2529g("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", d.f19807h.m2987l());
            }
            realmObjectProxy.realmGet$proxyState().m3078k();
            return;
        }
        throw new IllegalArgumentException("Cannot remove listeners from this unmanaged RealmObject (created outside of Realm)");
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmChangeListener<E> realmChangeListener) {
        removeChangeListener(e, new ProxyState.RealmChangeListenerWrapper(realmChangeListener));
    }

    public static <E extends RealmModel> void removeChangeListener(E e, RealmObjectChangeListener realmObjectChangeListener) {
        if (e == null) {
            throw new IllegalArgumentException("Object should not be null");
        } else if (realmObjectChangeListener == null) {
            throw new IllegalArgumentException("Listener should not be null");
        } else if (e instanceof RealmObjectProxy) {
            RealmObjectProxy realmObjectProxy = (RealmObjectProxy) e;
            BaseRealm d = realmObjectProxy.realmGet$proxyState().m3085d();
            if (d.isClosed()) {
                RealmLog.m2529g("Calling removeChangeListener on a closed Realm %s, make sure to close all listeners before closing the Realm.", d.f19807h.m2987l());
            }
            realmObjectProxy.realmGet$proxyState().m3077l(realmObjectChangeListener);
        } else {
            throw new IllegalArgumentException("Cannot remove listener from this unmanaged RealmObject (created outside of Realm)");
        }
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

    public final boolean isFrozen() {
        return isFrozen(this);
    }

    public final boolean isLoaded() {
        return isLoaded(this);
    }

    public boolean isManaged() {
        return isManaged(this);
    }

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
