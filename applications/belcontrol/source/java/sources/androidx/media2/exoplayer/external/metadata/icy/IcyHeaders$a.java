package androidx.media2.exoplayer.external.metadata.icy;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/icy/IcyHeaders$a.class */
public class IcyHeaders$a implements Parcelable.Creator<IcyHeaders> {
    /* renamed from: a */
    public IcyHeaders createFromParcel(Parcel parcel) {
        return new IcyHeaders(parcel);
    }

    /* renamed from: b */
    public IcyHeaders[] newArray(int i) {
        return new IcyHeaders[i];
    }
}
