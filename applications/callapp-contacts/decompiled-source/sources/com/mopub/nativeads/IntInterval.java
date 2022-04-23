package com.mopub.nativeads;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a  reason: collision with root package name */
    private int f34550a;

    /* renamed from: b  reason: collision with root package name */
    private int f34551b;

    public IntInterval(int i, int i2) {
        this.f34550a = i;
        this.f34551b = i2;
    }

    public int compareTo(IntInterval intInterval) {
        int i = this.f34550a;
        int i2 = intInterval.f34550a;
        return i == i2 ? this.f34551b - intInterval.f34551b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f34550a == i && this.f34551b == i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntInterval)) {
            return false;
        }
        IntInterval intInterval = (IntInterval) obj;
        return this.f34550a == intInterval.f34550a && this.f34551b == intInterval.f34551b;
    }

    public int getLength() {
        return this.f34551b;
    }

    public int getStart() {
        return this.f34550a;
    }

    public int hashCode() {
        return ((this.f34550a + 899) * 31) + this.f34551b;
    }

    public void setLength(int i) {
        this.f34551b = i;
    }

    public void setStart(int i) {
        this.f34550a = i;
    }

    public String toString() {
        return "{start : " + this.f34550a + ", length : " + this.f34551b + "}";
    }
}
