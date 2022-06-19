package androidx.media2.exoplayer.external.metadata.id3;

import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: id */
    public final String f6686id;

    public Id3Frame(String str) {
        this.f6686id = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public Format getWrappedMetadataFormat() {
        return null;
    }

    public String toString() {
        return this.f6686id;
    }
}
