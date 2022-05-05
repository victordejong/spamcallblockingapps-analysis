package io.realm.internal;

import io.realm.OrderedCollectionChangeSet;
import io.realm.internal.sync.OsSubscription;
import java.util.Arrays;
import javax.annotation.Nullable;
/* loaded from: classes2-dex2jar.jar:io/realm/internal/OsCollectionChangeSet.class */
public class OsCollectionChangeSet implements OrderedCollectionChangeSet, NativeObject {

    /* renamed from: j */
    private static long f20114j = nativeGetFinalizerPtr();

    /* renamed from: f */
    private final long f20115f;

    /* renamed from: g */
    private final boolean f20116g;

    /* renamed from: h */
    protected final OsSubscription f20117h;

    /* renamed from: i */
    protected final boolean f20118i;

    public OsCollectionChangeSet(long j, boolean z) {
        this(j, z, null, false);
    }

    public OsCollectionChangeSet(long j, boolean z, @Nullable OsSubscription osSubscription, boolean z2) {
        this.f20115f = j;
        this.f20116g = z;
        this.f20117h = osSubscription;
        this.f20118i = z2;
        NativeContext.f20097c.m2829a(this);
    }

    /* renamed from: h */
    private OrderedCollectionChangeSet.Range[] m2796h(int[] iArr) {
        if (iArr == null) {
            return new OrderedCollectionChangeSet.Range[0];
        }
        int length = iArr.length / 2;
        OrderedCollectionChangeSet.Range[] rangeArr = new OrderedCollectionChangeSet.Range[length];
        for (int i = 0; i < length; i++) {
            int i2 = i * 2;
            rangeArr[i] = new OrderedCollectionChangeSet.Range(iArr[i2], iArr[i2 + 1]);
        }
        return rangeArr;
    }

    private static native long nativeGetFinalizerPtr();

    private static native int[] nativeGetRanges(long j, int i);

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: a */
    public OrderedCollectionChangeSet.Range[] mo2681a() {
        return m2796h(nativeGetRanges(this.f20115f, 1));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: b */
    public OrderedCollectionChangeSet.Range[] mo2680b() {
        return m2796h(nativeGetRanges(this.f20115f, 2));
    }

    @Override // io.realm.OrderedCollectionChangeSet
    /* renamed from: c */
    public OrderedCollectionChangeSet.Range[] mo2679c() {
        return m2796h(nativeGetRanges(this.f20115f, 0));
    }

    /* renamed from: d */
    public Throwable mo2800d() {
        OsSubscription osSubscription = this.f20117h;
        if (osSubscription == null || osSubscription.m2545c() != OsSubscription.SubscriptionState.ERROR) {
            return null;
        }
        return this.f20117h.m2546b();
    }

    /* renamed from: e */
    public boolean mo2799e() {
        return this.f20115f == 0;
    }

    /* renamed from: f */
    public boolean mo2798f() {
        return this.f20116g;
    }

    /* renamed from: g */
    public boolean mo2797g() {
        boolean z = true;
        if (!this.f20118i) {
            return true;
        }
        OsSubscription osSubscription = this.f20117h;
        if (osSubscription == null) {
            return false;
        }
        if (osSubscription.m2545c() != OsSubscription.SubscriptionState.COMPLETE) {
            z = false;
        }
        return z;
    }

    public long getNativeFinalizerPtr() {
        return f20114j;
    }

    public long getNativePtr() {
        return this.f20115f;
    }

    public String toString() {
        if (this.f20115f == 0) {
            return "Change set is empty.";
        }
        return "Deletion Ranges: " + Arrays.toString(mo2679c()) + "\nInsertion Ranges: " + Arrays.toString(mo2681a()) + "\nChange Ranges: " + Arrays.toString(mo2680b());
    }
}
