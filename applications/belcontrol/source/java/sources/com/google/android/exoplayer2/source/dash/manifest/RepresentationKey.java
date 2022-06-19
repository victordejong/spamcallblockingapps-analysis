package com.google.android.exoplayer2.source.dash.manifest;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/dash/manifest/RepresentationKey.class */
public final class RepresentationKey implements Comparable<RepresentationKey> {
    public final int adaptationSetIndex;
    public final int periodIndex;
    public final int representationIndex;

    public RepresentationKey(int i, int i2, int i3) {
        this.periodIndex = i;
        this.adaptationSetIndex = i2;
        this.representationIndex = i3;
    }

    public int compareTo(RepresentationKey representationKey) {
        int i = this.periodIndex - representationKey.periodIndex;
        int i2 = i;
        if (i == 0) {
            int i3 = this.adaptationSetIndex - representationKey.adaptationSetIndex;
            i2 = i3;
            if (i3 == 0) {
                i2 = this.representationIndex - representationKey.representationIndex;
            }
        }
        return i2;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || RepresentationKey.class != obj.getClass()) {
            return false;
        }
        RepresentationKey representationKey = (RepresentationKey) obj;
        if (this.periodIndex != representationKey.periodIndex || this.adaptationSetIndex != representationKey.adaptationSetIndex || this.representationIndex != representationKey.representationIndex) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (((this.periodIndex * 31) + this.adaptationSetIndex) * 31) + this.representationIndex;
    }

    public String toString() {
        return this.periodIndex + "." + this.adaptationSetIndex + "." + this.representationIndex;
    }
}
