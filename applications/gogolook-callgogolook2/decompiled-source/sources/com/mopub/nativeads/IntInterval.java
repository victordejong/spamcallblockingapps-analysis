package com.mopub.nativeads;

import androidx.annotation.Nullable;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/IntInterval.class */
public class IntInterval implements Comparable<IntInterval> {

    /* renamed from: a */
    public int f9112a;

    /* renamed from: b */
    public int f9113b;

    public IntInterval(int i, int i2) {
        this.f9112a = i;
        this.f9113b = i2;
    }

    public int compareTo(@Nullable IntInterval intInterval) {
        int i = this.f9112a;
        int i2 = intInterval.f9112a;
        return i == i2 ? this.f9113b - intInterval.f9113b : i - i2;
    }

    public boolean equals(int i, int i2) {
        return this.f9112a == i && this.f9113b == i2;
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
        if (!(this.f9112a == intInterval.f9112a && this.f9113b == intInterval.f9113b)) {
            z = false;
        }
        return z;
    }

    public int getLength() {
        return this.f9113b;
    }

    public int getStart() {
        return this.f9112a;
    }

    public int hashCode() {
        return ((899 + this.f9112a) * 31) + this.f9113b;
    }

    public void setLength(int i) {
        this.f9113b = i;
    }

    public void setStart(int i) {
        this.f9112a = i;
    }

    public String toString() {
        return "{start : " + this.f9112a + ", length : " + this.f9113b + CssParser.BLOCK_END;
    }
}
