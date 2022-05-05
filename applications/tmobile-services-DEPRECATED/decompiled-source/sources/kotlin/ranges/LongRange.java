package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u000b\u0018�� \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\u0017\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003¢\u0006\u0004\b\u0019\u0010\u001aJ\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\u00052\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0096\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u000f\u0010\r\u001a\u00020\fH\u0016¢\u0006\u0004\b\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013R\u0016\u0010\u0016\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015R\u0016\u0010\u0018\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u0015¨\u0006\u001c"}, d2 = {"Lkotlin/ranges/LongRange;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ranges/LongProgression;", "", FirebaseAnalytics.Param.VALUE, "", "contains", "(J)Z", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "", "toString", "()Ljava/lang/String;", "getEndInclusive", "()Ljava/lang/Long;", "endInclusive", "getStart", "start", "<init>", "(JJ)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/LongRange.class */
public final class LongRange extends LongProgression implements ClosedRange<Long> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0002\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlin/ranges/LongRange$Companion;", "Lkotlin/ranges/LongRange;", "EMPTY", "Lkotlin/ranges/LongRange;", "getEMPTY", "()Lkotlin/ranges/LongRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/LongRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    static {
        new LongRange(1L, 0L);
    }

    public LongRange(long j, long j2) {
        super(j, j2, 1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0034, code lost:
        if (m1727g() == r0.m1727g()) goto L_0x0037;
     */
    @Override // kotlin.ranges.LongProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.LongRange
            if (r0 == 0) goto L_0x003d
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            kotlin.ranges.LongRange r0 = (kotlin.ranges.LongRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0037
        L_0x0018:
            r0 = r5
            long r0 = r0.m1728f()
            r7 = r0
            r0 = r6
            kotlin.ranges.LongRange r0 = (kotlin.ranges.LongRange) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.m1728f()
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x003d
            r0 = r5
            long r0 = r0.m1727g()
            r1 = r6
            long r1 = r1.m1727g()
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.LongRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.LongProgression
    public int hashCode() {
        return isEmpty() ? -1 : (int) ((31 * (m1728f() ^ (m1728f() >>> 32))) + (m1727g() ^ (m1727g() >>> 32)));
    }

    @Override // kotlin.ranges.LongProgression
    public boolean isEmpty() {
        return m1728f() > m1727g();
    }

    @NotNull
    /* renamed from: j */
    public Long mo1694e() {
        return Long.valueOf(m1727g());
    }

    @NotNull
    /* renamed from: k */
    public Long mo1695c() {
        return Long.valueOf(m1728f());
    }

    @Override // kotlin.ranges.LongProgression
    @NotNull
    public String toString() {
        return m1728f() + ".." + m1727g();
    }
}
