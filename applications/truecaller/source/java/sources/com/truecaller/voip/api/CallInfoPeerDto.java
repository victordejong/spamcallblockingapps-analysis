package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\n\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0011\u001a\u00020\bHÖ\u0001¢\u0006\u0004\b\u0011\u0010\nJ\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\u000b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\f\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\n¨\u0006\u001e"}, d2 = {"Lcom/truecaller/voip/api/CallInfoPeerDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()J", "", "component3", "()I", "voipId", AnalyticsConstants.PHONE, "rtcUid", "copy", "(Ljava/lang/String;JI)Lcom/truecaller/voip/api/CallInfoPeerDto;", "toString", "hashCode", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getVoipId", "J", "getPhone", "I", "getRtcUid", "<init>", "(Ljava/lang/String;JI)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CallInfoPeerDto.class */
public final class CallInfoPeerDto {
    private final long phone;
    private final int rtcUid;
    private final String voipId;

    public CallInfoPeerDto(String str, long j, int i) {
        l.e(str, "voipId");
        this.voipId = str;
        this.phone = j;
        this.rtcUid = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.voip.api.CallInfoPeerDto] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public static /* synthetic */ CallInfoPeerDto copy$default(CallInfoPeerDto callInfoPeerDto, String str, long j, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            str = ((CallInfoPeerDto) callInfoPeerDto).voipId;
        }
        ?? r8 = j;
        if ((i2 & 2) != 0) {
            r8 = ((CallInfoPeerDto) callInfoPeerDto).phone;
        }
        if ((i2 & 4) != 0) {
            i = ((CallInfoPeerDto) callInfoPeerDto).rtcUid;
        }
        return callInfoPeerDto.copy(str, r8, i);
    }

    public final String component1() {
        return this.voipId;
    }

    public final long component2() {
        return this.phone;
    }

    public final int component3() {
        return this.rtcUid;
    }

    public final CallInfoPeerDto copy(String str, long j, int i) {
        l.e(str, "voipId");
        return new CallInfoPeerDto(str, j, i);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallInfoPeerDto)) {
                return false;
            }
            CallInfoPeerDto callInfoPeerDto = (CallInfoPeerDto) obj;
            return l.a(this.voipId, callInfoPeerDto.voipId) && this.phone == callInfoPeerDto.phone && this.rtcUid == callInfoPeerDto.rtcUid;
        }
        return true;
    }

    public final long getPhone() {
        return this.phone;
    }

    public final int getRtcUid() {
        return this.rtcUid;
    }

    public final String getVoipId() {
        return this.voipId;
    }

    public int hashCode() {
        String str = this.voipId;
        return ((((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.phone)) * 31) + this.rtcUid;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallInfoPeerDto(voipId=");
        m8728C.append(this.voipId);
        m8728C.append(", phone=");
        m8728C.append(this.phone);
        m8728C.append(", rtcUid=");
        return C22128a.m8697J2(m8728C, this.rtcUid, ")");
    }
}
