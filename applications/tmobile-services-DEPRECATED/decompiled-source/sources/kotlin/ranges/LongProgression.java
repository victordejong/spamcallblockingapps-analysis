package kotlin.ranges;

import kotlin.Metadata;
import kotlin.collections.LongIterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000e\b\u0016\u0018��  2\u00020\u00012\u00020\u0002:\u0001 B!\b��\u0012\u0006\u0010\u001c\u001a\u00020\u0013\u0012\u0006\u0010\u001d\u001a\u00020\u0013\u0012\u0006\u0010\u001a\u001a\u00020\u0013¢\u0006\u0004\b\u001e\u0010\u001fJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0014\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\u0017R\u0019\u0010\u0018\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u0018\u0010\u0015\u001a\u0004\b\u0019\u0010\u0017R\u0019\u0010\u001a\u001a\u00020\u00138\u0006@\u0006¢\u0006\f\n\u0004\b\u001a\u0010\u0015\u001a\u0004\b\u001b\u0010\u0017¨\u0006!"}, d2 = {"Lkotlin/ranges/LongProgression;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/LongIterator;", "iterator", "()Lkotlin/collections/LongIterator;", "", "toString", "()Ljava/lang/String;", "", "first", "J", "getFirst", "()J", "last", "getLast", "step", "getStep", "start", "endInclusive", "<init>", "(JJJ)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/LongProgression.class */
public class LongProgression implements Iterable<Long>, KMappedMarker {

    /* renamed from: f */
    private final long f20804f;

    /* renamed from: g */
    private final long f20805g;

    /* renamed from: h */
    private final long f20806h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ%\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u0001¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\n"}, d2 = {"Lkotlin/ranges/LongProgression$Companion;", "", "rangeStart", "rangeEnd", "step", "Lkotlin/ranges/LongProgression;", "fromClosedRange", "(JJJ)Lkotlin/ranges/LongProgression;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/LongProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    public LongProgression(long j, long j2, long j3) {
        if (j3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (j3 != Long.MIN_VALUE) {
            this.f20804f = j;
            this.f20805g = ProgressionUtilKt.m1897d(j, j2, j3);
            this.f20806h = j3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0040, code lost:
        if (r5.f20806h == r0.f20806h) goto L_0x0043;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r6) {
        /*
            r5 = this;
            r0 = r6
            boolean r0 = r0 instanceof kotlin.ranges.LongProgression
            if (r0 == 0) goto L_0x0049
            r0 = r5
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r6
            kotlin.ranges.LongProgression r0 = (kotlin.ranges.LongProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0043
        L_0x0018:
            r0 = r5
            long r0 = r0.f20804f
            r7 = r0
            r0 = r6
            kotlin.ranges.LongProgression r0 = (kotlin.ranges.LongProgression) r0
            r6 = r0
            r0 = r7
            r1 = r6
            long r1 = r1.f20804f
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
            r0 = r5
            long r0 = r0.f20805g
            r1 = r6
            long r1 = r1.f20805g
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
            r0 = r5
            long r0 = r0.f20806h
            r1 = r6
            long r1 = r1.f20806h
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L_0x0049
        L_0x0043:
            r0 = 1
            r9 = r0
            goto L_0x004c
        L_0x0049:
            r0 = 0
            r9 = r0
        L_0x004c:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.LongProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final long m1728f() {
        return this.f20804f;
    }

    /* renamed from: g */
    public final long m1727g() {
        return this.f20805g;
    }

    @NotNull
    /* renamed from: h */
    public LongIterator iterator() {
        return new LongProgressionIterator(this.f20804f, this.f20805g, this.f20806h);
    }

    public int hashCode() {
        int i;
        if (isEmpty()) {
            i = -1;
        } else {
            long j = 31;
            long j2 = this.f20804f;
            long j3 = this.f20805g;
            long j4 = this.f20806h;
            i = (int) ((j * (((j2 ^ (j2 >>> 32)) * j) + (j3 ^ (j3 >>> 32)))) + (j4 ^ (j4 >>> 32)));
        }
        return i;
    }

    public boolean isEmpty() {
        long j = this.f20806h;
        boolean z = true;
        long j2 = this.f20804f;
        long j3 = this.f20805g;
        if (j <= 0 ? j2 >= j3 : j2 <= j3) {
            z = false;
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [long, java.lang.StringBuilder] */
    /* JADX WARN: Unknown variable types count: 1 */
    @org.jetbrains.annotations.NotNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.f20806h
            r6 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x003b
            r0 = r8
            r0.<init>()
            r0 = r8
            r1 = r5
            long r1 = r1.f20804f
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = ".."
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            long r1 = r1.f20805g
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " step "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            long r0 = r0.f20806h
            r6 = r0
            goto L_0x0065
        L_0x003b:
            r0 = r8
            r0.<init>()
            r0 = r8
            r1 = r5
            long r1 = r1.f20804f
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " downTo "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r5
            long r1 = r1.f20805g
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r1 = " step "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r5
            long r0 = r0.f20806h
            long r0 = -r0
            r6 = r0
        L_0x0065:
            r0 = r8
            r1 = r6
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.LongProgression.toString():java.lang.String");
    }
}
