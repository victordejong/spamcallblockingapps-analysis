package androidx.media2.exoplayer.external.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.util.ac;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: androidx.media2.exoplayer.external.metadata.Metadata.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    };
    private final Entry[] entries;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
        byte[] getWrappedMetadataBytes();

        Format getWrappedMetadataFormat();
    }

    Metadata(Parcel parcel) {
        this.entries = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.entries;
            if (i < entryArr.length) {
                entryArr[i] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public Metadata(List<? extends Entry> list) {
        if (list != null) {
            Entry[] entryArr = new Entry[list.size()];
            this.entries = entryArr;
            list.toArray(entryArr);
            return;
        }
        this.entries = new Entry[0];
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr == null ? new Entry[0] : entryArr;
    }

    public final Metadata copyWithAppendedEntries(Entry... entryArr) {
        Entry[] entryArr2 = this.entries;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.entries.length, entryArr.length);
        return new Metadata((Entry[]) ac.a((Object[]) entryArr3));
    }

    public final Metadata copyWithAppendedEntriesFrom(Metadata metadata) {
        return metadata == null ? this : copyWithAppendedEntries(metadata.entries);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.entries, ((Metadata) obj).entries);
    }

    public final Entry get(int i) {
        return this.entries[i];
    }

    public final int hashCode() {
        return Arrays.hashCode(this.entries);
    }

    public final int length() {
        return this.entries.length;
    }

    public final String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.entries));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
