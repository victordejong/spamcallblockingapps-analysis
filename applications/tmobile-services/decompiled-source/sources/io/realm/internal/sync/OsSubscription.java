package io.realm.internal.sync;

import io.realm.RealmChangeListener;
import io.realm.internal.KeepMember;
import io.realm.internal.NativeObject;
import io.realm.internal.ObserverPairList;
import io.realm.internal.OsResults;
import javax.annotation.Nullable;
@KeepMember
/* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/OsSubscription.class */
public class OsSubscription implements NativeObject {

    /* renamed from: h */
    private static final long f20244h = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final long f20245f;

    /* renamed from: g */
    protected final ObserverPairList<SubscriptionObserverPair> f20246g = new ObserverPairList<>();

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/OsSubscription$Callback.class */
    private static class Callback implements ObserverPairList.Callback<SubscriptionObserverPair> {
        private Callback() {
        }

        /* renamed from: b */
        public void mo2544a(SubscriptionObserverPair subscriptionObserverPair, Object obj) {
            subscriptionObserverPair.m2542a((OsSubscription) obj);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/OsSubscription$SubscriptionObserverPair.class */
    public static class SubscriptionObserverPair extends ObserverPairList.ObserverPair<OsSubscription, RealmChangeListener<OsSubscription>> {
        public SubscriptionObserverPair(OsSubscription osSubscription, RealmChangeListener<OsSubscription> realmChangeListener) {
            super(osSubscription, realmChangeListener);
        }

        /* renamed from: a */
        public void m2542a(OsSubscription osSubscription) {
            ((RealmChangeListener) this.f20112b).mo2506a(osSubscription);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/realm/internal/sync/OsSubscription$SubscriptionState.class */
    public enum SubscriptionState {
        ERROR(-1),
        CREATING(2),
        PENDING(0),
        COMPLETE(1),
        INVALIDATED(3);
        
        private final int val;

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
        this.f20245f = nativeCreateOrUpdate(osResults.getNativePtr(), subscriptionAction.m2541a(), subscriptionAction.m2540b(), subscriptionAction.m2539c());
    }

    private static native long nativeCreateOrUpdate(long j, String str, long j2, boolean z);

    private static native Object nativeGetError(long j);

    private static native long nativeGetFinalizerPtr();

    private static native int nativeGetState(long j);

    private native void nativeStartListening(long j);

    @KeepMember
    private void notifyChangeListeners() {
        this.f20246g.m2805c(new Callback());
    }

    /* renamed from: a */
    public void m2547a(RealmChangeListener<OsSubscription> realmChangeListener) {
        if (this.f20246g.m2804d()) {
            nativeStartListening(this.f20245f);
        }
        this.f20246g.m2807a(new SubscriptionObserverPair(this, realmChangeListener));
    }

    @Nullable
    /* renamed from: b */
    public Throwable m2546b() {
        return (Throwable) nativeGetError(this.f20245f);
    }

    /* renamed from: c */
    public SubscriptionState m2545c() {
        return SubscriptionState.fromInternalValue(nativeGetState(this.f20245f));
    }

    @Override // io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return f20244h;
    }

    @Override // io.realm.internal.NativeObject
    public long getNativePtr() {
        return this.f20245f;
    }
}
