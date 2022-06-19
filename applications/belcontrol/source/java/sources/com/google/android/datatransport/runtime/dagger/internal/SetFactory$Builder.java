package com.google.android.datatransport.runtime.dagger.internal;

import java.util.Collection;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/runtime/dagger/internal/SetFactory$Builder.class */
public final class SetFactory$Builder<T> {
    public static final /* synthetic */ boolean $assertionsDisabled = false;
    private final List<hj1<Collection<T>>> collectionProviders;
    private final List<hj1<T>> individualProviders;

    private SetFactory$Builder(int i, int i2) {
        this.individualProviders = DaggerCollections.presizedList(i);
        this.collectionProviders = DaggerCollections.presizedList(i2);
    }

    public SetFactory$Builder<T> addCollectionProvider(hj1<? extends Collection<? extends T>> hj1Var) {
        this.collectionProviders.add(hj1Var);
        return this;
    }

    public SetFactory$Builder<T> addProvider(hj1<? extends T> hj1Var) {
        this.individualProviders.add(hj1Var);
        return this;
    }

    public SetFactory<T> build() {
        return new SetFactory<>(this.individualProviders, this.collectionProviders, (SetFactory$1) null);
    }
}
