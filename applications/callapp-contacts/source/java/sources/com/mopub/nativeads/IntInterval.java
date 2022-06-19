package com.mopub.nativeads;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a */
    private int f59963a;

    /* renamed from: b */
    private int f59964b;

    public IntInterval(int i, int i2) {
        this.f59963a = i;
        this.f59964b = i2;
    }

    public int compareTo(IntInterval intInterval) {
        int i = this.f59963a;
        int i2 = intInterval.f59963a;
        return i == i2 ? this.f59964b - intInterval.f59964b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f59963a == i && this.f59964b == i2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntInterval)) {
            return false;
        }
        IntInterval intInterval = (IntInterval) obj;
        return this.f59963a == intInterval.f59963a && this.f59964b == intInterval.f59964b;
    }

    public int getLength() {
        return this.f59964b;
    }

    public int getStart() {
        return this.f59963a;
    }

    public int hashCode() {
        return ((this.f59963a + 899) * 31) + this.f59964b;
    }

    public void setLength(int i) {
        this.f59964b = i;
    }

    public void setStart(int i) {
        this.f59963a = i;
    }

    public String toString() {
        return "{start : " + this.f59963a + ", length : " + this.f59964b + "}";
    }
}
