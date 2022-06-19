package com.google.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: com.google.protobuf.j1 */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/j1.class */
public class C2624j1 extends AbstractList<String> implements AbstractC2577c0, RandomAccess {

    /* renamed from: b */
    private final AbstractC2577c0 f11152b;

    /* renamed from: com.google.protobuf.j1$a */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/j1$a.class */
    class C2625a implements ListIterator<String> {

        /* renamed from: b */
        ListIterator<String> f11153b;

        /* renamed from: c */
        final /* synthetic */ int f11154c;

        C2625a(int i) {
            C2624j1.this = r5;
            this.f11154c = i;
            this.f11153b = r5.f11152b.listIterator(i);
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void add(String str) {
            m2560b(str);
            throw null;
        }

        /* renamed from: b */
        public void m2560b(String str) {
            throw new UnsupportedOperationException();
        }

        /* renamed from: c */
        public String next() {
            return this.f11153b.next();
        }

        /* renamed from: d */
        public String previous() {
            return this.f11153b.previous();
        }

        /* renamed from: e */
        public void m2557e(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            return this.f11153b.hasNext();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            return this.f11153b.hasPrevious();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            return this.f11153b.nextIndex();
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            return this.f11153b.previousIndex();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.ListIterator
        public /* bridge */ /* synthetic */ void set(String str) {
            m2557e(str);
            throw null;
        }
    }

    /* renamed from: com.google.protobuf.j1$b */
    /* loaded from: classes2-dex2jar.jar:com/google/protobuf/j1$b.class */
    class C2626b implements Iterator<String> {

        /* renamed from: b */
        Iterator<String> f11156b;

        C2626b() {
            C2624j1.this = r4;
            this.f11156b = r4.f11152b.iterator();
        }

        /* renamed from: b */
        public String next() {
            return this.f11156b.next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f11156b.hasNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public C2624j1(AbstractC2577c0 abstractC2577c0) {
        this.f11152b = abstractC2577c0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<String> iterator() {
        return new C2626b();
    }

    /* renamed from: j */
    public String get(int i) {
        return (String) this.f11152b.get(i);
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: l */
    public void mo2564l(ByteString byteString) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.AbstractList, java.util.List
    public ListIterator<String> listIterator(int i) {
        return new C2625a(i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f11152b.size();
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: t */
    public AbstractC2577c0 mo2563t() {
        return this;
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: y */
    public Object mo2562y(int i) {
        return this.f11152b.mo2562y(i);
    }

    @Override // com.google.protobuf.AbstractC2577c0
    /* renamed from: z */
    public List<?> mo2561z() {
        return this.f11152b.mo2561z();
    }
}
