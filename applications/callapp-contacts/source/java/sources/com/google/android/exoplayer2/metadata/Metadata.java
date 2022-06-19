package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new Parcelable.Creator<Metadata>() { // from class: com.google.android.exoplayer2.metadata.Metadata.1
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

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {

        /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$Entry$_CC.class */
        public final /* synthetic */ class _CC {
            public static byte[] $default$getWrappedMetadataBytes(Entry entry) {
                return null;
            }

            public static Format $default$getWrappedMetadataFormat(Entry entry) {
                return null;
            }
        }

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
        this.entries = (Entry[]) list.toArray(new Entry[0]);
    }

    public Metadata(Entry... entryArr) {
        this.entries = entryArr;
    }

    public final Metadata copyWithAppendedEntries(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) C11599af.m19953a((Object[]) this.entries, (Object[]) entryArr));
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
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.entries, ((Metadata) obj).entries);
        }
        return false;
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
        return "entries=" + Arrays.toString(this.entries);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.entries.length);
        for (Entry entry : this.entries) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
