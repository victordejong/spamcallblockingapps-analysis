package com.google.protobuf;

import java.util.ListIterator;
/* loaded from: classes3-dex2jar.jar:com/google/protobuf/UnmodifiableLazyStringList$1.class */
public class UnmodifiableLazyStringList$1 implements ListIterator<String> {
    public ListIterator<String> iter;
    public final /* synthetic */ UnmodifiableLazyStringList this$0;
    public final /* synthetic */ int val$index;

    public UnmodifiableLazyStringList$1(UnmodifiableLazyStringList unmodifiableLazyStringList, int i) {
        this.this$0 = unmodifiableLazyStringList;
        this.val$index = i;
        this.iter = UnmodifiableLazyStringList.access$000(unmodifiableLazyStringList).listIterator(i);
    }

    public void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public boolean hasNext() {
        return this.iter.hasNext();
    }

    @Override // java.util.ListIterator
    public boolean hasPrevious() {
        return this.iter.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public String next() {
        return this.iter.next();
    }

    @Override // java.util.ListIterator
    public int nextIndex() {
        return this.iter.nextIndex();
    }

    @Override // java.util.ListIterator
    public String previous() {
        return this.iter.previous();
    }

    @Override // java.util.ListIterator
    public int previousIndex() {
        return this.iter.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    public void set(String str) {
        throw new UnsupportedOperationException();
    }
}
