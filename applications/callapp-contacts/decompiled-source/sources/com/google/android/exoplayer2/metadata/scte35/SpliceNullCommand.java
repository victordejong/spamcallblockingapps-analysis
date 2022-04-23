package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceNullCommand.class */
public final class SpliceNullCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceNullCommand> CREATOR = new Parcelable.Creator<SpliceNullCommand>() { // from class: com.google.android.exoplayer2.metadata.scte35.SpliceNullCommand.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ SpliceNullCommand createFromParcel(Parcel parcel) {
            return new SpliceNullCommand();
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ SpliceNullCommand[] newArray(int i) {
            return new SpliceNullCommand[i];
        }
    };

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
    }
}
