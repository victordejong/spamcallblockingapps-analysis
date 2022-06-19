package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ApicFrame$a.class */
public class ApicFrame$a implements Parcelable.Creator<ApicFrame> {
    @Override // android.os.Parcelable.Creator
    public ApicFrame createFromParcel(Parcel parcel) {
        return new ApicFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ApicFrame[] newArray(int i) {
        return new ApicFrame[i];
    }
}
