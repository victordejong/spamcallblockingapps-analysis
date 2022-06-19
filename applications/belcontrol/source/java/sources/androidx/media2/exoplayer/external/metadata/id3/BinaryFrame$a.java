package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/BinaryFrame$a.class */
public class BinaryFrame$a implements Parcelable.Creator<BinaryFrame> {
    /* renamed from: a */
    public BinaryFrame createFromParcel(Parcel parcel) {
        return new BinaryFrame(parcel);
    }

    /* renamed from: b */
    public BinaryFrame[] newArray(int i) {
        return new BinaryFrame[i];
    }
}
