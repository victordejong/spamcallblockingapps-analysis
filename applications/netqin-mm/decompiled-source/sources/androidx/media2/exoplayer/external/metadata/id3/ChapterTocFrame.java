package androidx.media2.exoplayer.external.metadata.id3;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame.class */
public final class ChapterTocFrame extends Id3Frame {
    public static final Parcelable.Creator<ChapterTocFrame> CREATOR = new C0307a();

    /* renamed from: b */
    public final String f1773b;

    /* renamed from: c */
    public final boolean f1774c;

    /* renamed from: d */
    public final boolean f1775d;

    /* renamed from: e */
    public final String[] f1776e;

    /* renamed from: f */
    public final Id3Frame[] f1777f;

    /* renamed from: androidx.media2.exoplayer.external.metadata.id3.ChapterTocFrame$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/metadata/id3/ChapterTocFrame$a.class */
    public class C0307a implements Parcelable.Creator<ChapterTocFrame> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame createFromParcel(Parcel parcel) {
            return new ChapterTocFrame(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public ChapterTocFrame[] newArray(int i) {
            return new ChapterTocFrame[i];
        }
    }

    public ChapterTocFrame(Parcel parcel) {
        super("CTOC");
        String readString = parcel.readString();
        C1167d0.m34479a(readString);
        this.f1773b = readString;
        boolean z = true;
        this.f1774c = parcel.readByte() != 0;
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.f1775d = z;
        String[] createStringArray = parcel.createStringArray();
        C1167d0.m34479a(createStringArray);
        this.f1776e = createStringArray;
        int readInt = parcel.readInt();
        this.f1777f = new Id3Frame[readInt];
        for (int i = 0; i < readInt; i++) {
            this.f1777f[i] = (Id3Frame) parcel.readParcelable(Id3Frame.class.getClassLoader());
        }
    }

    public ChapterTocFrame(String str, boolean z, boolean z2, String[] strArr, Id3Frame[] id3FrameArr) {
        super("CTOC");
        this.f1773b = str;
        this.f1774c = z;
        this.f1775d = z2;
        this.f1776e = strArr;
        this.f1777f = id3FrameArr;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || ChapterTocFrame.class != obj.getClass()) {
            return false;
        }
        ChapterTocFrame chapterTocFrame = (ChapterTocFrame) obj;
        if (this.f1774c != chapterTocFrame.f1774c || this.f1775d != chapterTocFrame.f1775d || !C1167d0.m34478a((Object) this.f1773b, (Object) chapterTocFrame.f1773b) || !Arrays.equals(this.f1776e, chapterTocFrame.f1776e) || !Arrays.equals(this.f1777f, chapterTocFrame.f1777f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        boolean z = this.f1774c;
        boolean z2 = this.f1775d;
        String str = this.f1773b;
        return ((((527 + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1773b);
        parcel.writeByte(this.f1774c ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f1775d ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f1776e);
        parcel.writeInt(this.f1777f.length);
        for (Id3Frame id3Frame : this.f1777f) {
            parcel.writeParcelable(id3Frame, 0);
        }
    }
}
