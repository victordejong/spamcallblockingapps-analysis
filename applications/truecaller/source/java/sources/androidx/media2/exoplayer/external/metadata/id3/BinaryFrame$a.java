package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/BinaryFrame$a.class */
public class BinaryFrame$a implements Parcelable.Creator<BinaryFrame> {
    @Override // android.os.Parcelable.Creator
    public BinaryFrame createFromParcel(Parcel parcel) {
        return new BinaryFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public BinaryFrame[] newArray(int i) {
        return new BinaryFrame[i];
    }
}
