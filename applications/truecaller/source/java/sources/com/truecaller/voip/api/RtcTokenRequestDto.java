package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\b\u0087\b\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001a\u0010\u0006\u001a\u00020��2\b\b\u0002\u0010\u0005\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\n\u001a\u00020\tHÖ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u000e\u001a\u00020\r2\b\u0010\f\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u000e\u0010\u000fR\u001c\u0010\u0005\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0005\u0010\u0010\u001a\u0004\b\u0011\u0010\u0004¨\u0006\u0014"}, d2 = {"Lcom/truecaller/voip/api/RtcTokenRequestDto;", "", "", "component1", "()Ljava/lang/String;", RemoteMessageConst.Notification.CHANNEL_ID, "copy", "(Ljava/lang/String;)Lcom/truecaller/voip/api/RtcTokenRequestDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/lang/String;", "getChannelId", "<init>", "(Ljava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/RtcTokenRequestDto.class */
public final class RtcTokenRequestDto {
    @b("channelName")
    private final String channelId;

    public RtcTokenRequestDto(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        this.channelId = str;
    }

    public static /* synthetic */ RtcTokenRequestDto copy$default(RtcTokenRequestDto rtcTokenRequestDto, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = rtcTokenRequestDto.channelId;
        }
        return rtcTokenRequestDto.copy(str);
    }

    public final String component1() {
        return this.channelId;
    }

    public final RtcTokenRequestDto copy(String str) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        return new RtcTokenRequestDto(str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            return (obj instanceof RtcTokenRequestDto) && l.a(this.channelId, ((RtcTokenRequestDto) obj).channelId);
        }
        return true;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public int hashCode() {
        String str = this.channelId;
        return str != null ? str.hashCode() : 0;
    }

    public String toString() {
        return C22128a.m8618h(C22128a.m8728C("RtcTokenRequestDto(channelId="), this.channelId, ")");
    }
}
