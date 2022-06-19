package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/MlltFrame$a.class */
public class MlltFrame$a implements Parcelable.Creator<MlltFrame> {
    @Override // android.os.Parcelable.Creator
    public MlltFrame createFromParcel(Parcel parcel) {
        return new MlltFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public MlltFrame[] newArray(int i) {
        return new MlltFrame[i];
    }
}
