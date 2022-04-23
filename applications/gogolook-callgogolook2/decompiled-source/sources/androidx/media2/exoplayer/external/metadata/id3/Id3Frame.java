package androidx.media2.exoplayer.external.metadata.id3;

import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.metadata.Metadata;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/Id3Frame.class */
public abstract class Id3Frame implements Metadata.Entry {

    /* renamed from: id */
    public final String f92id;

    public Id3Frame(String str) {
        this.f92id = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public String toString() {
        return this.f92id;
    }
}
