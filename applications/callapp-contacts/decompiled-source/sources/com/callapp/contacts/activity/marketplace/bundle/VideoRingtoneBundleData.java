package com.callapp.contacts.activity.marketplace.bundle;

import android.os.Parcel;
import android.os.Parcelable;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.bidmachine.utils.IabUtils;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u001f\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0087\b\u0018��2\u00020\u0001BW\u0012\n\b\u0001\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0005\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0003\u0012\b\b\u0001\u0010\u0007\u001a\u00020\b\u0012\n\b\u0001\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\n\b\u0001\u0010\n\u001a\u0004\u0018\u00010\u0003¢\u0006\u0002\u0010\u000bJ\u000b\u0010\u001e\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010\u001f\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010 \u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010!\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\t\u0010\"\u001a\u00020\bHÆ\u0003J\u000b\u0010#\u001a\u0004\u0018\u00010\u0003HÆ\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0003HÆ\u0003J[\u0010%\u001a\u00020��2\n\b\u0003\u0010\u0002\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0004\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0005\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\u0006\u001a\u0004\u0018\u00010\u00032\b\b\u0003\u0010\u0007\u001a\u00020\b2\n\b\u0003\u0010\t\u001a\u0004\u0018\u00010\u00032\n\b\u0003\u0010\n\u001a\u0004\u0018\u00010\u0003HÆ\u0001J\t\u0010&\u001a\u00020\bHÖ\u0001J\u0013\u0010'\u001a\u00020(2\b\u0010)\u001a\u0004\u0018\u00010*HÖ\u0003J\t\u0010+\u001a\u00020\bHÖ\u0001J\t\u0010,\u001a\u00020\u0003HÖ\u0001J\u0019\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u0002002\u0006\u00101\u001a\u00020\bHÖ\u0001R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\r\"\u0004\b\u0011\u0010\u000fR\u001c\u0010\t\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0012\u0010\r\"\u0004\b\u0013\u0010\u000fR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0014\u0010\r\"\u0004\b\u0015\u0010\u000fR\u001a\u0010\u0007\u001a\u00020\bX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019R\u001c\u0010\n\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001a\u0010\r\"\u0004\b\u001b\u0010\u000fR\u001c\u0010\u0006\u001a\u0004\u0018\u00010\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u001c\u0010\r\"\u0004\b\u001d\u0010\u000f¨\u00062"}, d2 = {"Lcom/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData;", "Landroid/os/Parcelable;", "sku", "", "title", "subTitle", IabUtils.KEY_VIDEO_URL, "type", "", "thumbnail", "videoPlaceHolder", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getSku", "()Ljava/lang/String;", "setSku", "(Ljava/lang/String;)V", "getSubTitle", "setSubTitle", "getThumbnail", "setThumbnail", "getTitle", "setTitle", "getType", "()I", "setType", "(I)V", "getVideoPlaceHolder", "setVideoPlaceHolder", "getVideoUrl", "setVideoUrl", "component1", "component2", "component3", "component4", "component5", "component6", "component7", "copy", "describeContents", "equals", "", "other", "", "hashCode", "toString", "writeToParcel", "", "parcel", "Landroid/os/Parcel;", "flags", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData.class */
public final class VideoRingtoneBundleData implements Parcelable {
    public static final Parcelable.Creator<VideoRingtoneBundleData> CREATOR = new Creator();
    private String sku;
    private String subTitle;
    private String thumbnail;
    private String title;
    private int type;
    private String videoPlaceHolder;
    private String videoUrl;

    @Metadata(bv = {1, 0, 3}, k = 3, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/marketplace/bundle/VideoRingtoneBundleData$Creator.class */
    public static final class Creator implements Parcelable.Creator<VideoRingtoneBundleData> {
        @Override // android.os.Parcelable.Creator
        public final /* synthetic */ VideoRingtoneBundleData createFromParcel(Parcel in) {
            p.d(in, "in");
            return new VideoRingtoneBundleData(in.readString(), in.readString(), in.readString(), in.readString(), in.readInt(), in.readString(), in.readString());
        }

        @Override // android.os.Parcelable.Creator
        public final /* bridge */ /* synthetic */ VideoRingtoneBundleData[] newArray(int i) {
            return new VideoRingtoneBundleData[i];
        }
    }

    public VideoRingtoneBundleData(@JsonProperty("freeItemSku") String str, @JsonProperty("title") String str2, @JsonProperty("subtitle") String str3, @JsonProperty("bundleVideoUrl") String str4, @JsonProperty("type") int i, @JsonProperty("thumbnail") String str5, @JsonProperty("videoPlaceHolder") String str6) {
        this.sku = str;
        this.title = str2;
        this.subTitle = str3;
        this.videoUrl = str4;
        this.type = i;
        this.thumbnail = str5;
        this.videoPlaceHolder = str6;
    }

    public static /* synthetic */ VideoRingtoneBundleData copy$default(VideoRingtoneBundleData videoRingtoneBundleData, String str, String str2, String str3, String str4, int i, String str5, String str6, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = videoRingtoneBundleData.sku;
        }
        if ((i2 & 2) != 0) {
            str2 = videoRingtoneBundleData.title;
        }
        if ((i2 & 4) != 0) {
            str3 = videoRingtoneBundleData.subTitle;
        }
        if ((i2 & 8) != 0) {
            str4 = videoRingtoneBundleData.videoUrl;
        }
        if ((i2 & 16) != 0) {
            i = videoRingtoneBundleData.type;
        }
        if ((i2 & 32) != 0) {
            str5 = videoRingtoneBundleData.thumbnail;
        }
        if ((i2 & 64) != 0) {
            str6 = videoRingtoneBundleData.videoPlaceHolder;
        }
        return videoRingtoneBundleData.copy(str, str2, str3, str4, i, str5, str6);
    }

    public final String component1() {
        return this.sku;
    }

    public final String component2() {
        return this.title;
    }

    public final String component3() {
        return this.subTitle;
    }

    public final String component4() {
        return this.videoUrl;
    }

    public final int component5() {
        return this.type;
    }

    public final String component6() {
        return this.thumbnail;
    }

    public final String component7() {
        return this.videoPlaceHolder;
    }

    public final VideoRingtoneBundleData copy(@JsonProperty("freeItemSku") String str, @JsonProperty("title") String str2, @JsonProperty("subtitle") String str3, @JsonProperty("bundleVideoUrl") String str4, @JsonProperty("type") int i, @JsonProperty("thumbnail") String str5, @JsonProperty("videoPlaceHolder") String str6) {
        return new VideoRingtoneBundleData(str, str2, str3, str4, i, str5, str6);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof VideoRingtoneBundleData)) {
            return false;
        }
        VideoRingtoneBundleData videoRingtoneBundleData = (VideoRingtoneBundleData) obj;
        return p.a((Object) this.sku, (Object) videoRingtoneBundleData.sku) && p.a((Object) this.title, (Object) videoRingtoneBundleData.title) && p.a((Object) this.subTitle, (Object) videoRingtoneBundleData.subTitle) && p.a((Object) this.videoUrl, (Object) videoRingtoneBundleData.videoUrl) && this.type == videoRingtoneBundleData.type && p.a((Object) this.thumbnail, (Object) videoRingtoneBundleData.thumbnail) && p.a((Object) this.videoPlaceHolder, (Object) videoRingtoneBundleData.videoPlaceHolder);
    }

    public final String getSku() {
        return this.sku;
    }

    public final String getSubTitle() {
        return this.subTitle;
    }

    public final String getThumbnail() {
        return this.thumbnail;
    }

    public final String getTitle() {
        return this.title;
    }

    public final int getType() {
        return this.type;
    }

    public final String getVideoPlaceHolder() {
        return this.videoPlaceHolder;
    }

    public final String getVideoUrl() {
        return this.videoUrl;
    }

    public final int hashCode() {
        String str = this.sku;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.title;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.subTitle;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.videoUrl;
        int hashCode4 = str4 != null ? str4.hashCode() : 0;
        int i2 = this.type;
        String str5 = this.thumbnail;
        int hashCode5 = str5 != null ? str5.hashCode() : 0;
        String str6 = this.videoPlaceHolder;
        if (str6 != null) {
            i = str6.hashCode();
        }
        return (((((((((((hashCode * 31) + hashCode2) * 31) + hashCode3) * 31) + hashCode4) * 31) + i2) * 31) + hashCode5) * 31) + i;
    }

    public final void setSku(String str) {
        this.sku = str;
    }

    public final void setSubTitle(String str) {
        this.subTitle = str;
    }

    public final void setThumbnail(String str) {
        this.thumbnail = str;
    }

    public final void setTitle(String str) {
        this.title = str;
    }

    public final void setType(int i) {
        this.type = i;
    }

    public final void setVideoPlaceHolder(String str) {
        this.videoPlaceHolder = str;
    }

    public final void setVideoUrl(String str) {
        this.videoUrl = str;
    }

    public final String toString() {
        return "VideoRingtoneBundleData(sku=" + this.sku + ", title=" + this.title + ", subTitle=" + this.subTitle + ", videoUrl=" + this.videoUrl + ", type=" + this.type + ", thumbnail=" + this.thumbnail + ", videoPlaceHolder=" + this.videoPlaceHolder + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        p.d(parcel, "parcel");
        parcel.writeString(this.sku);
        parcel.writeString(this.title);
        parcel.writeString(this.subTitle);
        parcel.writeString(this.videoUrl);
        parcel.writeInt(this.type);
        parcel.writeString(this.thumbnail);
        parcel.writeString(this.videoPlaceHolder);
    }
}
