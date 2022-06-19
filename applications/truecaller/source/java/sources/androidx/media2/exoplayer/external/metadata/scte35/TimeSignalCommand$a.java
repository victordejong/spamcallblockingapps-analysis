package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/TimeSignalCommand$a.class */
public class TimeSignalCommand$a implements Parcelable.Creator<TimeSignalCommand> {
    @Override // android.os.Parcelable.Creator
    public TimeSignalCommand createFromParcel(Parcel parcel) {
        return new TimeSignalCommand(parcel.readLong(), parcel.readLong(), (TimeSignalCommand$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public TimeSignalCommand[] newArray(int i) {
        return new TimeSignalCommand[i];
    }
}
