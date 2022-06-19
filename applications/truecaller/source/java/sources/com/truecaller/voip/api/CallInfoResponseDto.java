package com.truecaller.voip.api;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u001a\u0010\u001bJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\r\u001a\u00020\fHÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\b\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\b\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007¨\u0006\u001c"}, d2 = {"Lcom/truecaller/voip/api/CallInfoResponseDto;", "", "Lcom/truecaller/voip/api/AgoraInfoDto;", "component1", "()Lcom/truecaller/voip/api/AgoraInfoDto;", "Lcom/truecaller/voip/api/CallInfoDto;", "component2", "()Lcom/truecaller/voip/api/CallInfoDto;", "agoraInfo", "callInfo", "copy", "(Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)Lcom/truecaller/voip/api/CallInfoResponseDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Lcom/truecaller/voip/api/AgoraInfoDto;", "getAgoraInfo", "Lcom/truecaller/voip/api/CallInfoDto;", "getCallInfo", "<init>", "(Lcom/truecaller/voip/api/AgoraInfoDto;Lcom/truecaller/voip/api/CallInfoDto;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CallInfoResponseDto.class */
public final class CallInfoResponseDto {
    @b("agora")
    private final AgoraInfoDto agoraInfo;
    private final CallInfoDto callInfo;

    public CallInfoResponseDto(AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto) {
        l.e(agoraInfoDto, "agoraInfo");
        l.e(callInfoDto, "callInfo");
        this.agoraInfo = agoraInfoDto;
        this.callInfo = callInfoDto;
    }

    public static /* synthetic */ CallInfoResponseDto copy$default(CallInfoResponseDto callInfoResponseDto, AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto, int i, Object obj) {
        if ((i & 1) != 0) {
            agoraInfoDto = callInfoResponseDto.agoraInfo;
        }
        if ((i & 2) != 0) {
            callInfoDto = callInfoResponseDto.callInfo;
        }
        return callInfoResponseDto.copy(agoraInfoDto, callInfoDto);
    }

    public final AgoraInfoDto component1() {
        return this.agoraInfo;
    }

    public final CallInfoDto component2() {
        return this.callInfo;
    }

    public final CallInfoResponseDto copy(AgoraInfoDto agoraInfoDto, CallInfoDto callInfoDto) {
        l.e(agoraInfoDto, "agoraInfo");
        l.e(callInfoDto, "callInfo");
        return new CallInfoResponseDto(agoraInfoDto, callInfoDto);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallInfoResponseDto)) {
                return false;
            }
            CallInfoResponseDto callInfoResponseDto = (CallInfoResponseDto) obj;
            return l.a(this.agoraInfo, callInfoResponseDto.agoraInfo) && l.a(this.callInfo, callInfoResponseDto.callInfo);
        }
        return true;
    }

    public final AgoraInfoDto getAgoraInfo() {
        return this.agoraInfo;
    }

    public final CallInfoDto getCallInfo() {
        return this.callInfo;
    }

    public int hashCode() {
        AgoraInfoDto agoraInfoDto = this.agoraInfo;
        int i = 0;
        int hashCode = agoraInfoDto != null ? agoraInfoDto.hashCode() : 0;
        CallInfoDto callInfoDto = this.callInfo;
        if (callInfoDto != null) {
            i = callInfoDto.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallInfoResponseDto(agoraInfo=");
        m8728C.append(this.agoraInfo);
        m8728C.append(", callInfo=");
        m8728C.append(this.callInfo);
        m8728C.append(")");
        return m8728C.toString();
    }
}
