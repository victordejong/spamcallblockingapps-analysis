package com.google.android.exoplayer2.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry.class */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new C7174a();

    /* renamed from: a */
    public final String f22264a;

    /* renamed from: b */
    public final String f22265b;

    /* renamed from: c */
    public final List<VariantInfo> f22266c;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new C7173a();

        /* renamed from: a */
        public final long f22267a;

        /* renamed from: b */
        public final String f22268b;

        /* renamed from: c */
        public final String f22269c;

        /* renamed from: d */
        public final String f22270d;

        /* renamed from: e */
        public final String f22271e;

        /* renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$VariantInfo$a */
        /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$VariantInfo$a.class */
        public static final class C7173a implements Parcelable.Creator<VariantInfo> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        }

        public VariantInfo(Parcel parcel) {
            this.f22267a = parcel.readLong();
            this.f22268b = parcel.readString();
            this.f22269c = parcel.readString();
            this.f22270d = parcel.readString();
            this.f22271e = parcel.readString();
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
            if (this.f22267a != variantInfo.f22267a || !TextUtils.equals(this.f22268b, variantInfo.f22268b) || !TextUtils.equals(this.f22269c, variantInfo.f22269c) || !TextUtils.equals(this.f22270d, variantInfo.f22270d) || !TextUtils.equals(this.f22271e, variantInfo.f22271e)) {
                z = false;
            }
            return z;
        }

        public int hashCode() {
            long j = this.f22267a;
            int i = (int) (j ^ (j >>> 32));
            String str = this.f22268b;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.f22269c;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.f22270d;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.f22271e;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.f22267a);
            parcel.writeString(this.f22268b);
            parcel.writeString(this.f22269c);
            parcel.writeString(this.f22270d);
            parcel.writeString(this.f22271e);
        }
    }

    /* renamed from: com.google.android.exoplayer2.source.hls.HlsTrackMetadataEntry$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/hls/HlsTrackMetadataEntry$a.class */
    public static final class C7174a implements Parcelable.Creator<HlsTrackMetadataEntry> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    }

    public HlsTrackMetadataEntry(Parcel parcel) {
        this.f22264a = parcel.readString();
        this.f22265b = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add(parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.f22266c = Collections.unmodifiableList(arrayList);
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
        if (!TextUtils.equals(this.f22264a, hlsTrackMetadataEntry.f22264a) || !TextUtils.equals(this.f22265b, hlsTrackMetadataEntry.f22265b) || !this.f22266c.equals(hlsTrackMetadataEntry.f22266c)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        String str = this.f22264a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f22265b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.f22266c.hashCode();
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("HlsTrackMetadataEntry");
        if (this.f22264a != null) {
            str = " [" + this.f22264a + ", " + this.f22265b + "]";
        } else {
            str = "";
        }
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f22264a);
        parcel.writeString(this.f22265b);
        int size = this.f22266c.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.f22266c.get(i2), 0);
        }
    }
}
