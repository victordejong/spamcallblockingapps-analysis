package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.appsflyer.AppsFlyerProperties;
import com.huawei.hms.push.constant.RemoteMessageConst;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000b\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\f\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\b¢\u0006\u0004\b\u001e\u0010\u001fJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ.\u0010\u000e\u001a\u00020��2\b\b\u0002\u0010\u000b\u001a\u00020\u00022\b\b\u0002\u0010\f\u001a\u00020\u00052\b\b\u0002\u0010\r\u001a\u00020\bHÆ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0010\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u0011HÖ\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001a\u0010\u0016\u001a\u00020\u00152\b\u0010\u0014\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0016\u0010\u0017R\u001c\u0010\f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u0019\u0010\r\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001a\u001a\u0004\b\u001b\u0010\nR\u001c\u0010\u000b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u001c\u001a\u0004\b\u001d\u0010\u0004¨\u0006 "}, d2 = {"Lcom/truecaller/voip/api/CreateCallResponseDto;", "", "", "component1", "()Ljava/lang/String;", "Lcom/truecaller/voip/api/AgoraInfoDto;", "component2", "()Lcom/truecaller/voip/api/AgoraInfoDto;", "Lcom/truecaller/voip/api/CallInfoDto;", "component3", "()Lcom/truecaller/voip/api/CallInfoDto;", RemoteMessageConst.Notification.CHANNEL_ID, "agoraInfo", "callInfo", "copy", "(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)Lcom/truecaller/voip/api/CreateCallResponseDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/voip/api/AgoraInfoDto;", "getAgoraInfo", "Lcom/truecaller/voip/api/CallInfoDto;", "getCallInfo", "Ljava/lang/String;", "getChannelId", "<init>", "(Ljava/lang/String;Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CreateCallResponseDto.class */
public final class CreateCallResponseDto {
    @b("agora")
    private final AgoraInfoDto agoraInfo;
    private final CallInfoDto callInfo;
    @b(AppsFlyerProperties.CHANNEL)
    private final String channelId;

    public CreateCallResponseDto(String str, AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(agoraInfoDto, "agoraInfo");
        l.e(callInfoDto, "callInfo");
        this.channelId = str;
        this.agoraInfo = agoraInfoDto;
        this.callInfo = callInfoDto;
    }

    public static /* synthetic */ CreateCallResponseDto copy$default(CreateCallResponseDto createCallResponseDto, String str, AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto, int i, Object obj) {
        if ((i & 1) != 0) {
            str = createCallResponseDto.channelId;
        }
        if ((i & 2) != 0) {
            agoraInfoDto = createCallResponseDto.agoraInfo;
        }
        if ((i & 4) != 0) {
            callInfoDto = createCallResponseDto.callInfo;
        }
        return createCallResponseDto.copy(str, agoraInfoDto, callInfoDto);
    }

    public final String component1() {
        return this.channelId;
    }

    public final AgoraInfoDto component2() {
        return this.agoraInfo;
    }

    public final CallInfoDto component3() {
        return this.callInfo;
    }

    public final CreateCallResponseDto copy(String str, AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto) {
        l.e(str, RemoteMessageConst.Notification.CHANNEL_ID);
        l.e(agoraInfoDto, "agoraInfo");
        l.e(callInfoDto, "callInfo");
        return new CreateCallResponseDto(str, agoraInfoDto, callInfoDto);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CreateCallResponseDto)) {
                return false;
            }
            CreateCallResponseDto createCallResponseDto = (CreateCallResponseDto) obj;
            return l.a(this.channelId, createCallResponseDto.channelId) && l.a(this.agoraInfo, createCallResponseDto.agoraInfo) && l.a(this.callInfo, createCallResponseDto.callInfo);
        }
        return true;
    }

    public final AgoraInfoDto getAgoraInfo() {
        return this.agoraInfo;
    }

    public final CallInfoDto getCallInfo() {
        return this.callInfo;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public int hashCode() {
        String str = this.channelId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        AgoraInfoDto agoraInfoDto = this.agoraInfo;
        int hashCode2 = agoraInfoDto != null ? agoraInfoDto.hashCode() : 0;
        CallInfoDto callInfoDto = this.callInfo;
        if (callInfoDto != null) {
            i = callInfoDto.hashCode();
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CreateCallResponseDto(channelId=");
        m8728C.append(this.channelId);
        m8728C.append(", agoraInfo=");
        m8728C.append(this.agoraInfo);
        m8728C.append(", callInfo=");
        m8728C.append(this.callInfo);
        m8728C.append(")");
        return m8728C.toString();
    }
}
