package com.mopub.nativeads;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a */
    public int f5146a;

    /* renamed from: b */
    public int f5147b;

    public IntInterval(int i, int i2) {
        this.f5146a = i;
        this.f5147b = i2;
    }

    public int compareTo(IntInterval intInterval) {
        int i = this.f5146a;
        int i2 = intInterval.f5146a;
        return i == i2 ? this.f5147b - intInterval.f5147b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f5146a == i && this.f5147b == i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof IntInterval)) {
            return false;
        }
        IntInterval intInterval = (IntInterval) obj;
        if (this.f5146a != intInterval.f5146a || this.f5147b != intInterval.f5147b) {
            z = false;
        }
        return z;
    }

    public int getLength() {
        return this.f5147b;
    }

    public int getStart() {
        return this.f5146a;
    }

    public int hashCode() {
        return ((899 + this.f5146a) * 31) + this.f5147b;
    }

    public void setLength(int i) {
        this.f5147b = i;
    }

    public void setStart(int i) {
        this.f5146a = i;
    }

    public String toString() {
        return "{start : " + this.f5146a + ", length : " + this.f5147b + "}";
    }
}
