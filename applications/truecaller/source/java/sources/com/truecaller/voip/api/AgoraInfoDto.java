package com.truecaller.voip.api;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\r\n\u0002\u0010\u000b\n\u0002\b\u000e\b\u0087\b\u0018��2\u00020\u0001B7\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\u0006\u0010\u0010\u001a\u00020\u0005\u0012\u0006\u0010\u0011\u001a\u00020\u0005\u0012\u0006\u0010\u0012\u001a\u00020\u0005\u0012\u0006\u0010\u0013\u001a\u00020\u000b¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0010\u0010\n\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u0007J\u0010\u0010\f\u001a\u00020\u000bHÆ\u0003¢\u0006\u0004\b\f\u0010\rJL\u0010\u0014\u001a\u00020��2\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\b\b\u0002\u0010\u0010\u001a\u00020\u00052\b\b\u0002\u0010\u0011\u001a\u00020\u00052\b\b\u0002\u0010\u0012\u001a\u00020\u00052\b\b\u0002\u0010\u0013\u001a\u00020\u000bHÆ\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0016\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0007J\u0010\u0010\u0017\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0004J\u001a\u0010\u001a\u001a\u00020\u00192\b\u0010\u0018\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u001a\u0010\u001bR\u0019\u0010\u0010\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001c\u001a\u0004\b\u001d\u0010\u0007R\u0019\u0010\u000e\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001e\u001a\u0004\b\u001f\u0010\u0004R\u001c\u0010\u0013\u001a\u00020\u000b8\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0013\u0010 \u001a\u0004\b!\u0010\rR\u0019\u0010\u0012\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0012\u0010\u001c\u001a\u0004\b\"\u0010\u0007R\u0019\u0010\u000f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u001c\u001a\u0004\b#\u0010\u0007R\u0019\u0010\u0011\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u001c\u001a\u0004\b$\u0010\u0007¨\u0006'"}, d2 = {"Lcom/truecaller/voip/api/AgoraInfoDto;", "", "", "component1", "()I", "", "component2", "()Ljava/lang/String;", "component3", "component4", "component5", "", "component6", "()J", "rtcUid", "rtcToken", "rtcMode", "rtcSecret", "rtmToken", "rtmExpiryEpochSeconds", "copy", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lcom/truecaller/voip/api/AgoraInfoDto;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getRtcMode", "I", "getRtcUid", "J", "getRtmExpiryEpochSeconds", "getRtmToken", "getRtcToken", "getRtcSecret", "<init>", "(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/AgoraInfoDto.class */
public final class AgoraInfoDto {
    private final String rtcMode;
    private final String rtcSecret;
    private final String rtcToken;
    private final int rtcUid;
    @b("rtmExpiry")
    private final long rtmExpiryEpochSeconds;
    private final String rtmToken;

    public AgoraInfoDto(int i, String str, String str2, String str3, String str4, long j) {
        C22128a.m8699J0(str, "rtcToken", str2, "rtcMode", str3, "rtcSecret", str4, "rtmToken");
        this.rtcUid = i;
        this.rtcToken = str;
        this.rtcMode = str2;
        this.rtcSecret = str3;
        this.rtmToken = str4;
        this.rtmExpiryEpochSeconds = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r15v1 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.voip.api.AgoraInfoDto] */
    public static /* synthetic */ AgoraInfoDto copy$default(AgoraInfoDto agoraInfoDto, int i, String str, String str2, String str3, String str4, long j, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = ((AgoraInfoDto) agoraInfoDto).rtcUid;
        }
        if ((i2 & 2) != 0) {
            str = ((AgoraInfoDto) agoraInfoDto).rtcToken;
        }
        if ((i2 & 4) != 0) {
            str2 = ((AgoraInfoDto) agoraInfoDto).rtcMode;
        }
        if ((i2 & 8) != 0) {
            str3 = ((AgoraInfoDto) agoraInfoDto).rtcSecret;
        }
        if ((i2 & 16) != 0) {
            str4 = ((AgoraInfoDto) agoraInfoDto).rtmToken;
        }
        ?? r15 = j;
        if ((i2 & 32) != 0) {
            r15 = ((AgoraInfoDto) agoraInfoDto).rtmExpiryEpochSeconds;
        }
        return agoraInfoDto.copy(i, str, str2, str3, str4, r15);
    }

    public final int component1() {
        return this.rtcUid;
    }

    public final String component2() {
        return this.rtcToken;
    }

    public final String component3() {
        return this.rtcMode;
    }

    public final String component4() {
        return this.rtcSecret;
    }

    public final String component5() {
        return this.rtmToken;
    }

    public final long component6() {
        return this.rtmExpiryEpochSeconds;
    }

    public final AgoraInfoDto copy(int i, String str, String str2, String str3, String str4, long j) {
        l.e(str, "rtcToken");
        l.e(str2, "rtcMode");
        l.e(str3, "rtcSecret");
        l.e(str4, "rtmToken");
        return new AgoraInfoDto(i, str, str2, str3, str4, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof AgoraInfoDto)) {
                return false;
            }
            AgoraInfoDto agoraInfoDto = (AgoraInfoDto) obj;
            return this.rtcUid == agoraInfoDto.rtcUid && l.a(this.rtcToken, agoraInfoDto.rtcToken) && l.a(this.rtcMode, agoraInfoDto.rtcMode) && l.a(this.rtcSecret, agoraInfoDto.rtcSecret) && l.a(this.rtmToken, agoraInfoDto.rtmToken) && this.rtmExpiryEpochSeconds == agoraInfoDto.rtmExpiryEpochSeconds;
        }
        return true;
    }

    public final String getRtcMode() {
        return this.rtcMode;
    }

    public final String getRtcSecret() {
        return this.rtcSecret;
    }

    public final String getRtcToken() {
        return this.rtcToken;
    }

    public final int getRtcUid() {
        return this.rtcUid;
    }

    public final long getRtmExpiryEpochSeconds() {
        return this.rtmExpiryEpochSeconds;
    }

    public final String getRtmToken() {
        return this.rtmToken;
    }

    public int hashCode() {
        int i = this.rtcUid;
        String str = this.rtcToken;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.rtcMode;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        String str3 = this.rtcSecret;
        int hashCode3 = str3 != null ? str3.hashCode() : 0;
        String str4 = this.rtmToken;
        if (str4 != null) {
            i2 = str4.hashCode();
        }
        return (((((((((i * 31) + hashCode) * 31) + hashCode2) * 31) + hashCode3) * 31) + i2) * 31) + C4876d.m34274a(this.rtmExpiryEpochSeconds);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("AgoraInfoDto(rtcUid=");
        m8728C.append(this.rtcUid);
        m8728C.append(", rtcToken=");
        m8728C.append(this.rtcToken);
        m8728C.append(", rtcMode=");
        m8728C.append(this.rtcMode);
        m8728C.append(", rtcSecret=");
        m8728C.append(this.rtcSecret);
        m8728C.append(", rtmToken=");
        m8728C.append(this.rtmToken);
        m8728C.append(", rtmExpiryEpochSeconds=");
        return C22128a.m8693K2(m8728C, this.rtmExpiryEpochSeconds, ")");
    }
}
