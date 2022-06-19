package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/TextInformationFrame$a.class */
public class TextInformationFrame$a implements Parcelable.Creator<TextInformationFrame> {
    @Override // android.os.Parcelable.Creator
    public TextInformationFrame createFromParcel(Parcel parcel) {
        return new TextInformationFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public TextInformationFrame[] newArray(int i) {
        return new TextInformationFrame[i];
    }
}
