package com.github.mikephil.charting.highlight;
/* loaded from: classes-dex2jar.jar:com/github/mikephil/charting/highlight/Range.class */
public final class Range {
    public float from;

    /* renamed from: to */
    public float f149to;

    public Range(float f, float f2) {
        this.from = f;
        this.f149to = f2;
    }

    public boolean contains(float f) {
        return f > this.from && f <= this.f149to;
    }

    public boolean isLarger(float f) {
        return f > this.f149to;
    }

    public boolean isSmaller(float f) {
        return f < this.from;
    }
}
