package p626l.p628b0;

import kotlin.Metadata;
import p459j.p460a.p541n0.C13032a;
import p626l.p641z.p643d.C15145g;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018�� \u00152\u00020\u00012\b\u0012\u0004\u0012\u00020\u00030\u0002:\u0001\u0015B\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003¢\u0006\u0002\u0010\u0006J\u0011\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0003H\u0096\u0002J\u0013\u0010\r\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0096\u0002J\b\u0010\u0010\u001a\u00020\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u000bH\u0016J\b\u0010\u0013\u001a\u00020\u0014H\u0016R\u0014\u0010\u0005\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0007\u0010\bR\u0014\u0010\u0004\u001a\u00020\u00038VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\b¨\u0006\u0016"}, m815d2 = {"Lkotlin/ranges/LongRange;", "Lkotlin/ranges/LongProgression;", "Lkotlin/ranges/ClosedRange;", "", "start", "endInclusive", "(JJ)V", "getEndInclusive", "()Ljava/lang/Long;", "getStart", "contains", "", C13032a.f29462d, "equals", "other", "", "hashCode", "", "isEmpty", "toString", "", "Companion", "kotlin-stdlib"}, m814k = 1, m813mv = {1, 1, 16})
/* renamed from: l.b0.g */
/* loaded from: classes3-dex2jar.jar:l/b0/g.class */
public final class C14893g extends C14890e implements AbstractC14883a<Long> {

    /* renamed from: l.b0.g$a */
    /* loaded from: classes3-dex2jar.jar:l/b0/g$a.class */
    public static final class C14894a {
        public C14894a() {
        }

        public /* synthetic */ C14894a(C15145g gVar) {
            this();
        }
    }

    static {
        new C14894a(null);
        new C14893g(1L, 0L);
    }

    public C14893g(long j, long j2) {
        super(j, j2, 1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (getLast() == r0.getLast()) goto L_0x0037;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof p626l.p628b0.C14893g
            if (r0 == 0) goto L_0x003d
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            l.b0.g r0 = (p626l.p628b0.C14893g) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0037
        L_0x0018:
            r0 = r5
            long r0 = r0.getFirst()
            r7 = r0
            r0 = r6
            l.b0.g r0 = (p626l.p628b0.C14893g) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.getFirst()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            r0 = r5
            long r0 = r0.getLast()
            r1 = r6
            long r1 = r1.getLast()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
        L_0x0037:
            r0 = 1
            r9 = r0
            goto L_0x0040
        L_0x003d:
            r0 = 0
            r9 = r0
        L_0x0040:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p626l.p628b0.C14893g.equals(java.lang.Object):boolean");
    }

    @Override // p626l.p628b0.AbstractC14883a
    public Long getEndInclusive() {
        return Long.valueOf(getLast());
    }

    @Override // p626l.p628b0.AbstractC14883a
    public Long getStart() {
        return Long.valueOf(getFirst());
    }

    public int hashCode() {
        return isEmpty() ? -1 : (int) ((31 * (getFirst() ^ (getFirst() >>> 32))) + (getLast() ^ (getLast() >>> 32)));
    }

    public boolean isEmpty() {
        return getFirst() > getLast();
    }

    public String toString() {
        return getFirst() + ".." + getLast();
    }
}
