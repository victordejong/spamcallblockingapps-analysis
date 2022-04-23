package p626l.p628b0;

import java.util.Iterator;
import kotlin.Metadata;
import p626l.p638x.C15082c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� \u00182\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0018B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016J\t\u0010\u0014\u001a\u00020\u0015H\u0096\u0002J\b\u0010\u0016\u001a\u00020\u0017H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u0019"}, m815d2 = {"Lkotlin/ranges/LongProgression;", "", "", "start", "endInclusive", "step", "(JJJ)V", "first", "getFirst", "()J", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "", "isEmpty", "iterator", "Lkotlin/collections/LongIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.b0.e */
/* loaded from: classes3-dex2jar.jar:l/b0/e.class */
public class C14890e implements Iterable<Long>, AbstractC15141a {

    /* renamed from: a */
    public final long f32945a;

    /* renamed from: b */
    public final long f32946b;

    /* renamed from: c */
    public final long f32947c;

    /* renamed from: l.b0.e$a */
    /* loaded from: classes3-dex2jar.jar:l/b0/e$a.class */
    public static final class C14891a {
        public C14891a() {
        }

        public /* synthetic */ C14891a(C15145g gVar) {
            this();
        }
    }

    static {
        new C14891a(null);
    }

    public C14890e(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (j3 != Long.MIN_VALUE) {
            this.f32945a = j;
            this.f32946b = C15082c.m452b(j, j2, j3);
            this.f32947c = j3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public final long getFirst() {
        return this.f32945a;
    }

    public final long getLast() {
        return this.f32946b;
    }

    @Override // java.lang.Iterable
    public Iterator<Long> iterator() {
        return new C14892f(this.f32945a, this.f32946b, this.f32947c);
    }
}
