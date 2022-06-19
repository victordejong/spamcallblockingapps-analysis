package com.truecaller.notifications;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Keep;
import com.truecaller.account.network.TokenResponseDto;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p437c.p531c0.C10031q;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b#\u0010$J\r\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0007\u0010\u0004J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\nJ\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0012HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016J\u0010\u0010\u0017\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0017\u0010\nJ \u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u001a\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u001c\u0010\u001dR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001e\u001a\u0004\b \u0010\u0004R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010!\u001a\u0004\b\"\u0010\n¨\u0006%"}, d2 = {"Lcom/truecaller/notifications/OtpAnalyticsModel;", "Landroid/os/Parcelable;", "", "getContext", "()Ljava/lang/String;", "getEventInfo", "component1", "component2", "", "component3", "()I", "otpProcessor", "senderId", "transport", "copy", "(Ljava/lang/String;Ljava/lang/String;I)Lcom/truecaller/notifications/OtpAnalyticsModel;", "toString", "hashCode", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "describeContents", "Landroid/os/Parcel;", "parcel", "flags", "Ls1/s;", "writeToParcel", "(Landroid/os/Parcel;I)V", "Ljava/lang/String;", "getSenderId", "getOtpProcessor", "I", "getTransport", "<init>", "(Ljava/lang/String;Ljava/lang/String;I)V", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/OtpAnalyticsModel.class */
public final class OtpAnalyticsModel implements Parcelable {
    public static final Parcelable.Creator<OtpAnalyticsModel> CREATOR = new C4315a();
    private final String otpProcessor;
    private final String senderId;
    private final int transport;

    /* renamed from: com.truecaller.notifications.OtpAnalyticsModel$a */
    /* loaded from: classes11-dex2jar.jar:com/truecaller/notifications/OtpAnalyticsModel$a.class */
    public static final class C4315a implements Parcelable.Creator<OtpAnalyticsModel> {
        @Override // android.os.Parcelable.Creator
        public OtpAnalyticsModel createFromParcel(Parcel parcel) {
            l.e(parcel, "in");
            return new OtpAnalyticsModel(parcel.readString(), parcel.readString(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public OtpAnalyticsModel[] newArray(int i) {
            return new OtpAnalyticsModel[i];
        }
    }

    public OtpAnalyticsModel(String str, String str2, int i) {
        l.e(str, "otpProcessor");
        l.e(str2, "senderId");
        this.otpProcessor = str;
        this.senderId = str2;
        this.transport = i;
    }

    public static /* synthetic */ OtpAnalyticsModel copy$default(OtpAnalyticsModel otpAnalyticsModel, String str, String str2, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = otpAnalyticsModel.otpProcessor;
        }
        if ((i2 & 2) != 0) {
            str2 = otpAnalyticsModel.senderId;
        }
        if ((i2 & 4) != 0) {
            i = otpAnalyticsModel.transport;
        }
        return otpAnalyticsModel.copy(str, str2, i);
    }

    public final String component1() {
        return this.otpProcessor;
    }

    public final String component2() {
        return this.senderId;
    }

    public final int component3() {
        return this.transport;
    }

    public final OtpAnalyticsModel copy(String str, String str2, int i) {
        l.e(str, "otpProcessor");
        l.e(str2, "senderId");
        return new OtpAnalyticsModel(str, str2, i);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof OtpAnalyticsModel)) {
                return false;
            }
            OtpAnalyticsModel otpAnalyticsModel = (OtpAnalyticsModel) obj;
            return l.a(this.otpProcessor, otpAnalyticsModel.otpProcessor) && l.a(this.senderId, otpAnalyticsModel.senderId) && this.transport == otpAnalyticsModel.transport;
        }
        return true;
    }

    public final String getContext() {
        int i = this.transport;
        return i != 0 ? i != 1 ? i != 2 ? "unsupported" : "im" : "mms" : TokenResponseDto.METHOD_SMS;
    }

    public final String getEventInfo() {
        return C10031q.m26803a(this.senderId, this.transport == 2);
    }

    public final String getOtpProcessor() {
        return this.otpProcessor;
    }

    public final String getSenderId() {
        return this.senderId;
    }

    public final int getTransport() {
        return this.transport;
    }

    public int hashCode() {
        String str = this.otpProcessor;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.senderId;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + this.transport;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("OtpAnalyticsModel(otpProcessor=");
        m8728C.append(this.otpProcessor);
        m8728C.append(", senderId=");
        m8728C.append(this.senderId);
        m8728C.append(", transport=");
        return C22128a.m8697J2(m8728C, this.transport, ")");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        l.e(parcel, "parcel");
        parcel.writeString(this.otpProcessor);
        parcel.writeString(this.senderId);
        parcel.writeInt(this.transport);
    }
}
