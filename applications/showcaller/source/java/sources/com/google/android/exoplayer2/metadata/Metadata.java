package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.C5515h0;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C5119a();

    /* renamed from: d */
    private final Entry[] f16085d;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
        /* renamed from: h0 */
        byte[] mo20092h0();

        /* renamed from: y */
        Format mo20091y();
    }

    /* renamed from: com.google.android.exoplayer2.metadata.Metadata$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$a.class */
    static final class C5119a implements Parcelable.Creator<Metadata> {
        C5119a() {
        }

        /* renamed from: a */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        /* renamed from: b */
        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    }

    Metadata(Parcel parcel) {
        this.f16085d = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f16085d;
            if (i < entryArr.length) {
                entryArr[i] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public Metadata(List<? extends Entry> list) {
        Entry[] entryArr = new Entry[list.size()];
        this.f16085d = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.f16085d = entryArr;
    }

    /* renamed from: a */
    public Metadata m20395a(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) C5515h0.m18836e0(this.f16085d, entryArr));
    }

    /* renamed from: b */
    public Metadata m20394b(Metadata metadata) {
        return metadata == null ? this : m20395a(metadata.f16085d);
    }

    /* renamed from: c */
    public Entry m20393c(int i) {
        return this.f16085d[i];
    }

    /* renamed from: d */
    public int m20392d() {
        return this.f16085d.length;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            return Arrays.equals(this.f16085d, ((Metadata) obj).f16085d);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f16085d);
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.f16085d);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f16085d.length);
        for (Entry entry : this.f16085d) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
