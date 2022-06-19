package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.metadata.C5120a;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry.class */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new C5230a();

    /* renamed from: d */
    public final String f16444d;

    /* renamed from: e */
    public final String f16445e;

    /* renamed from: f */
    public final List<VariantInfo> f16446f;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new C5229a();

        /* renamed from: d */
        public final long f16447d;

        /* renamed from: e */
        public final String f16448e;

        /* renamed from: f */
        public final String f16449f;

        /* renamed from: g */
        public final String f16450g;

        /* renamed from: h */
        public final String f16451h;

        /* renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo$a.class */
        static final class C5229a implements Parcelable.Creator<VariantInfo> {
            C5229a() {
            }

            /* renamed from: a */
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            /* renamed from: b */
            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        }

        public VariantInfo(long j, String str, String str2, String str3, String str4) {
            this.f16447d = j;
            this.f16448e = str;
            this.f16449f = str2;
            this.f16450g = str3;
            this.f16451h = str4;
        }

        VariantInfo(Parcel parcel) {
            this.f16447d = parcel.readLong();
            this.f16448e = parcel.readString();
            this.f16449f = parcel.readString();
            this.f16450g = parcel.readString();
            this.f16451h = parcel.readString();
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
            if (this.f16447d != variantInfo.f16447d || !TextUtils.equals(this.f16448e, variantInfo.f16448e) || !TextUtils.equals(this.f16449f, variantInfo.f16449f) || !TextUtils.equals(this.f16450g, variantInfo.f16450g) || !TextUtils.equals(this.f16451h, variantInfo.f16451h)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j = this.f16447d;
            int i = (int) (j ^ (j >>> 32));
            String str = this.f16448e;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f16449f;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f16450g;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f16451h;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f16447d);
            parcel.writeString(this.f16448e);
            parcel.writeString(this.f16449f);
            parcel.writeString(this.f16450g);
            parcel.writeString(this.f16451h);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$a.class */
    static final class C5230a implements Parcelable.Creator<HlsTrackMetadataEntry> {
        C5230a() {
        }

        /* renamed from: a */
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        /* renamed from: b */
        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    }

    HlsTrackMetadataEntry(Parcel parcel) {
        this.f16444d = parcel.readString();
        this.f16445e = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.f16446f = Collections.unmodifiableList(arrayList);
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.f16444d = str;
        this.f16445e = str2;
        this.f16446f = Collections.unmodifiableList(new ArrayList(list));
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
        if (!TextUtils.equals(this.f16444d, hlsTrackMetadataEntry.f16444d) || !TextUtils.equals(this.f16445e, hlsTrackMetadataEntry.f16445e) || !this.f16446f.equals(hlsTrackMetadataEntry.f16446f)) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: h0 */
    public /* synthetic */ byte[] mo20092h0() {
        return C5120a.m20389a(this);
    }

    public int hashCode() {
        String str = this.f16444d;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f16445e;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.f16446f.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("HlsTrackMetadataEntry");
        if (this.f16444d != null) {
            str = " [" + this.f16444d + ", " + this.f16445e + "]";
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f16444d);
        parcel.writeString(this.f16445e);
        int size = this.f16446f.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.f16446f.get(i2), 0);
        }
    }

    @Override // com.google.android.exoplayer2.metadata.Metadata.Entry
    /* renamed from: y */
    public /* synthetic */ Format mo20091y() {
        return C5120a.m20388b(this);
    }
}
