package com.truecaller.videocallerid.utils.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0012\b\u0087\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u00012\u00020\u0002B\u0011\b\u0002\u0012\u0006\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0004\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\u0004\u0010\u0005J \u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019j\u0002\b\u001aj\u0002\b\u001bj\u0002\b\u001cj\u0002\b\u001d¨\u0006\u001e"}, d2 = {"Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;", "", "Landroid/os/Parcelable;", "", "describeContents", "()I", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "", "value", "Ljava/lang/String;", "getValue", "()Ljava/lang/String;", "<init>", "(Ljava/lang/String;ILjava/lang/String;)V", "INCALLUI", "POPUP_CALLER_ID", "FACS", "PACS", "ExpandingPACS", "PACS_LANDSCAPE", "FACS_LANDSCAPE", "FACS_LANDSCAPE_AVATAR", "INCALLUI_LANDSCAPE", "INCALL_NOTIF_SERVICE", "DEBUG_DIALOG", "video-caller-id_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/videocallerid/utils/analytics/VideoPlayerContext.class */
public enum VideoPlayerContext implements Parcelable {
    INCALLUI("InCallUI"),
    POPUP_CALLER_ID("PopUp"),
    FACS("FACS"),
    PACS("PACS"),
    ExpandingPACS("ExpandingPACS"),
    PACS_LANDSCAPE("PACS_Landscape"),
    FACS_LANDSCAPE("FACS_Landscape"),
    FACS_LANDSCAPE_AVATAR("FACS_Landscape_Avatar"),
    INCALLUI_LANDSCAPE("INCALLUI_Landscape"),
    INCALL_NOTIF_SERVICE("InCallNotifService"),
    DEBUG_DIALOG("DebugDialog");
    
    public static final Parcelable.Creator<VideoPlayerContext> CREATOR = new Parcelable.Creator<VideoPlayerContext>() { // from class: com.truecaller.videocallerid.utils.analytics.VideoPlayerContext.a
        @Override // android.os.Parcelable.Creator
        public VideoPlayerContext createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return (VideoPlayerContext) Enum.valueOf(VideoPlayerContext.class, parcel.readString());
        }

        @Override // android.os.Parcelable.Creator
        public VideoPlayerContext[] newArray(int i) {
            return new VideoPlayerContext[i];
        }
    };
    private final String value;

    VideoPlayerContext(String str) {
        this.value = str;
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(name());
    }
}
