package androidx.media2.exoplayer.external.source.hls;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.media2.exoplayer.external.Format;
import androidx.media2.exoplayer.external.metadata.Metadata;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry.class */
public final class HlsTrackMetadataEntry implements Metadata.Entry {
    public static final Parcelable.Creator<HlsTrackMetadataEntry> CREATOR = new Parcelable.Creator<HlsTrackMetadataEntry>() { // from class: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry.1
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ HlsTrackMetadataEntry createFromParcel(Parcel parcel) {
            return new HlsTrackMetadataEntry(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ HlsTrackMetadataEntry[] newArray(int i) {
            return new HlsTrackMetadataEntry[i];
        }
    };
    public final String groupId;
    public final String name;
    public final List<VariantInfo> variantInfos;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/source/hls/HlsTrackMetadataEntry$VariantInfo.class */
    public static final class VariantInfo implements Parcelable {
        public static final Parcelable.Creator<VariantInfo> CREATOR = new Parcelable.Creator<VariantInfo>() { // from class: androidx.media2.exoplayer.external.source.hls.HlsTrackMetadataEntry.VariantInfo.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ VariantInfo createFromParcel(Parcel parcel) {
                return new VariantInfo(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ VariantInfo[] newArray(int i) {
                return new VariantInfo[i];
            }
        };
        public final String audioGroupId;
        public final long bitrate;
        public final String captionGroupId;
        public final String subtitleGroupId;
        public final String videoGroupId;

        public VariantInfo(long j, String str, String str2, String str3, String str4) {
            this.bitrate = j;
            this.videoGroupId = str;
            this.audioGroupId = str2;
            this.subtitleGroupId = str3;
            this.captionGroupId = str4;
        }

        VariantInfo(Parcel parcel) {
            this.bitrate = parcel.readLong();
            this.videoGroupId = parcel.readString();
            this.audioGroupId = parcel.readString();
            this.subtitleGroupId = parcel.readString();
            this.captionGroupId = parcel.readString();
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            VariantInfo variantInfo = (VariantInfo) obj;
            return this.bitrate == variantInfo.bitrate && TextUtils.equals(this.videoGroupId, variantInfo.videoGroupId) && TextUtils.equals(this.audioGroupId, variantInfo.audioGroupId) && TextUtils.equals(this.subtitleGroupId, variantInfo.subtitleGroupId) && TextUtils.equals(this.captionGroupId, variantInfo.captionGroupId);
        }

        public final int hashCode() {
            long j = this.bitrate;
            int i = (int) (j ^ (j >>> 32));
            String str = this.videoGroupId;
            int i2 = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            String str2 = this.audioGroupId;
            int hashCode2 = str2 != null ? str2.hashCode() : 0;
            String str3 = this.subtitleGroupId;
            int hashCode3 = str3 != null ? str3.hashCode() : 0;
            String str4 = this.captionGroupId;
            if (str4 != null) {
                i2 = str4.hashCode();
            }
            return (((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeLong(this.bitrate);
            parcel.writeString(this.videoGroupId);
            parcel.writeString(this.audioGroupId);
            parcel.writeString(this.subtitleGroupId);
            parcel.writeString(this.captionGroupId);
        }
    }

    HlsTrackMetadataEntry(Parcel parcel) {
        this.groupId = parcel.readString();
        this.name = parcel.readString();
        int readInt = parcel.readInt();
        ArrayList arrayList = new ArrayList(readInt);
        for (int i = 0; i < readInt; i++) {
            arrayList.add((VariantInfo) parcel.readParcelable(VariantInfo.class.getClassLoader()));
        }
        this.variantInfos = Collections.unmodifiableList(arrayList);
    }

    public HlsTrackMetadataEntry(String str, String str2, List<VariantInfo> list) {
        this.groupId = str;
        this.name = str2;
        this.variantInfos = Collections.unmodifiableList(new ArrayList(list));
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        HlsTrackMetadataEntry hlsTrackMetadataEntry = (HlsTrackMetadataEntry) obj;
        return TextUtils.equals(this.groupId, hlsTrackMetadataEntry.groupId) && TextUtils.equals(this.name, hlsTrackMetadataEntry.name) && this.variantInfos.equals(hlsTrackMetadataEntry.variantInfos);
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final byte[] getWrappedMetadataBytes() {
        return null;
    }

    @Override // androidx.media2.exoplayer.external.metadata.Metadata.Entry
    public final Format getWrappedMetadataFormat() {
        return null;
    }

    public final int hashCode() {
        String str = this.groupId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.name;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.variantInfos.hashCode();
    }

    public final String toString() {
        String str;
        String str2 = this.groupId;
        if (str2 != null) {
            String str3 = this.name;
            StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 5 + String.valueOf(str3).length());
            sb.append(" [");
            sb.append(str2);
            sb.append(", ");
            sb.append(str3);
            sb.append("]");
            str = sb.toString();
        } else {
            str = "";
        }
        String valueOf = String.valueOf(str);
        return valueOf.length() != 0 ? "HlsTrackMetadataEntry".concat(valueOf) : new String("HlsTrackMetadataEntry");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.groupId);
        parcel.writeString(this.name);
        int size = this.variantInfos.size();
        parcel.writeInt(size);
        for (int i2 = 0; i2 < size; i2++) {
            parcel.writeParcelable(this.variantInfos.get(i2), 0);
        }
    }
}
