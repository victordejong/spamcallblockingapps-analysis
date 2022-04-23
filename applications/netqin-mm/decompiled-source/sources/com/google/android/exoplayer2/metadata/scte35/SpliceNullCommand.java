package com.google.android.exoplayer2.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceNullCommand.class */
public final class SpliceNullCommand extends SpliceCommand {
    public static final Parcelable.Creator<SpliceNullCommand> CREATOR = new C7160a();

    /* renamed from: com.google.android.exoplayer2.metadata.scte35.SpliceNullCommand$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/scte35/SpliceNullCommand$a.class */
    public static final class C7160a implements Parcelable.Creator<SpliceNullCommand> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceNullCommand createFromParcel(Parcel parcel) {
            return new SpliceNullCommand();
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public SpliceNullCommand[] newArray(int i) {
            return new SpliceNullCommand[i];
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
    }
}
