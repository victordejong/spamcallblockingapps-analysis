package com.truecaller.voip.api;

import androidx.annotation.Keep;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B#\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u001c\u0010\b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\tJ0\u0010\f\u001a\u00020��2\b\b\u0002\u0010\n\u001a\u00020\u00022\u0014\b\u0002\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0006HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R%\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0017\u001a\u0004\b\u0018\u0010\tR\u0019\u0010\n\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\n\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/voip/api/InviteToCallResponseDto;", "", "Lcom/truecaller/voip/api/CallInfoDto;", "component1", "()Lcom/truecaller/voip/api/CallInfoDto;", "", "", "Lcom/truecaller/voip/api/InviteToCallResult;", "component2", "()Ljava/util/Map;", "callInfo", "results", "copy", "(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)Lcom/truecaller/voip/api/InviteToCallResponseDto;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Map;", "getResults", "Lcom/truecaller/voip/api/CallInfoDto;", "getCallInfo", "<init>", "(Lcom/truecaller/voip/api/CallInfoDto;Ljava/util/Map;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/InviteToCallResponseDto.class */
public final class InviteToCallResponseDto {
    private final CallInfoDto callInfo;
    private final Map<String, InviteToCallResult> results;

    /* JADX WARN: Multi-variable type inference failed */
    public InviteToCallResponseDto(CallInfoDto callInfoDto, Map<String, ? extends InviteToCallResult> map) {
        l.e(callInfoDto, "callInfo");
        l.e(map, "results");
        this.callInfo = callInfoDto;
        this.results = map;
    }

    public static /* synthetic */ InviteToCallResponseDto copy$default(InviteToCallResponseDto inviteToCallResponseDto, CallInfoDto callInfoDto, Map map, int i, Object obj) {
        if ((i & 1) != 0) {
            callInfoDto = inviteToCallResponseDto.callInfo;
        }
        if ((i & 2) != 0) {
            map = inviteToCallResponseDto.results;
        }
        return inviteToCallResponseDto.copy(callInfoDto, map);
    }

    public final CallInfoDto component1() {
        return this.callInfo;
    }

    public final Map<String, InviteToCallResult> component2() {
        return this.results;
    }

    public final InviteToCallResponseDto copy(CallInfoDto callInfoDto, Map<String, ? extends InviteToCallResult> map) {
        l.e(callInfoDto, "callInfo");
        l.e(map, "results");
        return new InviteToCallResponseDto(callInfoDto, map);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof InviteToCallResponseDto)) {
                return false;
            }
            InviteToCallResponseDto inviteToCallResponseDto = (InviteToCallResponseDto) obj;
            return l.a(this.callInfo, inviteToCallResponseDto.callInfo) && l.a(this.results, inviteToCallResponseDto.results);
        }
        return true;
    }

    public final CallInfoDto getCallInfo() {
        return this.callInfo;
    }

    public final Map<String, InviteToCallResult> getResults() {
        return this.results;
    }

    public int hashCode() {
        CallInfoDto callInfoDto = this.callInfo;
        int i = 0;
        int hashCode = callInfoDto != null ? callInfoDto.hashCode() : 0;
        Map<String, InviteToCallResult> map = this.results;
        if (map != null) {
            i = map.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("InviteToCallResponseDto(callInfo=");
        m8728C.append(this.callInfo);
        m8728C.append(", results=");
        m8728C.append(this.results);
        m8728C.append(")");
        return m8728C.toString();
    }
}
