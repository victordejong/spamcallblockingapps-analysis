package com.google.common.collect;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/Sets$CartesianSet$1.class */
public final class Sets$CartesianSet$1 extends ImmutableList<List<E>> {
    public final /* synthetic */ ImmutableList val$axes;

    public Sets$CartesianSet$1(ImmutableList immutableList) {
        this.val$axes = immutableList;
    }

    @Override // java.util.List
    public List<E> get(int i) {
        return ((ImmutableSet) this.val$axes.get(i)).asList();
    }

    @Override // com.google.common.collect.ImmutableCollection
    public boolean isPartialView() {
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.val$axes.size();
    }
}
