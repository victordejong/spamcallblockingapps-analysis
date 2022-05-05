package io.realm.internal.sync;

import io.realm.RealmChangeListener;
import io.realm.internal.KeepMember;
import io.realm.internal.NativeObject;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsResults;
import javax.annotation.Nullable;
@KeepMember
/* loaded from: classes3-dex2jar.jar:io/realm/internal/sync/OsSubscription.class */
public class OsSubscription implements NativeObject {
    public static final long nativeFinalizerPtr = nativeGetFinalizerPtr();
    public final long nativePtr;
    public final ObserverPairList<SubscriptionObserverPair> observerPairs = new ObserverPairList<>();

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/sync/OsSubscription$Callback.class */
    public static class Callback implements ObserverPairList.Callback<SubscriptionObserverPair> {
        public Callback() {
        }

        public void onCalled(SubscriptionObserverPair subscriptionObserverPair, Object obj) {
            subscriptionObserverPair.onChange((OsSubscription) obj);
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/sync/OsSubscription$SubscriptionObserverPair.class */
    public static class SubscriptionObserverPair extends ObserverPairList.ObserverPair<OsSubscription, RealmChangeListener<OsSubscription>> {
        public SubscriptionObserverPair(OsSubscription osSubscription, RealmChangeListener<OsSubscription> realmChangeListener) {
            super(osSubscription, realmChangeListener);
        }

        public void onChange(OsSubscription osSubscription) {
            ((RealmChangeListener) this.listener).onChange(osSubscription);
        }
    }

    /* loaded from: classes3-dex2jar.jar:io/realm/internal/sync/OsSubscription$SubscriptionState.class */
    public enum SubscriptionState {
        ERROR(-1),
        CREATING(2),
        PENDING(0),
        COMPLETE(1),
        INVALIDATED(3);
        
        public final int val;

        SubscriptionState(int i) {
            this.val = i;
        }

        public static SubscriptionState fromInternalValue(int i) {
            SubscriptionState[] values;
            for (SubscriptionState subscriptionState : values()) {
                if (subscriptionState.val == i) {
                    return subscriptionState;
                }
            }
            throw new IllegalArgumentException("Unknown value: " + i);
        }
    }

    public OsSubscription(OsResults osResults, SubscriptionAction subscriptionAction) {
        this.nativePtr = nativeCreateOrUpdate(osResults.getNativePtr(), subscriptionAction.getName(), subscriptionAction.getTimeToLiveMs(), subscriptionAction.isUpdate());
    }

    public static native long nativeCreateOrUpdate(long j, String str, long j2, boolean z);

    public static native Object nativeGetError(long j);

    public static native long nativeGetFinalizerPtr();

    public static native int nativeGetState(long j);

    private native void nativeStartListening(long j);

    private native void nativeStopListening(long j);

    @KeepMember
    private void notifyChangeListeners() {
        this.observerPairs.foreach(new Callback());
    }

    public void addChangeListener(RealmChangeListener<OsSubscription> realmChangeListener) {
        if (this.observerPairs.isEmpty()) {
            nativeStartListening(this.nativePtr);
        }
        this.observerPairs.add(new SubscriptionObserverPair(this, realmChangeListener));
    }

    @Nullable
    public Throwable getError() {
        return (Throwable) nativeGetError(this.nativePtr);
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return nativeFinalizerPtr;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.nativePtr;
    }

    public SubscriptionState getState() {
        return SubscriptionState.fromInternalValue(nativeGetState(this.nativePtr));
    }

    public void removeChangeListener(RealmChangeListener<OsSubscription> realmChangeListener) {
        this.observerPairs.remove(this, realmChangeListener);
        if (this.observerPairs.isEmpty()) {
            nativeStopListening(this.nativePtr);
        }
    }
}
