package androidx.media2.exoplayer.external.metadata.id3;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a */
    public final String f1018a;

    public Id3Frame(String str) {
        this.f1018a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        return null;
    }

    public String toString() {
        return this.f1018a;
    }
}
