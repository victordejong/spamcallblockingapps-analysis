package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B'\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\t\u0010\u0004J8\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0007J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u0016\u001a\u0004\b\u0018\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0016\u001a\u0004\b\u0019\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0007¨\u0006\u001e"}, d2 = {"Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()I", "component3", "component4", AnalyticsConstants.TOKEN, "uid", AnalyticsConstants.MODE, "secret", "copy", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Lcom/truecaller/voip/api/RtcTokenWithEncryptionDto;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getToken", "getSecret", "getMode", "I", "getUid", "<init>", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/RtcTokenWithEncryptionDto.class */
public final class RtcTokenWithEncryptionDto {
    private final String mode;
    private final String secret;
    @b("rtc")
    private final String token;
    private final int uid;

    public RtcTokenWithEncryptionDto(String str, int i, String str2, String str3) {
        C22128a.m8703I0(str, AnalyticsConstants.TOKEN, str2, AnalyticsConstants.MODE, str3, "secret");
        this.token = str;
        this.uid = i;
        this.mode = str2;
        this.secret = str3;
    }

    public static /* synthetic */ RtcTokenWithEncryptionDto copy$default(RtcTokenWithEncryptionDto rtcTokenWithEncryptionDto, String str, int i, String str2, String str3, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = rtcTokenWithEncryptionDto.token;
        }
        if ((i2 & 2) != 0) {
            i = rtcTokenWithEncryptionDto.uid;
        }
        if ((i2 & 4) != 0) {
            str2 = rtcTokenWithEncryptionDto.mode;
        }
        if ((i2 & 8) != 0) {
            str3 = rtcTokenWithEncryptionDto.secret;
        }
        return rtcTokenWithEncryptionDto.copy(str, i, str2, str3);
    }

    public final String component1() {
        return this.token;
    }

    public final int component2() {
        return this.uid;
    }

    public final String component3() {
        return this.mode;
    }

    public final String component4() {
        return this.secret;
    }

    public final RtcTokenWithEncryptionDto copy(String str, int i, String str2, String str3) {
        l.e(str, AnalyticsConstants.TOKEN);
        l.e(str2, AnalyticsConstants.MODE);
        l.e(str3, "secret");
        return new RtcTokenWithEncryptionDto(str, i, str2, str3);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RtcTokenWithEncryptionDto)) {
                return false;
            }
            RtcTokenWithEncryptionDto rtcTokenWithEncryptionDto = (RtcTokenWithEncryptionDto) obj;
            return l.a(this.token, rtcTokenWithEncryptionDto.token) && this.uid == rtcTokenWithEncryptionDto.uid && l.a(this.mode, rtcTokenWithEncryptionDto.mode) && l.a(this.secret, rtcTokenWithEncryptionDto.secret);
        }
        return true;
    }

    public final String getMode() {
        return this.mode;
    }

    public final String getSecret() {
        return this.secret;
    }

    public final String getToken() {
        return this.token;
    }

    public final int getUid() {
        return this.uid;
    }

    public int hashCode() {
        String str = this.token;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int i2 = this.uid;
        String str2 = this.mode;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.secret;
        if (str3 != null) {
            i = str3.hashCode();
        }
        return (((((hashCode * 31) + i2) * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtcTokenWithEncryptionDto(token=");
        m8728C.append(this.token);
        m8728C.append(", uid=");
        m8728C.append(this.uid);
        m8728C.append(", mode=");
        m8728C.append(this.mode);
        m8728C.append(", secret=");
        return C22128a.m8618h(m8728C, this.secret, ")");
    }
}
