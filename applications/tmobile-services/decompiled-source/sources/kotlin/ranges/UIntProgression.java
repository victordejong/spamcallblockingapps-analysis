package kotlin.ranges;

import kotlin.ExperimentalUnsignedTypes;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.UInt;
import kotlin.UnsignedKt;
import kotlin.collections.UIntIterator;
import kotlin.internal.UProgressionUtilKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\r\b\u0017\u0018�� \u001f2\u00020\u00012\u00020\u0002:\u0001\u001fB$\b��\u0012\u0006\u0010\u001b\u001a\u00020\u0013\u0012\u0006\u0010\u001c\u001a\u00020\u0013\u0012\u0006\u0010\u0019\u001a\u00020\bø\u0001��¢\u0006\u0004\b\u001d\u0010\u001eJ\u001a\u0010\u0006\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\bH\u0016¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rH\u0096\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0016¢\u0006\u0004\b\u0011\u0010\u0012R\u001f\u0010\u0014\u001a\u00020\u00138\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\u0014\u0010\u0015\u001a\u0004\b\u0016\u0010\nR\u001f\u0010\u0017\u001a\u00020\u00138\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\u0017\u0010\u0015\u001a\u0004\b\u0018\u0010\nR\u0019\u0010\u0019\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u0019\u0010\u0015\u001a\u0004\b\u001a\u0010\nø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006 "}, d2 = {"Lkotlin/ranges/UIntProgression;", "Ljava/lang/Iterable;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "isEmpty", "()Z", "Lkotlin/collections/UIntIterator;", "iterator", "()Lkotlin/collections/UIntIterator;", "", "toString", "()Ljava/lang/String;", "Lkotlin/UInt;", "first", "I", "getFirst-pVg5ArA", "last", "getLast-pVg5ArA", "step", "getStep", "start", "endInclusive", "<init>", "(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntProgression.class */
public class UIntProgression implements Iterable<UInt>, KMappedMarker {

    /* renamed from: f */
    private final int f20811f;

    /* renamed from: g */
    private final int f20812g;

    /* renamed from: h */
    private final int f20813h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ(\u0010\t\u001a\u00020\u00062\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00012\u0006\u0010\u0005\u001a\u00020\u0004ø\u0001��¢\u0006\u0004\b\u0007\u0010\b\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\f"}, d2 = {"Lkotlin/ranges/UIntProgression$Companion;", "Lkotlin/UInt;", "rangeStart", "rangeEnd", "", "step", "Lkotlin/ranges/UIntProgression;", "fromClosedRange-Nkh28Cs", "(III)Lkotlin/ranges/UIntProgression;", "fromClosedRange", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ranges/UIntProgression$Companion.class */
    public static final class Companion {
        private Companion() {
        }
    }

    private UIntProgression(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i3 != Integer.MIN_VALUE) {
            this.f20811f = i;
            this.f20812g = UProgressionUtilKt.m1891d(i, i2, i3);
            this.f20813h = i3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public /* synthetic */ UIntProgression(int i, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(i, i2, i3);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x003d, code lost:
        if (r3.f20813h == r0.f20813h) goto L_0x0040;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(@org.jetbrains.annotations.Nullable java.lang.Object r4) {
        /*
            r3 = this;
            r0 = r4
            boolean r0 = r0 instanceof kotlin.ranges.UIntProgression
            if (r0 == 0) goto L_0x0045
            r0 = r3
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0018
            r0 = r4
            kotlin.ranges.UIntProgression r0 = (kotlin.ranges.UIntProgression) r0
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x0040
        L_0x0018:
            r0 = r3
            int r0 = r0.f20811f
            r5 = r0
            r0 = r4
            kotlin.ranges.UIntProgression r0 = (kotlin.ranges.UIntProgression) r0
            r4 = r0
            r0 = r5
            r1 = r4
            int r1 = r1.f20811f
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f20812g
            r1 = r4
            int r1 = r1.f20812g
            if (r0 != r1) goto L_0x0045
            r0 = r3
            int r0 = r0.f20813h
            r1 = r4
            int r1 = r1.f20813h
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
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ranges.UIntProgression.equals(java.lang.Object):boolean");
    }

    /* renamed from: f */
    public final int m1705f() {
        return this.f20811f;
    }

    /* renamed from: g */
    public final int m1704g() {
        return this.f20812g;
    }

    @NotNull
    /* renamed from: h */
    public UIntIterator iterator() {
        return new UIntProgressionIterator(this.f20811f, this.f20812g, this.f20813h, null);
    }

    public int hashCode() {
        return isEmpty() ? -1 : (((this.f20811f * 31) + this.f20812g) * 31) + this.f20813h;
    }

    public boolean isEmpty() {
        boolean z = true;
        if (this.f20813h <= 0 ? UnsignedKt.m2383a(this.f20811f, this.f20812g) >= 0 : UnsignedKt.m2383a(this.f20811f, this.f20812g) <= 0) {
            z = false;
        }
        return z;
    }

    @NotNull
    public String toString() {
        int i;
        StringBuilder sb;
        if (this.f20813h > 0) {
            sb = new StringBuilder();
            sb.append(UInt.m2441k(this.f20811f));
            sb.append("..");
            sb.append(UInt.m2441k(this.f20812g));
            sb.append(" step ");
            i = this.f20813h;
        } else {
            sb = new StringBuilder();
            sb.append(UInt.m2441k(this.f20811f));
            sb.append(" downTo ");
            sb.append(UInt.m2441k(this.f20812g));
            sb.append(" step ");
            i = -this.f20813h;
        }
        sb.append(i);
        return sb.toString();
    }
}
