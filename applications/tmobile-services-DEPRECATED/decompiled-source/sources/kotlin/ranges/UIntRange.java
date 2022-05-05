package kotlin.ranges;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��2\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\n\b\u0007\u0018�� \u001b2\u00020\u00012\u00020\u0002:\u0001\u001bB\u001a\u0012\u0006\u0010\u0018\u001a\u00020\u0003\u0012\u0006\u0010\u0016\u001a\u00020\u0003ø\u0001��¢\u0006\u0004\b\u0019\u0010\u001aJ\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\u000b\u001a\u00020\u00052\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0096\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u000f\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u000fR\u001c\u0010\u0018\u001a\u00020\u00038V@\u0016X\u0096\u0004ø\u0001��ø\u0001\u0001¢\u0006\u0006\u001a\u0004\b\u0017\u0010\u000fø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001c"}, d2 = {"Lkotlin/ranges/UIntRange;", "Lkotlin/ranges/ClosedRange;", "Lkotlin/ranges/UIntProgression;", "Lkotlin/UInt;", FirebaseAnalytics.Param.VALUE, "", "contains-WZ4Q5Ns", "(I)Z", "contains", "", "other", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "", "toString", "()Ljava/lang/String;", "getEndInclusive-pVg5ArA", "endInclusive", "getStart-pVg5ArA", "start", "<init>", "(IILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntRange.class */
public final class UIntRange extends UIntProgression implements ClosedRange<UInt> {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0006\u0010\u0007R\u0019\u0010\u0002\u001a\u00020\u00018\u0006@\u0006¢\u0006\f\n\u0004\b\u0002\u0010\u0003\u001a\u0004\b\u0004\u0010\u0005¨\u0006\b"}, d2 = {"Lkotlin/ranges/UIntRange$Companion;", "Lkotlin/ranges/UIntRange;", "EMPTY", "Lkotlin/ranges/UIntRange;", "getEMPTY", "()Lkotlin/ranges/UIntRange;", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntRange$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    static {
        new UIntRange(-1, 0, null);
    }

    private UIntRange(int i, int i2) {
        super(i, i2, 1, null);
    }

    public /* synthetic */ UIntRange(int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2);
    }

    @Override // kotlin.ranges.ClosedRange
    /* renamed from: c */
    public /* bridge */ /* synthetic */ UInt mo1695c() {
        return UInt.m2447a(m1700k());
    }

    @Override // kotlin.ranges.ClosedRange
    /* renamed from: e */
    public /* bridge */ /* synthetic */ UInt mo1694e() {
        return UInt.m2447a(m1701j());
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0032, code lost:
        if (m1704g() == r0.m1704g()) goto L_0x0035;
     */
    @Override // kotlin.ranges.UIntProgression
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.UIntRange
            if (r0 == 0) goto L_0x003a
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.UIntRange r0 = (kotlin.ranges.UIntRange) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0035
        L_0x0018:
            r0 = r3
            int r0 = r0.m1705f()
            r5 = r0
            r0 = r4
            kotlin.ranges.UIntRange r0 = (kotlin.ranges.UIntRange) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.m1705f()
            if (r0 != r1) goto L_0x003a
            r0 = r3
            int r0 = r0.m1704g()
            r1 = r4
            int r1 = r1.m1704g()
            if (r0 != r1) goto L_0x003a
        L_0x0035:
            r0 = 1
            r6 = r0
            goto L_0x003c
        L_0x003a:
            r0 = 0
            r6 = r0
        L_0x003c:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.UIntRange.equals(java.lang.Object):boolean");
    }

    @Override // kotlin.ranges.UIntProgression
    public int hashCode() {
        return isEmpty() ? -1 : (m1705f() * 31) + m1704g();
    }

    @Override // kotlin.ranges.UIntProgression
    public boolean isEmpty() {
        return UnsignedKt.m2383a(m1705f(), m1704g()) > 0;
    }

    /* renamed from: j */
    public int m1701j() {
        return m1704g();
    }

    /* renamed from: k */
    public int m1700k() {
        return m1705f();
    }

    @Override // kotlin.ranges.UIntProgression
    @NotNull
    public String toString() {
        return UInt.m2441k(m1705f()) + ".." + UInt.m2441k(m1704g());
    }
}
