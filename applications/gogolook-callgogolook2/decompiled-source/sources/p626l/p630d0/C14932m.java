package p626l.p630d0;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010(\n\u0002\b\u0002\b��\u0018��*\u0004\b��\u0010\u0001*\u0004\b\u0001\u0010\u00022\b\u0012\u0004\u0012\u0002H\u00020\u0003B'\u0012\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006¢\u0006\u0002\u0010\u0007J3\u0010\b\u001a\b\u0012\u0004\u0012\u0002H\t0\u0003\"\u0004\b\u0002\u0010\t2\u0018\u0010\n\u001a\u0014\u0012\u0004\u0012\u00028\u0001\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\t0\u000b0\u0006H��¢\u0006\u0002\b\fJ\u000f\u0010\n\u001a\b\u0012\u0004\u0012\u00028\u00010\u000bH\u0096\u0002R\u0014\u0010\u0004\u001a\b\u0012\u0004\u0012\u00028��0\u0003X\u0082\u0004¢\u0006\u0002\n��R\u001a\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00028��\u0012\u0004\u0012\u00028\u00010\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, m815d2 = {"Lkotlin/sequences/TransformingSequence;", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/Sequence;", "sequence", "transformer", "Lkotlin/Function1;", "(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V", "flatten", ExifInterface.LONGITUDE_EAST, "iterator", "", "flatten$kotlin_stdlib", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.d0.m */
/* loaded from: classes3-dex2jar.jar:l/d0/m.class */
public final class C14932m<T, R> implements AbstractC14921e<R> {

    /* renamed from: a */
    public final AbstractC14921e<T> f32970a;

    /* renamed from: b */
    public final AbstractC15118l<T, R> f32971b;

    /* renamed from: l.d0.m$a */
    /* loaded from: classes3-dex2jar.jar:l/d0/m$a.class */
    public static final class C14933a implements Iterator<R>, AbstractC15141a {

        /* renamed from: a */
        public final Iterator<T> f32972a;

        public C14933a() {
            this.f32972a = C14932m.this.f32970a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f32972a.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) C14932m.this.f32971b.invoke(this.f32972a.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C14932m(AbstractC14921e<? extends T> eVar, AbstractC15118l<? super T, ? extends R> lVar) {
        C15149k.m377b(eVar, "sequence");
        C15149k.m377b(lVar, "transformer");
        this.f32970a = eVar;
        this.f32971b = lVar;
    }

    @Override // p626l.p630d0.AbstractC14921e
    public Iterator<R> iterator() {
        return new C14933a();
    }
}
