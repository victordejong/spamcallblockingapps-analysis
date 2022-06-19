package com.google.common.collect;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/common/collect/UnmodifiableIterator.class */
public abstract class UnmodifiableIterator<E> implements Iterator<E> {
    @Override // java.util.Iterator
    @Deprecated
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
