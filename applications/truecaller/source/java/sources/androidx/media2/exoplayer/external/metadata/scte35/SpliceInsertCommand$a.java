package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceInsertCommand$a.class */
public class SpliceInsertCommand$a implements Parcelable.Creator<SpliceInsertCommand> {
    @Override // android.os.Parcelable.Creator
    public SpliceInsertCommand createFromParcel(Parcel parcel) {
        return new SpliceInsertCommand(parcel, (SpliceInsertCommand$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public SpliceInsertCommand[] newArray(int i) {
        return new SpliceInsertCommand[i];
    }
}
