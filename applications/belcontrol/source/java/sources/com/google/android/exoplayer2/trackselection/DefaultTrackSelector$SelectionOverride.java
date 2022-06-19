package com.google.android.exoplayer2.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/trackselection/DefaultTrackSelector$SelectionOverride.class */
public final class DefaultTrackSelector$SelectionOverride implements Parcelable {
    public static final Parcelable.Creator<DefaultTrackSelector$SelectionOverride> CREATOR = new Parcelable.Creator<DefaultTrackSelector$SelectionOverride>() { // from class: com.google.android.exoplayer2.trackselection.DefaultTrackSelector$SelectionOverride.1
        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$SelectionOverride createFromParcel(Parcel parcel) {
            return new DefaultTrackSelector$SelectionOverride(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public DefaultTrackSelector$SelectionOverride[] newArray(int i) {
            return new DefaultTrackSelector$SelectionOverride[i];
        }
    };
    public final int groupIndex;
    public final int length;
    public final int[] tracks;

    public DefaultTrackSelector$SelectionOverride(int i, int... iArr) {
        this.groupIndex = i;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.tracks = copyOf;
        this.length = iArr.length;
        Arrays.sort(copyOf);
    }

    public DefaultTrackSelector$SelectionOverride(Parcel parcel) {
        this.groupIndex = parcel.readInt();
        int readByte = parcel.readByte();
        this.length = readByte;
        int[] iArr = new int[readByte];
        this.tracks = iArr;
        parcel.readIntArray(iArr);
    }

    public boolean containsTrack(int i) {
        for (int i2 : this.tracks) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || DefaultTrackSelector$SelectionOverride.class != obj.getClass()) {
            return false;
        }
        DefaultTrackSelector$SelectionOverride defaultTrackSelector$SelectionOverride = (DefaultTrackSelector$SelectionOverride) obj;
        if (this.groupIndex != defaultTrackSelector$SelectionOverride.groupIndex || !Arrays.equals(this.tracks, defaultTrackSelector$SelectionOverride.tracks)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return (this.groupIndex * 31) + Arrays.hashCode(this.tracks);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.groupIndex);
        parcel.writeInt(this.tracks.length);
        parcel.writeIntArray(this.tracks);
    }
}
