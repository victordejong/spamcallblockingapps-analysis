package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/EmptyLoadChangeSet.class */
public class EmptyLoadChangeSet extends OsCollectionChangeSet {
    private static final int[] NO_INDEX_CHANGES = new int[0];
    private static final OrderedCollectionChangeSet.Range[] NO_RANGE_CHANGES = new OrderedCollectionChangeSet.Range[0];

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z) {
        super(0L, true, osSubscription, z);
    }

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z, boolean z2) {
        super(0L, z, osSubscription, z2);
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getChangeRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public int[] getChanges() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getDeletionRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public int[] getDeletions() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public Throwable getError() {
        if (this.subscription == null || this.subscription.getState() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.subscription.getError();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.Range[] getInsertionRanges() {
        return NO_RANGE_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public int[] getInsertions() {
        return NO_INDEX_CHANGES;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return super.getNativeFinalizerPtr();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativePtr() {
        return super.getNativePtr();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public OrderedCollectionChangeSet.State getState() {
        return OrderedCollectionChangeSet.State.INITIAL;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    public boolean isCompleteResult() {
        return isRemoteDataLoaded();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isEmpty() {
        return this.subscription == null;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isFirstAsyncCallback() {
        return super.isFirstAsyncCallback();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public boolean isRemoteDataLoaded() {
        return super.isRemoteDataLoaded();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public String toString() {
        return super.toString();
    }
}
