package kotlin.p531g;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.p534a.AbstractC18481a;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u0003B\u001b\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0016\u0010\b\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016J\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000bH\u0096\u0002J\u0016\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0\u00022\u0006\u0010\t\u001a\u00020\u0006H\u0016R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m4298d2 = {"Lkotlin/sequences/DropSequence;", "T", "Lkotlin/sequences/Sequence;", "Lkotlin/sequences/DropTakeSequence;", "sequence", "count", "", "(Lkotlin/sequences/Sequence;I)V", "drop", "n", "iterator", "", "take", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.g.b */
/* loaded from: classes5-dex2jar.jar:kotlin/g/b.class */
public final class C18368b<T> implements AbstractC18370c<T>, AbstractC18378h<T> {

    /* renamed from: a */
    private final AbstractC18378h<T> f63470a;

    /* renamed from: b */
    private final int f63471b;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��#\n��\n\u0002\u0010(\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003*\u0001��\b\n\u0018��2\b\u0012\u0004\u0012\u00028��0\u0001J\b\u0010\u000b\u001a\u00020\fH\u0002J\t\u0010\r\u001a\u00020\u000eH\u0096\u0002J\u000e\u0010\u000f\u001a\u00028��H\u0096\u0002¢\u0006\u0002\u0010\u0010R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028��0\u0001¢\u0006\b\n��\u001a\u0004\b\u0003\u0010\u0004R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\n¨\u0006\u0011"}, m4298d2 = {"kotlin/sequences/DropSequence$iterator$1", "", "iterator", "getIterator", "()Ljava/util/Iterator;", "left", "", "getLeft", "()I", "setLeft", "(I)V", "drop", "", "hasNext", "", "next", "()Ljava/lang/Object;", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.g.b$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/g/b$a.class */
    public static final class C18369a implements Iterator<T>, AbstractC18481a {

        /* renamed from: b */
        private final Iterator<T> f63473b;

        /* renamed from: c */
        private int f63474c;

        C18369a() {
            C18368b.this = r4;
            this.f63473b = r4.f63470a.mo3908a();
            this.f63474c = r4.f63471b;
        }

        /* renamed from: a */
        private final void m4046a() {
            while (this.f63474c > 0 && this.f63473b.hasNext()) {
                this.f63473b.next();
                this.f63474c--;
            }
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            m4046a();
            return this.f63473b.hasNext();
        }

        @Override // java.util.Iterator
        public final T next() {
            m4046a();
            return this.f63473b.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C18368b(AbstractC18378h<? extends T> sequence, int i) {
        C18524p.m3840d(sequence, "sequence");
        this.f63470a = sequence;
        this.f63471b = i;
        if (i >= 0) {
            return;
        }
        throw new IllegalArgumentException(("count must be non-negative, but was " + i + '.').toString());
    }

    @Override // kotlin.p531g.AbstractC18378h
    /* renamed from: a */
    public final Iterator<T> mo3908a() {
        return new C18369a();
    }

    @Override // kotlin.p531g.AbstractC18370c
    /* renamed from: a */
    public final AbstractC18378h<T> mo4045a(int i) {
        int i2 = this.f63471b + i;
        return i2 < 0 ? new C18368b(this, i) : new C18368b(this.f63470a, i2);
    }
}
