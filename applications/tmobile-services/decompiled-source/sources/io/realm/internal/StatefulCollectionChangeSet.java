package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/StatefulCollectionChangeSet.class */
public class StatefulCollectionChangeSet implements OrderedCollectionChangeSet {

    /* renamed from: f */
    private final OrderedCollectionChangeSet f20176f;

    /* renamed from: g */
    private final Throwable f20177g;

    public StatefulCollectionChangeSet(OsCollectionChangeSet osCollectionChangeSet) {
        this.f20176f = osCollectionChangeSet;
        boolean f = osCollectionChangeSet.mo2798f();
        osCollectionChangeSet.mo2797g();
        Throwable d = osCollectionChangeSet.mo2800d();
        this.f20177g = d;
        if (d != null) {
            OrderedCollectionChangeSet.State state = OrderedCollectionChangeSet.State.ERROR;
        } else if (f) {
            OrderedCollectionChangeSet.State state2 = OrderedCollectionChangeSet.State.INITIAL;
        } else {
            OrderedCollectionChangeSet.State state3 = OrderedCollectionChangeSet.State.UPDATE;
        }
    }

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: a */
    public OrderedCollectionChangeSet.Range[] mo2681a() {
        return this.f20176f.mo2681a();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: b */
    public OrderedCollectionChangeSet.Range[] mo2680b() {
        return this.f20176f.mo2680b();
    }

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: c */
    public OrderedCollectionChangeSet.Range[] mo2679c() {
        return this.f20176f.mo2679c();
    }
}
