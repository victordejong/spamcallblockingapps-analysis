package androidx.media2.player.exoplayer;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes-dex2jar.jar:androidx/media2/player/exoplayer/ByteArrayFrame$a.class */
public final class ByteArrayFrame$a implements Parcelable.Creator<ByteArrayFrame> {
    /* renamed from: a */
    public ByteArrayFrame createFromParcel(Parcel parcel) {
        return new ByteArrayFrame(parcel);
    }

    /* renamed from: b */
    public ByteArrayFrame[] newArray(int i) {
        return new ByteArrayFrame[i];
    }
}
