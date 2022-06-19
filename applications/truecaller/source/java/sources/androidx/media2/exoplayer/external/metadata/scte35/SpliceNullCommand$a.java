package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceNullCommand$a.class */
public class SpliceNullCommand$a implements Parcelable.Creator<SpliceNullCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceNullCommand createFromParcel(Parcel parcel) {
        return new SpliceNullCommand();
    }

    @Override // android.os.Parcelable.Creator
    public SpliceNullCommand[] newArray(int i) {
        return new SpliceNullCommand[i];
    }
}
