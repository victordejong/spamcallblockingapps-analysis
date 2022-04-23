package androidx.media2.exoplayer.external.metadata.id3;

import androidx.media2.exoplayer.external.metadata.Metadata;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: a */
    public final String f1785a;

    public Id3Frame(String str) {
        this.f1785a = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f1785a;
    }
}
