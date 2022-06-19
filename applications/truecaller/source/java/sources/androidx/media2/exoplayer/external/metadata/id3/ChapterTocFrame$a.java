package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$a.class */
public class ChapterTocFrame$a implements Parcelable.Creator<ChapterTocFrame> {
    @Override // android.os.Parcelable.Creator
    public ChapterTocFrame createFromParcel(Parcel parcel) {
        return new ChapterTocFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public ChapterTocFrame[] newArray(int i) {
        return new ChapterTocFrame[i];
    }
}
