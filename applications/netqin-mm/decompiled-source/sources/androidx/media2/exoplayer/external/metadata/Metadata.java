package androidx.media2.exoplayer.external.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C0300a();

    /* renamed from: a */
    public final Entry[] f1747a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.Metadata$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$a.class */
    public class C0300a implements Parcelable.Creator<Metadata> {
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
        this.f1747a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f1747a;
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
            this.f1747a = entryArr;
            list.toArray(entryArr);
            return;
        }
        this.f1747a = new Entry[0];
    }

    public Metadata(Entry... entryArr) {
        this.f1747a = entryArr == null ? new Entry[0] : entryArr;
    }

    /* renamed from: a */
    public int m38018a() {
        return this.f1747a.length;
    }

    /* renamed from: a */
    public Entry m38017a(int i) {
        return this.f1747a[i];
    }

    /* renamed from: a */
    public Metadata m38016a(Metadata metadata) {
        return metadata == null ? this : m38015a(metadata.f1747a);
    }

    /* renamed from: a */
    public Metadata m38015a(Entry... entryArr) {
        Entry[] entryArr2 = this.f1747a;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.f1747a.length, entryArr.length);
        C1167d0.m34463a((Object[]) entryArr3);
        return new Metadata(entryArr3);
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
        return Arrays.equals(this.f1747a, ((Metadata) obj).f1747a);
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1747a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1747a.length);
        for (Entry entry : this.f1747a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
