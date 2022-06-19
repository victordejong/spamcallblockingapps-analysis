package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceScheduleCommand$a.class */
public class SpliceScheduleCommand$a implements Parcelable.Creator<SpliceScheduleCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceScheduleCommand createFromParcel(Parcel parcel) {
        return new SpliceScheduleCommand(parcel, (SpliceScheduleCommand$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public SpliceScheduleCommand[] newArray(int i) {
        return new SpliceScheduleCommand[i];
    }
}
