package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterFrame$a.class */
public class ChapterFrame$a implements Parcelable.Creator<ChapterFrame> {
    @Override // android.os.Parcelable.Creator
    public ChapterFrame createFromParcel(Parcel parcel) {
        return new ChapterFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ChapterFrame[] newArray(int i) {
        return new ChapterFrame[i];
    }
}
