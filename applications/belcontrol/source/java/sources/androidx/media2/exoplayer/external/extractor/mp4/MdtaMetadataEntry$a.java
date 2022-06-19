package androidx.media2.exoplayer.external.extractor.mp4;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/mp4/MdtaMetadataEntry$a.class */
public class MdtaMetadataEntry$a implements Parcelable.Creator<MdtaMetadataEntry> {
    /* renamed from: a */
    public MdtaMetadataEntry createFromParcel(Parcel parcel) {
        return new MdtaMetadataEntry(parcel, (MdtaMetadataEntry$a) null);
    }

    /* renamed from: b */
    public MdtaMetadataEntry[] newArray(int i) {
        return new MdtaMetadataEntry[i];
    }
}
