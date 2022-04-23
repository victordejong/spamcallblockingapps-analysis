package androidx.media2.exoplayer.external.metadata.scte35;

import androidx.media2.exoplayer.external.metadata.Metadata;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/scte35/SpliceCommand.class */
public abstract class SpliceCommand implements Metadata.Entry {
    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        String valueOf = String.valueOf(getClass().getSimpleName());
        return valueOf.length() != 0 ? "SCTE-35 splice command: type=".concat(valueOf) : new String("SCTE-35 splice command: type=");
    }
}
