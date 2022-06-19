package com.truecaller.voip.api;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.Set;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��4\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0016\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ*\u0010\u000b\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\u000e\b\u0002\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0011\u001a\u00020\u0010HÖ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u001a\u0010\u0015\u001a\u00020\u00142\b\u0010\u0013\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0015\u0010\u0016R\"\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00060\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0017\u001a\u0004\b\u0018\u0010\bR\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004¨\u0006\u001d"}, d2 = {"Lcom/truecaller/voip/api/CallInfoDto;", "", "", "component1", "()J", "", "Lcom/truecaller/voip/api/CallInfoPeerDto;", "component2", "()Ljava/util/Set;", "voipIdExpiryEpochSeconds", "peers", "copy", "(JLjava/util/Set;)Lcom/truecaller/voip/api/CallInfoDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Set;", "getPeers", "J", "getVoipIdExpiryEpochSeconds", "<init>", "(JLjava/util/Set;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CallInfoDto.class */
public final class CallInfoDto {
    @b("users")
    private final Set<CallInfoPeerDto> peers;
    @b("voipIdExpiry")
    private final long voipIdExpiryEpochSeconds;

    public CallInfoDto(long j, Set<CallInfoPeerDto> set) {
        l.e(set, "peers");
        this.voipIdExpiryEpochSeconds = j;
        this.peers = set;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.voip.api.CallInfoDto] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static /* synthetic */ CallInfoDto copy$default(CallInfoDto callInfoDto, long j, Set set, int i, Object obj) {
        ?? r6 = j;
        if ((i & 1) != 0) {
            r6 = ((CallInfoDto) callInfoDto).voipIdExpiryEpochSeconds;
        }
        Set<CallInfoPeerDto> set2 = set;
        if ((i & 2) != 0) {
            set2 = ((CallInfoDto) callInfoDto).peers;
        }
        return callInfoDto.copy(r6, set2);
    }

    public final long component1() {
        return this.voipIdExpiryEpochSeconds;
    }

    public final Set<CallInfoPeerDto> component2() {
        return this.peers;
    }

    public final CallInfoDto copy(long j, Set<CallInfoPeerDto> set) {
        l.e(set, "peers");
        return new CallInfoDto(j, set);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallInfoDto)) {
                return false;
            }
            CallInfoDto callInfoDto = (CallInfoDto) obj;
            return this.voipIdExpiryEpochSeconds == callInfoDto.voipIdExpiryEpochSeconds && l.a(this.peers, callInfoDto.peers);
        }
        return true;
    }

    public final Set<CallInfoPeerDto> getPeers() {
        return this.peers;
    }

    public final long getVoipIdExpiryEpochSeconds() {
        return this.voipIdExpiryEpochSeconds;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.voipIdExpiryEpochSeconds);
        Set<CallInfoPeerDto> set = this.peers;
        return (m34274a * 31) + (set != null ? set.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallInfoDto(voipIdExpiryEpochSeconds=");
        m8728C.append(this.voipIdExpiryEpochSeconds);
        m8728C.append(", peers=");
        m8728C.append(this.peers);
        m8728C.append(")");
        return m8728C.toString();
    }
}
