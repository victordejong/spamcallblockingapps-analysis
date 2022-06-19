package androidx.media2.exoplayer.external.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$a.class */
public class HlsTrackMetadataEntry$a implements Parcelable.Creator<HlsTrackMetadataEntry> {
    /* renamed from: a */
    public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
        return new HlsTrackMetadataEntry(parcel);
    }

    /* renamed from: b */
    public HlsTrackMetadataEntry[] newArray(int i) {
        return new HlsTrackMetadataEntry[i];
    }
}
