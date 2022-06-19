package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/GeobFrame$a.class */
public class GeobFrame$a implements Parcelable.Creator<GeobFrame> {
    @Override // android.os.Parcelable.Creator
    public GeobFrame createFromParcel(Parcel parcel) {
        return new GeobFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public GeobFrame[] newArray(int i) {
        return new GeobFrame[i];
    }
}
