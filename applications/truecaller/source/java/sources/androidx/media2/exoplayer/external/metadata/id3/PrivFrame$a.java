package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/PrivFrame$a.class */
public class PrivFrame$a implements Parcelable.Creator<PrivFrame> {
    @Override // android.os.Parcelable.Creator
    public PrivFrame createFromParcel(Parcel parcel) {
        return new PrivFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public PrivFrame[] newArray(int i) {
        return new PrivFrame[i];
    }
}
