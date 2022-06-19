package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/CommentFrame$a.class */
public class CommentFrame$a implements Parcelable.Creator<CommentFrame> {
    @Override // android.os.Parcelable.Creator
    public CommentFrame createFromParcel(Parcel parcel) {
        return new CommentFrame(parcel);
    }

    @Override // android.os.Parcelable.Creator
    public CommentFrame[] newArray(int i) {
        return new CommentFrame[i];
    }
}
