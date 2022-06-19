package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/UrlLinkFrame$a.class */
public class UrlLinkFrame$a implements Parcelable.Creator<UrlLinkFrame> {
    @Override // android.os.Parcelable.Creator
    public UrlLinkFrame createFromParcel(Parcel parcel) {
        return new UrlLinkFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public UrlLinkFrame[] newArray(int i) {
        return new UrlLinkFrame[i];
    }
}
