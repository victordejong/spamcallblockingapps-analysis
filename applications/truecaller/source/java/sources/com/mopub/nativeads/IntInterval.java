package com.mopub.nativeads;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a */
    public int f9048a;

    /* renamed from: b */
    public int f9049b;

    public IntInterval(int i, int i2) {
        this.f9048a = i;
        this.f9049b = i2;
    }

    public int compareTo(IntInterval intInterval) {
        int i = this.f9048a;
        int i2 = intInterval.f9048a;
        return i == i2 ? this.f9049b - intInterval.f9049b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f9048a == i && this.f9049b == i2;
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
        if (this.f9048a != intInterval.f9048a || this.f9049b != intInterval.f9049b) {
            z = false;
        }
        return z;
    }

    public int getLength() {
        return this.f9049b;
    }

    public int getStart() {
        return this.f9048a;
    }

    public int hashCode() {
        return ((899 + this.f9048a) * 31) + this.f9049b;
    }

    public void setLength(int i) {
        this.f9049b = i;
    }

    public void setStart(int i) {
        this.f9048a = i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("{start : ");
        m8728C.append(this.f9048a);
        m8728C.append(", length : ");
        return C22128a.m8697J2(m8728C, this.f9049b, "}");
    }
}
