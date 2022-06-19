package androidx.media2.exoplayer.external.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry.class */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new C0249a();

    /* renamed from: a */
    public final String f1054a;

    /* renamed from: b */
    public final String f1055b;

    /* renamed from: c */
    public final List<VariantInfo> f1056c;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new C0248a();

        /* renamed from: a */
        public final long f1057a;

        /* renamed from: b */
        public final String f1058b;

        /* renamed from: c */
        public final String f1059c;

        /* renamed from: d */
        public final String f1060d;

        /* renamed from: e */
        public final String f1061e;

        /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry$VariantInfo$a */
        /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo$a.class */
        public class C0248a implements Parcelable.Creator<VariantInfo> {
            @Override // android.os.Parcelable.Creator
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        }

        public VariantInfo(long j, String str, String str2, String str3, String str4) {
            this.f1057a = j;
            this.f1058b = str;
            this.f1059c = str2;
            this.f1060d = str3;
            this.f1061e = str4;
        }

        public VariantInfo(Parcel parcel) {
            this.f1057a = parcel.readLong();
            this.f1058b = parcel.readString();
            this.f1059c = parcel.readString();
            this.f1060d = parcel.readString();
            this.f1061e = parcel.readString();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            boolean z = true;
            if (this == obj) {
                return true;
            }
            if (obj == null || VariantInfo.class != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            if (this.f1057a != variantInfo.f1057a || !TextUtils.equals(this.f1058b, variantInfo.f1058b) || !TextUtils.equals(this.f1059c, variantInfo.f1059c) || !TextUtils.equals(this.f1060d, variantInfo.f1060d) || !TextUtils.equals(this.f1061e, variantInfo.f1061e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j = this.f1057a;
            int i = (int) (j ^ (j >>> 32));
            String str = this.f1058b;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f1059c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f1060d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f1061e;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f1057a);
            parcel.writeString(this.f1058b);
            parcel.writeString(this.f1059c);
            parcel.writeString(this.f1060d);
            parcel.writeString(this.f1061e);
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$a.class */
    public class C0249a implements Parcelable.Creator<HlsTrackMetadataEntry> {
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    }

    public HlsTrackMetadataEntry(Parcel parcel) {
        this.f1054a = parcel.readString();
        this.f1055b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((VariantInfo) parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.f1056c = Collections.unmodifiableList(arrayList);
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f1054a = str;
        this.f1055b = str2;
        this.f1056c = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (this == obj) {
            return true;
        }
        if (obj == null || HlsTrackMetadataEntry.class != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        if (!TextUtils.equals(this.f1054a, hlsTrackMetadataEntry.f1054a) || !TextUtils.equals(this.f1055b, hlsTrackMetadataEntry.f1055b) || !this.f1056c.equals(hlsTrackMetadataEntry.f1056c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f1054a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1055b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return this.f1056c.hashCode() + (((hashCode * 31) + i) * 31);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: j */
    public byte[] mo42814j() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    /* renamed from: q */
    public Format mo42813q() {
        return null;
    }

    public String toString() {
        String str;
        String str2 = this.f1054a;
        if (str2 != null) {
            String str3 = this.f1055b;
            StringBuilder m8736A = C22128a.m8736A(C22128a.m8623f2(str3, C22128a.m8623f2(str2, 5)), " [", str2, ", ", str3);
            m8736A.append("]");
            str = m8736A.toString();
        } else {
            str = "";
        }
        String valueOf = String.valueOf(str);
        return valueOf.length() != 0 ? "HlsTrackMetadataEntry".concat(valueOf) : new String("HlsTrackMetadataEntry");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1054a);
        parcel.writeString(this.f1055b);
        int size = this.f1056c.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.f1056c.get(i2), 0);
        }
    }
}
