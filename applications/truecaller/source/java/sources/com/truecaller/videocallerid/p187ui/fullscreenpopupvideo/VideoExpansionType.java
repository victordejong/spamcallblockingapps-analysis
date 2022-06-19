package com.truecaller.videocallerid.p187ui.fullscreenpopupvideo;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Contact;
import com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
/* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType */
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType.class */
public abstract class VideoExpansionType implements Parcelable {

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B!\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\b\u0010\f\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b&\u0010'J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ0\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\n\b\u0002\u0010\f\u001a\u0004\u0018\u00010\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0007J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0017\u001a\u00020\u00162\b\u0010\u0015\u001a\u0004\u0018\u00010\u0014HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0019\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0019\u0010\u0013J \u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u001e\u0010\u001fR\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010 \u001a\u0004\b!\u0010\u0004R\u001b\u0010\f\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\"\u001a\u0004\b#\u0010\u0007R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010$\u001a\u0004\b%\u0010\n¨\u0006("}, d2 = {"Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "Lcom/truecaller/data/entity/Contact;", "component1", "()Lcom/truecaller/data/entity/Contact;", "", "component2", "()Ljava/lang/String;", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;", "component3", "()Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;", AnalyticsConstants.CONTACT, "normalizedNumber", "type", "copy", "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;)Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/data/entity/Contact;", "getContact", "Ljava/lang/String;", "getNormalizedNumber", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;", "getType", "<init>", "(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType$BusinessVideo */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo.class */
    public static final class BusinessVideo extends VideoExpansionType {
        public static final Parcelable.Creator<BusinessVideo> CREATOR = new C4729a();
        private final Contact contact;
        private final String normalizedNumber;
        private final BusinessVideoType type;

        /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType$BusinessVideo$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideo$a.class */
        public static final class C4729a implements Parcelable.Creator<BusinessVideo> {
            @Override // android.os.Parcelable.Creator
            public BusinessVideo createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new BusinessVideo((Contact) parcel.readParcelable(BusinessVideo.class.getClassLoader()), parcel.readString(), (BusinessVideoType) Enum.valueOf(BusinessVideoType.class, parcel.readString()));
            }

            @Override // android.os.Parcelable.Creator
            public BusinessVideo[] newArray(int i) {
                return new BusinessVideo[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BusinessVideo(Contact contact, String str, BusinessVideoType businessVideoType) {
            super(null);
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(businessVideoType, "type");
            this.contact = contact;
            this.normalizedNumber = str;
            this.type = businessVideoType;
        }

        public static /* synthetic */ BusinessVideo copy$default(BusinessVideo businessVideo, Contact contact, String str, BusinessVideoType businessVideoType, int i, Object obj) {
            if ((i & 1) != 0) {
                contact = businessVideo.contact;
            }
            if ((i & 2) != 0) {
                str = businessVideo.normalizedNumber;
            }
            if ((i & 4) != 0) {
                businessVideoType = businessVideo.type;
            }
            return businessVideo.copy(contact, str, businessVideoType);
        }

        public final Contact component1() {
            return this.contact;
        }

        public final String component2() {
            return this.normalizedNumber;
        }

        public final BusinessVideoType component3() {
            return this.type;
        }

        public final BusinessVideo copy(Contact contact, String str, BusinessVideoType businessVideoType) {
            l.e(contact, AnalyticsConstants.CONTACT);
            l.e(businessVideoType, "type");
            return new BusinessVideo(contact, str, businessVideoType);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof BusinessVideo)) {
                    return false;
                }
                BusinessVideo businessVideo = (BusinessVideo) obj;
                return l.a(this.contact, businessVideo.contact) && l.a(this.normalizedNumber, businessVideo.normalizedNumber) && l.a(this.type, businessVideo.type);
            }
            return true;
        }

        public final Contact getContact() {
            return this.contact;
        }

        public final String getNormalizedNumber() {
            return this.normalizedNumber;
        }

        public final BusinessVideoType getType() {
            return this.type;
        }

        public int hashCode() {
            Contact contact = this.contact;
            int i = 0;
            int hashCode = contact != null ? contact.hashCode() : 0;
            String str = this.normalizedNumber;
            int hashCode2 = str != null ? str.hashCode() : 0;
            BusinessVideoType businessVideoType = this.type;
            if (businessVideoType != null) {
                i = businessVideoType.hashCode();
            }
            return (((hashCode * 31) + hashCode2) * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("BusinessVideo(contact=");
            m8728C.append(this.contact);
            m8728C.append(", normalizedNumber=");
            m8728C.append(this.normalizedNumber);
            m8728C.append(", type=");
            m8728C.append(this.type);
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeParcelable(this.contact, i);
            parcel.writeString(this.normalizedNumber);
            parcel.writeString(this.type.name());
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType;", "", "<init>", "(Ljava/lang/String;I)V", "LANDSCAPE", "PORTRAIT", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
    /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType$BusinessVideoType */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$BusinessVideoType.class */
    public enum BusinessVideoType {
        LANDSCAPE,
        PORTRAIT
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0019\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\b\u0010\t\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J&\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\n\b\u0002\u0010\t\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0013\u001a\u00020\u00122\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010HÖ\u0003¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u0015\u0010\u000fJ \u0010\u001a\u001a\u00020\u00192\u0006\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0018\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u001a\u0010\u001bR\u001b\u0010\t\u001a\u0004\u0018\u00010\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;", "Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType;", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "component2", "()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "url", "videoPlayerAnalyticsInfo", "copy", "(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)Lcom/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "getVideoPlayerAnalyticsInfo", "Ljava/lang/String;", "getUrl", "<init>", "(Ljava/lang/String;Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
    @Keep
    /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType$P2pVideo */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo.class */
    public static final class P2pVideo extends VideoExpansionType {
        public static final Parcelable.Creator<P2pVideo> CREATOR = new C4730a();
        private final String url;
        private final VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo;

        /* renamed from: com.truecaller.videocallerid.ui.fullscreenpopupvideo.VideoExpansionType$P2pVideo$a */
        /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/ui/fullscreenpopupvideo/VideoExpansionType$P2pVideo$a.class */
        public static final class C4730a implements Parcelable.Creator<P2pVideo> {
            @Override // android.os.Parcelable.Creator
            public P2pVideo createFromParcel(Parcel parcel) {
                l.e(parcel, "in");
                return new P2pVideo(parcel.readString(), parcel.readInt() != 0 ? VideoPlayerAnalyticsInfo.CREATOR.createFromParcel(parcel) : null);
            }

            @Override // android.os.Parcelable.Creator
            public P2pVideo[] newArray(int i) {
                return new P2pVideo[i];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public P2pVideo(String str, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo) {
            super(null);
            l.e(str, "url");
            this.url = str;
            this.videoPlayerAnalyticsInfo = videoPlayerAnalyticsInfo;
        }

        public static /* synthetic */ P2pVideo copy$default(P2pVideo p2pVideo, String str, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo, int i, Object obj) {
            if ((i & 1) != 0) {
                str = p2pVideo.url;
            }
            if ((i & 2) != 0) {
                videoPlayerAnalyticsInfo = p2pVideo.videoPlayerAnalyticsInfo;
            }
            return p2pVideo.copy(str, videoPlayerAnalyticsInfo);
        }

        public final String component1() {
            return this.url;
        }

        public final VideoPlayerAnalyticsInfo component2() {
            return this.videoPlayerAnalyticsInfo;
        }

        public final P2pVideo copy(String str, VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo) {
            l.e(str, "url");
            return new P2pVideo(str, videoPlayerAnalyticsInfo);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof P2pVideo)) {
                    return false;
                }
                P2pVideo p2pVideo = (P2pVideo) obj;
                return l.a(this.url, p2pVideo.url) && l.a(this.videoPlayerAnalyticsInfo, p2pVideo.videoPlayerAnalyticsInfo);
            }
            return true;
        }

        public final String getUrl() {
            return this.url;
        }

        public final VideoPlayerAnalyticsInfo getVideoPlayerAnalyticsInfo() {
            return this.videoPlayerAnalyticsInfo;
        }

        public int hashCode() {
            String str = this.url;
            int i = 0;
            int hashCode = str != null ? str.hashCode() : 0;
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.videoPlayerAnalyticsInfo;
            if (videoPlayerAnalyticsInfo != null) {
                i = videoPlayerAnalyticsInfo.hashCode();
            }
            return (hashCode * 31) + i;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C("P2pVideo(url=");
            m8728C.append(this.url);
            m8728C.append(", videoPlayerAnalyticsInfo=");
            m8728C.append(this.videoPlayerAnalyticsInfo);
            m8728C.append(")");
            return m8728C.toString();
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            l.e(parcel, "parcel");
            parcel.writeString(this.url);
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = this.videoPlayerAnalyticsInfo;
            if (videoPlayerAnalyticsInfo == null) {
                parcel.writeInt(0);
                return;
            }
            parcel.writeInt(1);
            videoPlayerAnalyticsInfo.writeToParcel(parcel, 0);
        }
    }

    private VideoExpansionType() {
    }

    public /* synthetic */ VideoExpansionType(f fVar) {
        this();
    }
}
