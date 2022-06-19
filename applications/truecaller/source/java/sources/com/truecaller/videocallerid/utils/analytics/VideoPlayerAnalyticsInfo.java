package com.truecaller.videocallerid.utils.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b#\u0010$J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0011J \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\n\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u001e\u001a\u0004\b\u001f\u0010\u0007R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b \u0010\u0007R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010!\u001a\u0004\b\"\u0010\u0004¨\u0006%"}, d2 = {"Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "Landroid/os/Parcelable;", "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;", "component1", "()Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;", "", "component2", "()Ljava/lang/String;", "component3", AnalyticsConstants.CONTEXT, FailedBinderCallBack.CALLER_ID, "videoId", "copy", "(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo;", "toString", "", "hashCode", "()I", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getCallId", "getVideoId", "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;", "getContext", "<init>", "(Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;Ljava/lang/String;Ljava/lang/String;)V", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo.class */
public final class VideoPlayerAnalyticsInfo implements Parcelable {
    public static final Parcelable.Creator<VideoPlayerAnalyticsInfo> CREATOR = new C4776a();
    private final String callId;
    private final VideoPlayerContext context;
    private final String videoId;

    /* renamed from: com.truecaller.videocallerid.utils.analytics.VideoPlayerAnalyticsInfo$a */
    /* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoPlayerAnalyticsInfo$a.class */
    public static final class C4776a implements Parcelable.Creator<VideoPlayerAnalyticsInfo> {
        @Override // android.os.Parcelable.Creator
        public VideoPlayerAnalyticsInfo createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new VideoPlayerAnalyticsInfo((VideoPlayerContext) Enum.valueOf(VideoPlayerContext.class, parcel.readString()), parcel.readString(), parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public VideoPlayerAnalyticsInfo[] newArray(int i) {
            return new VideoPlayerAnalyticsInfo[i];
        }
    }

    public VideoPlayerAnalyticsInfo(VideoPlayerContext videoPlayerContext, String str, String str2) {
        l.e(videoPlayerContext, AnalyticsConstants.CONTEXT);
        l.e(str, FailedBinderCallBack.CALLER_ID);
        l.e(str2, "videoId");
        this.context = videoPlayerContext;
        this.callId = str;
        this.videoId = str2;
    }

    public static /* synthetic */ VideoPlayerAnalyticsInfo copy$default(VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo, VideoPlayerContext videoPlayerContext, String str, String str2, int i, Object obj) {
        if ((i & 1) != 0) {
            videoPlayerContext = videoPlayerAnalyticsInfo.context;
        }
        if ((i & 2) != 0) {
            str = videoPlayerAnalyticsInfo.callId;
        }
        if ((i & 4) != 0) {
            str2 = videoPlayerAnalyticsInfo.videoId;
        }
        return videoPlayerAnalyticsInfo.copy(videoPlayerContext, str, str2);
    }

    public final VideoPlayerContext component1() {
        return this.context;
    }

    public final String component2() {
        return this.callId;
    }

    public final String component3() {
        return this.videoId;
    }

    public final VideoPlayerAnalyticsInfo copy(VideoPlayerContext videoPlayerContext, String str, String str2) {
        l.e(videoPlayerContext, AnalyticsConstants.CONTEXT);
        l.e(str, FailedBinderCallBack.CALLER_ID);
        l.e(str2, "videoId");
        return new VideoPlayerAnalyticsInfo(videoPlayerContext, str, str2);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VideoPlayerAnalyticsInfo)) {
                return false;
            }
            VideoPlayerAnalyticsInfo videoPlayerAnalyticsInfo = (VideoPlayerAnalyticsInfo) obj;
            return l.a(this.context, videoPlayerAnalyticsInfo.context) && l.a(this.callId, videoPlayerAnalyticsInfo.callId) && l.a(this.videoId, videoPlayerAnalyticsInfo.videoId);
        }
        return true;
    }

    public final String getCallId() {
        return this.callId;
    }

    public final VideoPlayerContext getContext() {
        return this.context;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public int hashCode() {
        VideoPlayerContext videoPlayerContext = this.context;
        int i = 0;
        int hashCode = videoPlayerContext != null ? videoPlayerContext.hashCode() : 0;
        String str = this.callId;
        int hashCode2 = str != null ? str.hashCode() : 0;
        String str2 = this.videoId;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VideoPlayerAnalyticsInfo(context=");
        m8728C.append(this.context);
        m8728C.append(", callId=");
        m8728C.append(this.callId);
        m8728C.append(", videoId=");
        return C22128a.m8618h(m8728C, this.videoId, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.context.name());
        parcel.writeString(this.callId);
        parcel.writeString(this.videoId);
    }
}
