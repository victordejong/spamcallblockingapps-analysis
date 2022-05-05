package io.reactivex.flowables;

import io.reactivex.Flowable;
import io.reactivex.annotations.Nullable;
/* loaded from: classes-dex2jar.jar:io/reactivex/flowables/GroupedFlowable.class */
public abstract class GroupedFlowable<K, T> extends Flowable<T> {

    /* renamed from: g */
    final K f15126g;

    /* JADX INFO: Access modifiers changed from: protected */
    public GroupedFlowable(@Nullable K k) {
        this.f15126g = k;
    }
}
