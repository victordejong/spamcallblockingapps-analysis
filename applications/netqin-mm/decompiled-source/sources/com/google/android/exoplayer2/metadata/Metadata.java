package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import p131c.p161d.p170b.p188c.p203g1.C2885h0;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C7140a();

    /* renamed from: a */
    public final Entry[] f22132a;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
    }

    /* renamed from: com.google.android.exoplayer2.metadata.Metadata$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$a.class */
    public static final class C7140a implements Parcelable.Creator<Metadata> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    }

    public Metadata(Parcel parcel) {
        this.f22132a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f22132a;
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
        this.f22132a = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.f22132a = entryArr;
    }

    /* renamed from: a */
    public int m18520a() {
        return this.f22132a.length;
    }

    /* renamed from: a */
    public Entry m18519a(int i) {
        return this.f22132a[i];
    }

    /* renamed from: a */
    public Metadata m18518a(Entry... entryArr) {
        return entryArr.length == 0 ? this : new Metadata((Entry[]) C2885h0.m28654a((Object[]) this.f22132a, (Object[]) entryArr));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || Metadata.class != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f22132a, ((Metadata) obj).f22132a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f22132a);
    }

    public String toString() {
        return "entries=" + Arrays.toString(this.f22132a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f22132a.length);
        for (Entry entry : this.f22132a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
