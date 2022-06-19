package androidx.media2.exoplayer.external.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C0152a();

    /* renamed from: a */
    public final Entry[] f1144a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.Metadata$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$a.class */
    public class C0152a implements Parcelable.Creator<Metadata> {
        /* renamed from: a */
        public Metadata createFromParcel(Parcel parcel) {
            return new Metadata(parcel);
        }

        /* renamed from: b */
        public Metadata[] newArray(int i) {
            return new Metadata[i];
        }
    }

    public Metadata(Parcel parcel) {
        this.f1144a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f1144a;
            if (i < entryArr.length) {
                entryArr[i] = (Entry) parcel.readParcelable(Entry.class.getClassLoader());
                i++;
            } else {
                return;
            }
        }
    }

    public Metadata(List<? extends Entry> list) {
        if (list == null) {
            this.f1144a = new Entry[0];
            return;
        }
        Entry[] entryArr = new Entry[list.size()];
        this.f1144a = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.f1144a = entryArr == null ? new Entry[0] : entryArr;
    }

    /* renamed from: a */
    public Metadata m6446a(Entry... entryArr) {
        Entry[] entryArr2 = this.f1144a;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.f1144a.length, entryArr.length);
        nu.h(entryArr3);
        return new Metadata(entryArr3);
    }

    /* renamed from: b */
    public Metadata m6445b(Metadata metadata) {
        return metadata == null ? this : m6446a(metadata.f1144a);
    }

    /* renamed from: c */
    public Entry m6444c(int i) {
        return this.f1144a[i];
    }

    /* renamed from: d */
    public int m6443d() {
        return this.f1144a.length;
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
            return Arrays.equals(this.f1144a, ((Metadata) obj).f1144a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f1144a);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f1144a.length);
        for (Entry entry : this.f1144a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
