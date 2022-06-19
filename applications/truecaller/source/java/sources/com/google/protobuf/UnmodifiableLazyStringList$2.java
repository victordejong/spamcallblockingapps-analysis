package com.google.protobuf;

import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/UnmodifiableLazyStringList$2.class */
public class UnmodifiableLazyStringList$2 implements Iterator<String> {
    public Iterator<String> iter;
    public final /* synthetic */ UnmodifiableLazyStringList this$0;

    public UnmodifiableLazyStringList$2(UnmodifiableLazyStringList unmodifiableLazyStringList) {
        this.this$0 = unmodifiableLazyStringList;
        this.iter = UnmodifiableLazyStringList.access$000(unmodifiableLazyStringList).iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.iter.hasNext();
    }

    @Override // java.util.Iterator
    public String next() {
        return this.iter.next();
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }
}
