package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/InternalFrame$a.class */
public class InternalFrame$a implements Parcelable.Creator<InternalFrame> {
    @Override // android.os.Parcelable.Creator
    public InternalFrame createFromParcel(Parcel parcel) {
        return new InternalFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public InternalFrame[] newArray(int i) {
        return new InternalFrame[i];
    }
}
