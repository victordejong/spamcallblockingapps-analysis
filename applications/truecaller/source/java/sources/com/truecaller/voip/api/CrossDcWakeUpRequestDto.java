package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.appsflyer.AppsFlyerProperties;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\n\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\u0005¢\u0006\u0004\b\u001b\u0010\u001cJ\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\b\u0010\u0007J.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0007J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0004R\u0019\u0010\u000b\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\u0018\u001a\u0004\b\u0019\u0010\u0007R\u001c\u0010\n\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u001a\u0010\u0007¨\u0006\u001d"}, d2 = {"Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "component3", "callee", "ownVoipId", AppsFlyerProperties.CHANNEL, "copy", "(JLjava/lang/String;Ljava/lang/String;)Lcom/truecaller/voip/api/CrossDcWakeUpRequestDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getCallee", "Ljava/lang/String;", "getChannel", "getOwnVoipId", "<init>", "(JLjava/lang/String;Ljava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/CrossDcWakeUpRequestDto.class */
public final class CrossDcWakeUpRequestDto {
    private final long callee;
    private final String channel;
    @b("voipId")
    private final String ownVoipId;

    public CrossDcWakeUpRequestDto(long j, String str, String str2) {
        l.e(str, "ownVoipId");
        l.e(str2, AppsFlyerProperties.CHANNEL);
        this.callee = j;
        this.ownVoipId = str;
        this.channel = str2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.voip.api.CrossDcWakeUpRequestDto] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ CrossDcWakeUpRequestDto copy$default(CrossDcWakeUpRequestDto crossDcWakeUpRequestDto, long j, String str, String str2, int i, Object obj) {
        ?? r7 = j;
        if ((i & 1) != 0) {
            r7 = ((CrossDcWakeUpRequestDto) crossDcWakeUpRequestDto).callee;
        }
        if ((i & 2) != 0) {
            str = ((CrossDcWakeUpRequestDto) crossDcWakeUpRequestDto).ownVoipId;
        }
        if ((i & 4) != 0) {
            str2 = ((CrossDcWakeUpRequestDto) crossDcWakeUpRequestDto).channel;
        }
        return crossDcWakeUpRequestDto.copy(r7, str, str2);
    }

    public final long component1() {
        return this.callee;
    }

    public final String component2() {
        return this.ownVoipId;
    }

    public final String component3() {
        return this.channel;
    }

    public final CrossDcWakeUpRequestDto copy(long j, String str, String str2) {
        l.e(str, "ownVoipId");
        l.e(str2, AppsFlyerProperties.CHANNEL);
        return new CrossDcWakeUpRequestDto(j, str, str2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CrossDcWakeUpRequestDto)) {
                return false;
            }
            CrossDcWakeUpRequestDto crossDcWakeUpRequestDto = (CrossDcWakeUpRequestDto) obj;
            return this.callee == crossDcWakeUpRequestDto.callee && l.a(this.ownVoipId, crossDcWakeUpRequestDto.ownVoipId) && l.a(this.channel, crossDcWakeUpRequestDto.channel);
        }
        return true;
    }

    public final long getCallee() {
        return this.callee;
    }

    public final String getChannel() {
        return this.channel;
    }

    public final String getOwnVoipId() {
        return this.ownVoipId;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.callee);
        String str = this.ownVoipId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.channel;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((m34274a * 31) + hashCode) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CrossDcWakeUpRequestDto(callee=");
        m8728C.append(this.callee);
        m8728C.append(", ownVoipId=");
        m8728C.append(this.ownVoipId);
        m8728C.append(", channel=");
        return C22128a.m8618h(m8728C, this.channel, ")");
    }
}
