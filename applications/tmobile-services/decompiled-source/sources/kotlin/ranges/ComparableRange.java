package kotlin.ranges;

import java.lang.Comparable;
import kotlin.Metadata;
import kotlin.ranges.ClosedRange;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n��\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u000b\b\u0012\u0018��*\u000e\b��\u0010\u0002*\b\u0012\u0004\u0012\u00028��0\u00012\u00020\u0003B\u0017\u0012\u0006\u0010\u0013\u001a\u00028��\u0012\u0006\u0010\u000f\u001a\u00028��¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0096\u0002¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eR\u001c\u0010\u000f\u001a\u00028��8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00028��8\u0016@\u0016X\u0096\u0004¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0014\u0010\u0012¨\u0006\u0017"}, d2 = {"Lkotlin/ranges/ComparableRange;", "", "T", "Lkotlin/ranges/ClosedRange;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "endInclusive", "Ljava/lang/Comparable;", "getEndInclusive", "()Ljava/lang/Comparable;", "start", "getStart", "<init>", "(Ljava/lang/Comparable;Ljava/lang/Comparable;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/ComparableRange.class */
class ComparableRange<T extends Comparable<? super T>> implements ClosedRange<T> {
    @NotNull

    /* renamed from: f */
    private final T f20792f;
    @NotNull

    /* renamed from: g */
    private final T f20793g;

    /* renamed from: a */
    public boolean m1739a() {
        return ClosedRange.DefaultImpls.m1740a(this);
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    /* renamed from: c */
    public T mo1695c() {
        return this.f20792f;
    }

    @Override // kotlin.ranges.ClosedRange
    @NotNull
    /* renamed from: e */
    public T mo1694e() {
        return this.f20793g;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0038, code lost:
        if (kotlin.jvm.internal.Intrinsics.m1834a(mo1694e(), r0.mo1694e()) != false) goto L_0x003b;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.ComparableRange
            if (r0 == 0) goto L_0x0040
            r0 = r3
            boolean r0 = r0.m1739a()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.ComparableRange r0 = (kotlin.ranges.ComparableRange) r0
            boolean r0 = r0.m1739a()
            if (r0 != 0) goto L_0x003b
        L_0x0018:
            r0 = r3
            java.lang.Comparable r0 = r0.mo1695c()
            r5 = r0
            r0 = r4
            kotlin.ranges.ComparableRange r0 = (kotlin.ranges.ComparableRange) r0
            r4 = r0
            r0 = r5
            r1 = r4
            java.lang.Comparable r1 = r1.mo1695c()
            boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
            if (r0 == 0) goto L_0x0040
            r0 = r3
            java.lang.Comparable r0 = r0.mo1694e()
            r1 = r4
            java.lang.Comparable r1 = r1.mo1694e()
            boolean r0 = kotlin.jvm.internal.Intrinsics.m1834a(r0, r1)
            if (r0 == 0) goto L_0x0040
        L_0x003b:
            r0 = 1
            r6 = r0
            goto L_0x0042
        L_0x0040:
            r0 = 0
            r6 = r0
        L_0x0042:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.ComparableRange.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        return m1739a() ? -1 : (mo1695c().hashCode() * 31) + mo1694e().hashCode();
    }

    @NotNull
    public String toString() {
        return mo1695c() + ".." + mo1694e();
    }
}
