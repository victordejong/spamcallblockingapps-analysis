package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/InternalFrame$a.class */
public class InternalFrame$a implements Parcelable.Creator<InternalFrame> {
    /* renamed from: a */
    public InternalFrame createFromParcel(Parcel parcel) {
        return new InternalFrame(parcel);
    }

    /* renamed from: b */
    public InternalFrame[] newArray(int i) {
        return new InternalFrame[i];
    }
}
