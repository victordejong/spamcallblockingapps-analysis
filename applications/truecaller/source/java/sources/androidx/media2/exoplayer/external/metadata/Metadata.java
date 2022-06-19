package androidx.media2.exoplayer.external.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.media2.exoplayer.external.Format;
import java.util.Arrays;
import java.util.List;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata.class */
public final class Metadata implements Parcelable {
    public static final Parcelable.Creator<Metadata> CREATOR = new C0239a();

    /* renamed from: a */
    public final Entry[] f991a;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$Entry.class */
    public interface Entry extends Parcelable {
        /* renamed from: j */
        byte[] mo42814j();

        /* renamed from: q */
        Format mo42813q();
    }

    /* renamed from: androidx.media2.exoplayer.external.metadata.Metadata$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/Metadata$a.class */
    public class C0239a implements Parcelable.Creator<Metadata> {
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
        this.f991a = new Entry[parcel.readInt()];
        int i = 0;
        while (true) {
            Entry[] entryArr = this.f991a;
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
        this.f991a = entryArr;
        list.toArray(entryArr);
    }

    public Metadata(Entry... entryArr) {
        this.f991a = entryArr == null ? new Entry[0] : entryArr;
    }

    /* renamed from: a */
    public Metadata m42828a(Entry... entryArr) {
        Entry[] entryArr2 = this.f991a;
        Entry[] entryArr3 = (Entry[]) Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, entryArr3, this.f991a.length, entryArr.length);
        int i = C27445x.f77229a;
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
        if (obj != null && Metadata.class == obj.getClass()) {
            return Arrays.equals(this.f991a, ((Metadata) obj).f991a);
        }
        return false;
    }

    public int hashCode() {
        return Arrays.hashCode(this.f991a);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.f991a));
        return valueOf.length() != 0 ? "entries=".concat(valueOf) : new String("entries=");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f991a.length);
        for (Entry entry : this.f991a) {
            parcel.writeParcelable(entry, 0);
        }
    }
}
