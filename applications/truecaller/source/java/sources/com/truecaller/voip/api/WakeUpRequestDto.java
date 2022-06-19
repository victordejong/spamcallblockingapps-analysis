package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.appsflyer.AppsFlyerProperties;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\b\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0005¢\u0006\u0004\b\u0018\u0010\u0019J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J$\u0010\n\u001a\u00020��2\b\b\u0002\u0010\b\u001a\u00020\u00022\b\b\u0002\u0010\t\u001a\u00020\u0005HÆ\u0001¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\f\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\f\u0010\u0007J\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\b\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u0019\u0010\t\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0007¨\u0006\u001a"}, d2 = {"Lcom/truecaller/voip/api/WakeUpRequestDto;", "", "", "component1", "()J", "", "component2", "()Ljava/lang/String;", "callee", AppsFlyerProperties.CHANNEL, "copy", "(JLjava/lang/String;)Lcom/truecaller/voip/api/WakeUpRequestDto;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getCallee", "Ljava/lang/String;", "getChannel", "<init>", "(JLjava/lang/String;)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/WakeUpRequestDto.class */
public final class WakeUpRequestDto {
    private final long callee;
    private final String channel;

    public WakeUpRequestDto(long j, String str) {
        l.e(str, AppsFlyerProperties.CHANNEL);
        this.callee = j;
        this.channel = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.voip.api.WakeUpRequestDto] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    public static /* synthetic */ WakeUpRequestDto copy$default(WakeUpRequestDto wakeUpRequestDto, long j, String str, int i, Object obj) {
        ?? r6 = j;
        if ((i & 1) != 0) {
            r6 = ((WakeUpRequestDto) wakeUpRequestDto).callee;
        }
        if ((i & 2) != 0) {
            str = ((WakeUpRequestDto) wakeUpRequestDto).channel;
        }
        return wakeUpRequestDto.copy(r6, str);
    }

    public final long component1() {
        return this.callee;
    }

    public final String component2() {
        return this.channel;
    }

    public final WakeUpRequestDto copy(long j, String str) {
        l.e(str, AppsFlyerProperties.CHANNEL);
        return new WakeUpRequestDto(j, str);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof WakeUpRequestDto)) {
                return false;
            }
            WakeUpRequestDto wakeUpRequestDto = (WakeUpRequestDto) obj;
            return this.callee == wakeUpRequestDto.callee && l.a(this.channel, wakeUpRequestDto.channel);
        }
        return true;
    }

    public final long getCallee() {
        return this.callee;
    }

    public final String getChannel() {
        return this.channel;
    }

    public int hashCode() {
        int m34274a = C4876d.m34274a(this.callee);
        String str = this.channel;
        return (m34274a * 31) + (str != null ? str.hashCode() : 0);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WakeUpRequestDto(callee=");
        m8728C.append(this.callee);
        m8728C.append(", channel=");
        return C22128a.m8618h(m8728C, this.channel, ")");
    }
}
