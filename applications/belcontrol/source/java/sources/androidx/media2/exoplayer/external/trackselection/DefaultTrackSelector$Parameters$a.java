package androidx.media2.exoplayer.external.trackselection;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.trackselection.DefaultTrackSelector;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/DefaultTrackSelector$Parameters$a.class */
public class DefaultTrackSelector$Parameters$a implements Parcelable.Creator<DefaultTrackSelector.Parameters> {
    /* renamed from: a */
    public DefaultTrackSelector.Parameters createFromParcel(Parcel parcel) {
        return new DefaultTrackSelector.Parameters(parcel);
    }

    /* renamed from: b */
    public DefaultTrackSelector.Parameters[] newArray(int i) {
        return new DefaultTrackSelector.Parameters[i];
    }
}
