package p626l.p628b0;

import java.util.Iterator;
import kotlin.Metadata;
import p626l.p638x.C15082c;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.p644e0.AbstractC15141a;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, m815d2 = {"Lkotlin/ranges/IntProgression;", "", "", "start", "endInclusive", "step", "(III)V", "first", "getFirst", "()I", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/IntIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.b0.b */
/* loaded from: classes3-dex2jar.jar:l/b0/b.class */
public class C14885b implements Iterable<Integer>, AbstractC15141a {

    /* renamed from: d */
    public static final C14886a f32935d = new C14886a(null);

    /* renamed from: a */
    public final int f32936a;

    /* renamed from: b */
    public final int f32937b;

    /* renamed from: c */
    public final int f32938c;

    /* renamed from: l.b0.b$a */
    /* loaded from: classes3-dex2jar.jar:l/b0/b$a.class */
    public static final class C14886a {
        public C14886a() {
        }

        public /* synthetic */ C14886a(C15145g gVar) {
            this();
        }

        /* renamed from: a */
        public final C14885b m799a(int i, int i2, int i3) {
            return new C14885b(i, i2, i3);
        }
    }

    public C14885b(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i3 != Integer.MIN_VALUE) {
            this.f32936a = i;
            this.f32937b = C15082c.m453b(i, i2, i3);
            this.f32938c = i3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    /* renamed from: b */
    public final int m800b() {
        return this.f32938c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f32938c == r0.f32938c) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof p626l.p628b0.C14885b
            if (r0 == 0) goto L_0x0045
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            l.b0.b r0 = (p626l.p628b0.C14885b) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0040
        L_0x0018:
            r0 = r3
            int r0 = r0.f32936a
            r5 = r0
            r0 = r4
            l.b0.b r0 = (p626l.p628b0.C14885b) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f32936a
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f32937b
            r1 = r4
            int r1 = r1.f32937b
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f32938c
            r1 = r4
            int r1 = r1.f32938c
            if (r0 != r1) goto L_0x0045
        L_0x0040:
            r0 = 1
            r6 = r0
            goto L_0x0047
        L_0x0045:
            r0 = 0
            r6 = r0
        L_0x0047:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p628b0.C14885b.equals(java.lang.Object):boolean");
    }

    public final int getFirst() {
        return this.f32936a;
    }

    public final int getLast() {
        return this.f32937b;
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f32936a * 31) + this.f32937b) * 31) + this.f32938c;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f32938c <= 0 ? this.f32936a >= this.f32937b : this.f32936a <= this.f32937b) {
            z = false;
        }
        return z;
    }

    @Override // java.lang.Iterable
    public Iterator<Integer> iterator() {
        return new C14887c(this.f32936a, this.f32937b, this.f32938c);
    }

    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f32938c > 0) {
            sb = new StringBuilder();
            sb.append(this.f32936a);
            sb.append("..");
            sb.append(this.f32937b);
            sb.append(" step ");
            i = this.f32938c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f32936a);
            sb.append(" downTo ");
            sb.append(this.f32937b);
            sb.append(" step ");
            i = -this.f32938c;
        }
        sb.append(i);
        return sb.toString();
    }
}
