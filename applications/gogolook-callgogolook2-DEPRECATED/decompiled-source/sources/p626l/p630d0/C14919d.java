package p626l.p630d0;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010(\n��\b��\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B1\u0012\f\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0012\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00050\u0007¢\u0006\u0002\u0010\bJ\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH\u0096\u0002R\u001a\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00020\u00050\u0007X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u0014\u0010\u0003\u001a\b\u0012\u0004\u0012\u00028��0\u0002X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m815d2 = {"Lkotlin/sequences/FilteringSequence;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/Sequence;", "sequence", "sendWhen", "", "predicate", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;ZLkotlin/jvm/functions/Function1;)V", "iterator", "", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.d0.d */
/* loaded from: classes3-dex2jar.jar:l/d0/d.class */
public final class C14919d<T> implements AbstractC14921e<T> {

    /* renamed from: a */
    public final AbstractC14921e<T> f32956a;

    /* renamed from: b */
    public final boolean f32957b;

    /* renamed from: c */
    public final AbstractC15118l<T, Boolean> f32958c;

    /* renamed from: l.d0.d$a */
    /* loaded from: classes3-dex2jar.jar:l/d0/d$a.class */
    public static final class C14920a implements Iterator<T>, AbstractC15141a {

        /* renamed from: a */
        public final Iterator<T> f32959a;

        /* renamed from: b */
        public int f32960b = -1;

        /* renamed from: c */
        public T f32961c;

        public C14920a() {
            this.f32959a = C14919d.this.f32956a.iterator();
        }

        /* renamed from: a */
        public final void m786a() {
            while (this.f32959a.hasNext()) {
                T next = this.f32959a.next();
                if (((Boolean) C14919d.this.f32958c.invoke(next)).booleanValue() == C14919d.this.f32957b) {
                    this.f32961c = next;
                    this.f32960b = 1;
                    return;
                }
            }
            this.f32960b = 0;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f32960b == -1) {
                m786a();
            }
            boolean z = true;
            if (this.f32960b != 1) {
                z = false;
            }
            return z;
        }

        @Override // java.util.Iterator
        public T next() {
            if (this.f32960b == -1) {
                m786a();
            }
            if (this.f32960b != 0) {
                T t = this.f32961c;
                this.f32961c = null;
                this.f32960b = -1;
                return t;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14919d(AbstractC14921e<? extends T> eVar, boolean z, AbstractC15118l<? super T, Boolean> lVar) {
        C15149k.m377b(eVar, "sequence");
        C15149k.m377b(lVar, "predicate");
        this.f32956a = eVar;
        this.f32957b = z;
        this.f32958c = lVar;
    }

    @Override // p626l.p630d0.AbstractC14921e
    public Iterator<T> iterator() {
        return new C14920a();
    }
}
