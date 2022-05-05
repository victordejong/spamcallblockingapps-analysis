package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/EmptyLoadChangeSet.class */
public class EmptyLoadChangeSet extends OsCollectionChangeSet {

    /* renamed from: k */
    private static final OrderedCollectionChangeSet.Range[] f20093k = new OrderedCollectionChangeSet.Range[0];

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z) {
        super(0L, true, osSubscription, z);
    }

    public EmptyLoadChangeSet(@Nullable OsSubscription osSubscription, boolean z, boolean z2) {
        super(0L, z, osSubscription, z2);
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    /* renamed from: a */
    public OrderedCollectionChangeSet.Range[] mo2681a() {
        return f20093k;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    /* renamed from: b */
    public OrderedCollectionChangeSet.Range[] mo2680b() {
        return f20093k;
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.OrderedCollectionChangeSet
    /* renamed from: c */
    public OrderedCollectionChangeSet.Range[] mo2679c() {
        return f20093k;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    /* renamed from: d */
    public Throwable mo2800d() {
        OsSubscription osSubscription = this.f20117h;
        if (osSubscription == null || osSubscription.m2545c() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.f20117h.m2546b();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    /* renamed from: e */
    public boolean mo2799e() {
        return this.f20117h == null;
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    /* renamed from: f */
    public boolean mo2798f() {
        return super.mo2798f();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    /* renamed from: g */
    public boolean mo2797g() {
        return super.mo2797g();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativeFinalizerPtr() {
        return super.getNativeFinalizerPtr();
    }

    @Override // io.realm.internal.OsCollectionChangeSet, io.realm.internal.NativeObject
    public long getNativePtr() {
        return super.getNativePtr();
    }

    @Override // io.realm.internal.OsCollectionChangeSet
    public String toString() {
        return super.toString();
    }
}
