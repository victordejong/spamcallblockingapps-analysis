package androidx.media2.exoplayer.external.metadata.scte35;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/PrivateCommand$a.class */
public class PrivateCommand$a implements Parcelable.Creator<PrivateCommand> {
    @Override // android.os.Parcelable.Creator
    public PrivateCommand createFromParcel(Parcel parcel) {
        return new PrivateCommand(parcel, (PrivateCommand$a) null);
    }

    @Override // android.os.Parcelable.Creator
    public PrivateCommand[] newArray(int i) {
        return new PrivateCommand[i];
    }
}
