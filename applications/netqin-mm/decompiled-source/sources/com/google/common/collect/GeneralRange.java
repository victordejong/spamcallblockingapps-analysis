package com.google.common.collect;

import java.io.Serializable;
import java.util.Comparator;
import p131c.p161d.p266c.p267a.C4928k;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/GeneralRange.class */
public final class GeneralRange<T> implements Serializable {
    public final Comparator<? super T> comparator;
    public final boolean hasLowerBound;
    public final boolean hasUpperBound;
    public final BoundType lowerBoundType;
    public final T lowerEndpoint;
    public transient GeneralRange<T> reverse;
    public final BoundType upperBoundType;
    public final T upperEndpoint;

    /* JADX WARN: Multi-variable type inference failed */
    public GeneralRange(Comparator<? super T> comparator, boolean z, T t, BoundType boundType, boolean z2, T t2, BoundType boundType2) {
        C4933n.m24795a(comparator);
        this.comparator = comparator;
        this.hasLowerBound = z;
        this.hasUpperBound = z2;
        this.lowerEndpoint = t;
        C4933n.m24795a(boundType);
        this.lowerBoundType = boundType;
        this.upperEndpoint = t2;
        C4933n.m24795a(boundType2);
        this.upperBoundType = boundType2;
        if (z) {
            comparator.compare(t, t);
        }
        if (z2) {
            comparator.compare(t2, t2);
        }
        if (z && z2) {
            int compare = comparator.compare(t, t2);
            boolean z3 = true;
            C4933n.m24781a(compare <= 0, "lowerEndpoint (%s) > upperEndpoint (%s)", t, t2);
            if (compare == 0) {
                C4933n.m24791a((boundType != BoundType.OPEN) | (boundType2 == BoundType.OPEN ? false : z3));
            }
        }
    }

    public static <T> GeneralRange<T> all(Comparator<? super T> comparator) {
        BoundType boundType = BoundType.OPEN;
        return new GeneralRange<>(comparator, false, null, boundType, false, null, boundType);
    }

    public static <T> GeneralRange<T> downTo(Comparator<? super T> comparator, T t, BoundType boundType) {
        return new GeneralRange<>(comparator, true, t, boundType, false, null, BoundType.OPEN);
    }

    public static <T extends Comparable> GeneralRange<T> from(Range<T> range) {
        T t = null;
        T lowerEndpoint = range.hasLowerBound() ? range.lowerEndpoint() : null;
        BoundType lowerBoundType = range.hasLowerBound() ? range.lowerBoundType() : BoundType.OPEN;
        if (range.hasUpperBound()) {
            t = range.upperEndpoint();
        }
        return new GeneralRange<>(Ordering.natural(), range.hasLowerBound(), lowerEndpoint, lowerBoundType, range.hasUpperBound(), t, range.hasUpperBound() ? range.upperBoundType() : BoundType.OPEN);
    }

    public static <T> GeneralRange<T> range(Comparator<? super T> comparator, T t, BoundType boundType, T t2, BoundType boundType2) {
        return new GeneralRange<>(comparator, true, t, boundType, true, t2, boundType2);
    }

    public static <T> GeneralRange<T> upTo(Comparator<? super T> comparator, T t, BoundType boundType) {
        return new GeneralRange<>(comparator, false, null, BoundType.OPEN, true, t, boundType);
    }

    public Comparator<? super T> comparator() {
        return this.comparator;
    }

    public boolean contains(T t) {
        return !tooLow(t) && !tooHigh(t);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof GeneralRange) {
            GeneralRange generalRange = (GeneralRange) obj;
            z = false;
            if (this.comparator.equals(generalRange.comparator)) {
                z = false;
                if (this.hasLowerBound == generalRange.hasLowerBound) {
                    z = false;
                    if (this.hasUpperBound == generalRange.hasUpperBound) {
                        z = false;
                        if (getLowerBoundType().equals(generalRange.getLowerBoundType())) {
                            z = false;
                            if (getUpperBoundType().equals(generalRange.getUpperBoundType())) {
                                z = false;
                                if (C4928k.m24808a(getLowerEndpoint(), generalRange.getLowerEndpoint())) {
                                    z = false;
                                    if (C4928k.m24808a(getUpperEndpoint(), generalRange.getUpperEndpoint())) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        return z;
    }

    public BoundType getLowerBoundType() {
        return this.lowerBoundType;
    }

    public T getLowerEndpoint() {
        return this.lowerEndpoint;
    }

    public BoundType getUpperBoundType() {
        return this.upperBoundType;
    }

    public T getUpperEndpoint() {
        return this.upperEndpoint;
    }

    public boolean hasLowerBound() {
        return this.hasLowerBound;
    }

    public boolean hasUpperBound() {
        return this.hasUpperBound;
    }

    public int hashCode() {
        return C4928k.m24807a(this.comparator, getLowerEndpoint(), getLowerBoundType(), getUpperEndpoint(), getUpperBoundType());
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x008a, code lost:
        if (r11.getLowerBoundType() == com.google.common.collect.BoundType.OPEN) goto L_0x008d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0111, code lost:
        if (r11.getUpperBoundType() == com.google.common.collect.BoundType.OPEN) goto L_0x0114;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.common.collect.GeneralRange<T> intersect(com.google.common.collect.GeneralRange<T> r11) {
        /*
            Method dump skipped, instructions count: 379
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.collect.GeneralRange.intersect(com.google.common.collect.GeneralRange):com.google.common.collect.GeneralRange");
    }

    public boolean isEmpty() {
        return (hasUpperBound() && tooLow(getUpperEndpoint())) || (hasLowerBound() && tooHigh(getLowerEndpoint()));
    }

    public GeneralRange<T> reverse() {
        GeneralRange<T> generalRange = this.reverse;
        GeneralRange<T> generalRange2 = generalRange;
        if (generalRange == null) {
            generalRange2 = new GeneralRange<>(Ordering.from(this.comparator).reverse(), this.hasUpperBound, getUpperEndpoint(), getUpperBoundType(), this.hasLowerBound, getLowerEndpoint(), getLowerBoundType());
            generalRange2.reverse = this;
            this.reverse = generalRange2;
        }
        return generalRange2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.comparator);
        sb.append(":");
        sb.append(this.lowerBoundType == BoundType.CLOSED ? '[' : '(');
        sb.append(this.hasLowerBound ? this.lowerEndpoint : "-∞");
        sb.append(',');
        sb.append(this.hasUpperBound ? this.upperEndpoint : "∞");
        sb.append(this.upperBoundType == BoundType.CLOSED ? ']' : ')');
        return sb.toString();
    }

    public boolean tooHigh(T t) {
        boolean z = false;
        if (!hasUpperBound()) {
            return false;
        }
        int compare = this.comparator.compare(t, getUpperEndpoint());
        boolean z2 = compare > 0;
        boolean z3 = compare == 0;
        if (getUpperBoundType() == BoundType.OPEN) {
            z = true;
        }
        return (z3 & z) | z2;
    }

    public boolean tooLow(T t) {
        boolean z = false;
        if (!hasLowerBound()) {
            return false;
        }
        int compare = this.comparator.compare(t, getLowerEndpoint());
        boolean z2 = compare < 0;
        boolean z3 = compare == 0;
        if (getLowerBoundType() == BoundType.OPEN) {
            z = true;
        }
        return (z3 & z) | z2;
    }
}
