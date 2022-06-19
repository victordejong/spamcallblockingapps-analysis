package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0016\u0010\u0017J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\r\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\r\u0010\u0007J\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0012\u001a\u0004\b\u0013\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007¨\u0006\u0018"}, d2 = {"Lcom/truecaller/voip/api/RtcTokenDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", AnalyticsConstants.TOKEN, "uid", "copy", "(Ljava/lang/String;I)Lcom/truecaller/voip/api/RtcTokenDto;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getToken", "I", "getUid", "<init>", "(Ljava/lang/String;I)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/RtcTokenDto.class */
public final class RtcTokenDto {
    @b("rtc")
    private final String token;
    private final int uid;

    public RtcTokenDto(String str, int i) {
        l.e(str, AnalyticsConstants.TOKEN);
        this.token = str;
        this.uid = i;
    }

    public static /* synthetic */ RtcTokenDto copy$default(RtcTokenDto rtcTokenDto, String str, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = rtcTokenDto.token;
        }
        if ((i2 & 2) != 0) {
            i = rtcTokenDto.uid;
        }
        return rtcTokenDto.copy(str, i);
    }

    public final String component1() {
        return this.token;
    }

    public final int component2() {
        return this.uid;
    }

    public final RtcTokenDto copy(String str, int i) {
        l.e(str, AnalyticsConstants.TOKEN);
        return new RtcTokenDto(str, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RtcTokenDto)) {
                return false;
            }
            RtcTokenDto rtcTokenDto = (RtcTokenDto) obj;
            return l.a(this.token, rtcTokenDto.token) && this.uid == rtcTokenDto.uid;
        }
        return true;
    }

    public final String getToken() {
        return this.token;
    }

    public final int getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.token;
        return ((str != null ? str.hashCode() : 0) * 31) + this.uid;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtcTokenDto(token=");
        m8728C.append(this.token);
        m8728C.append(", uid=");
        return C22128a.m8697J2(m8728C, this.uid, ")");
    }
}
