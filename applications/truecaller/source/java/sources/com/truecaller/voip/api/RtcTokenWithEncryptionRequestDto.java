package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\f\u0010\u0004J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0014\u001a\u0004\b\u0015\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004¨\u0006\u001a"}, d2 = {"Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()J", RemoteMessageConst.Notification.CHANNEL_ID, AnalyticsConstants.PHONE, "copy", "(Ljava/lang/String;J)Lcom/truecaller/voip/api/RtcTokenWithEncryptionRequestDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getPhone", "Ljava/lang/String;", "getChannelId", "<init>", "(Ljava/lang/String;J)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/RtcTokenWithEncryptionRequestDto.class */
public final class RtcTokenWithEncryptionRequestDto {
    @b("channelName")
    private final String channelId;
    private final long phone;

    public RtcTokenWithEncryptionRequestDto(String str, long j) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        this.channelId = str;
        this.phone = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.voip.api.RtcTokenWithEncryptionRequestDto] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ RtcTokenWithEncryptionRequestDto copy$default(RtcTokenWithEncryptionRequestDto rtcTokenWithEncryptionRequestDto, String str, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((RtcTokenWithEncryptionRequestDto) rtcTokenWithEncryptionRequestDto).channelId;
        }
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ((RtcTokenWithEncryptionRequestDto) rtcTokenWithEncryptionRequestDto).phone;
        }
        return rtcTokenWithEncryptionRequestDto.copy(str, r7);
    }

    public final String component1() {
        return this.channelId;
    }

    public final long component2() {
        return this.phone;
    }

    public final RtcTokenWithEncryptionRequestDto copy(String str, long j) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        return new RtcTokenWithEncryptionRequestDto(str, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RtcTokenWithEncryptionRequestDto)) {
                return false;
            }
            RtcTokenWithEncryptionRequestDto rtcTokenWithEncryptionRequestDto = (RtcTokenWithEncryptionRequestDto) obj;
            return l.a(this.channelId, rtcTokenWithEncryptionRequestDto.channelId) && this.phone == rtcTokenWithEncryptionRequestDto.phone;
        }
        return true;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final long getPhone() {
        return this.phone;
    }

    public int hashCode() {
        String str = this.channelId;
        return ((str != null ? str.hashCode() : 0) * 31) + C4876d.m34274a(this.phone);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("RtcTokenWithEncryptionRequestDto(channelId=");
        m8728C.append(this.channelId);
        m8728C.append(", phone=");
        return C22128a.m8693K2(m8728C, this.phone, ")");
    }
}
