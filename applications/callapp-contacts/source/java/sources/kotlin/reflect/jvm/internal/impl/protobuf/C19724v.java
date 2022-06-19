package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
/* renamed from: kotlin.reflect.jvm.internal.impl.protobuf.v */
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/v.class */
public final class C19724v extends AbstractList<String> implements RandomAccess, AbstractC19701n {

    /* renamed from: a */
    private final AbstractC19701n f65910a;

    public C19724v(AbstractC19701n abstractC19701n) {
        this.f65910a = abstractC19701n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final List<?> mo1603a() {
        return this.f65910a.mo1603a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final AbstractC19673d mo1602a(int i) {
        return this.f65910a.mo1602a(i);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: a */
    public final void mo1601a(AbstractC19673d abstractC19673d) {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.AbstractC19701n
    /* renamed from: b */
    public final AbstractC19701n mo1599b() {
        return this;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return (String) this.f65910a.get(i);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator<String> iterator() {
        return new Iterator<String>() { // from class: kotlin.reflect.jvm.internal.impl.protobuf.v.2

            /* renamed from: a */
            Iterator<String> f65914a;

            {
                C19724v.this = this;
                this.f65914a = this.f65910a.iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.f65914a.hasNext();
            }

            @Override // java.util.Iterator
            public final /* bridge */ /* synthetic */ String next() {
                return this.f65914a.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator<String> listIterator(int i) {
        return new ListIterator<String>(i) { // from class: kotlin.reflect.jvm.internal.impl.protobuf.v.1

            /* renamed from: a */
            ListIterator<String> f65911a;

            /* renamed from: b */
            final /* synthetic */ int f65912b;

            {
                C19724v.this = this;
                this.f65912b = i;
                this.f65911a = this.f65910a.listIterator(i);
            }

            @Override // java.util.ListIterator
            public final /* synthetic */ void add(String str) {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final boolean hasNext() {
                return this.f65911a.hasNext();
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return this.f65911a.hasPrevious();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final /* bridge */ /* synthetic */ Object next() {
                return this.f65911a.next();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return this.f65911a.nextIndex();
            }

            @Override // java.util.ListIterator
            public final /* bridge */ /* synthetic */ String previous() {
                return this.f65911a.previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return this.f65911a.previousIndex();
            }

            @Override // java.util.ListIterator, java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }

            @Override // java.util.ListIterator
            public final /* synthetic */ void set(String str) {
                throw new UnsupportedOperationException();
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f65910a.size();
    }
}
