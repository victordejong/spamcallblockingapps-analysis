package com.google.android.exoplayer2.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.exoplayer2.Format;
import java.util.Arrays;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C1971a();

    /* renamed from: a */
    public final Entry[] f4888a;

    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
        /* renamed from: j */
        byte[] mo39238j();

        /* renamed from: q */
        Format mo39237q();
    }

    /* renamed from: com.google.android.exoplayer2.metadata.Metadata$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/exoplayer2/metadata/Metadata$a.class */
    public static final class C1971a implements Parcelable.Creator<Metadata> {
        @Override // android.os.Parcelable.Creator
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    }

    public Metadata(Parcel parcel) {
        this.f4888a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f4888a;
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
        this.f4888a = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.f4888a = entryArr;
    }

    /* renamed from: a */
    public Metadata m39240a(Entry... entryArr) {
        if (entryArr.length == 0) {
            return this;
        }
        Entry[] entryArr2 = this.f4888a;
        int i = C24773d0.f69427a;
        Object[] copyOf = Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, copyOf, entryArr2.length, entryArr.length);
        return new Metadata((Entry[]) copyOf);
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
            return Arrays.equals(this.f4888a, ((Metadata) obj).f4888a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f4888a);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("entries=");
        m8728C.append(Arrays.toString(this.f4888a));
        return m8728C.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f4888a.length);
        for (Entry entry : this.f4888a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
