package androidx.media2.exoplayer.external.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
public final class HlsTrackMetadataEntry$VariantInfo implements Parcelable {
    public static final Parcelable.Creator<HlsTrackMetadataEntry$VariantInfo> CREATOR = new C0156a();

    /* renamed from: a */
    public final long f1155a;

    /* renamed from: b */
    public final String f1156b;

    /* renamed from: c */
    public final String f1157c;

    /* renamed from: d */
    public final String f1158d;

    /* renamed from: f */
    public final String f1159f;

    /* renamed from: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry$VariantInfo$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo$a.class */
    public class C0156a implements Parcelable.Creator<HlsTrackMetadataEntry$VariantInfo> {
        /* renamed from: a */
        public HlsTrackMetadataEntry$VariantInfo createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry$VariantInfo(parcel);
        }

        /* renamed from: b */
        public HlsTrackMetadataEntry$VariantInfo[] newArray(int i) {
            return new HlsTrackMetadataEntry$VariantInfo[i];
        }
    }

    public HlsTrackMetadataEntry$VariantInfo(long j, String str, String str2, String str3, String str4) {
        this.f1155a = j;
        this.f1156b = str;
        this.f1157c = str2;
        this.f1158d = str3;
        this.f1159f = str4;
    }

    public HlsTrackMetadataEntry$VariantInfo(Parcel parcel) {
        this.f1155a = parcel.readLong();
        this.f1156b = parcel.readString();
        this.f1157c = parcel.readString();
        this.f1158d = parcel.readString();
        this.f1159f = parcel.readString();
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
        if (obj == null || HlsTrackMetadataEntry$VariantInfo.class != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry$VariantInfo hlsTrackMetadataEntry$VariantInfo = (HlsTrackMetadataEntry$VariantInfo) obj;
        if (this.f1155a != hlsTrackMetadataEntry$VariantInfo.f1155a || !TextUtils.equals(this.f1156b, hlsTrackMetadataEntry$VariantInfo.f1156b) || !TextUtils.equals(this.f1157c, hlsTrackMetadataEntry$VariantInfo.f1157c) || !TextUtils.equals(this.f1158d, hlsTrackMetadataEntry$VariantInfo.f1158d) || !TextUtils.equals(this.f1159f, hlsTrackMetadataEntry$VariantInfo.f1159f)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        long j = this.f1155a;
        int i = (int) (j ^ (j >>> 32));
        String str = this.f1156b;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f1157c;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.f1158d;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.f1159f;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f1155a);
        parcel.writeString(this.f1156b);
        parcel.writeString(this.f1157c);
        parcel.writeString(this.f1158d);
        parcel.writeString(this.f1159f);
    }
}
