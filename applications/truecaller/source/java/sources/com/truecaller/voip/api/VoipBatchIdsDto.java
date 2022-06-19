package com.truecaller.voip.api;

import androidx.annotation.Keep;
import e.m.e.d0.b;
import java.util.Map;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\t\b\u0087\b\u0018��2\u00020\u0001B%\u0012\u0014\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002\u0012\u0006\u0010\n\u001a\u00020\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u001e\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0002HÆ\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ2\u0010\u000b\u001a\u00020��2\u0016\b\u0002\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00022\b\b\u0002\u0010\n\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\r\u001a\u00020\u0003HÖ\u0001¢\u0006\u0004\b\r\u0010\u000eJ\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R'\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\t\u0010\u0016\u001a\u0004\b\u0017\u0010\u0005R\u001c\u0010\n\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\b¨\u0006\u001c"}, d2 = {"Lcom/truecaller/voip/api/VoipBatchIdsDto;", "", "", "", "component1", "()Ljava/util/Map;", "", "component2", "()J", "ids", "expiryEpochSeconds", "copy", "(Ljava/util/Map;J)Lcom/truecaller/voip/api/VoipBatchIdsDto;", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "Ljava/util/Map;", "getIds", "J", "getExpiryEpochSeconds", "<init>", "(Ljava/util/Map;J)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/VoipBatchIdsDto.class */
public final class VoipBatchIdsDto {
    @b("expiry")
    private final long expiryEpochSeconds;
    private final Map<String, String> ids;

    public VoipBatchIdsDto(Map<String, String> map, long j) {
        this.ids = map;
        this.expiryEpochSeconds = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.truecaller.voip.api.VoipBatchIdsDto] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    public static /* synthetic */ VoipBatchIdsDto copy$default(VoipBatchIdsDto voipBatchIdsDto, Map map, long j, int i, Object obj) {
        Map<String, String> map2 = map;
        if ((i & 1) != 0) {
            map2 = ((VoipBatchIdsDto) voipBatchIdsDto).ids;
        }
        ?? r7 = j;
        if ((i & 2) != 0) {
            r7 = ((VoipBatchIdsDto) voipBatchIdsDto).expiryEpochSeconds;
        }
        return voipBatchIdsDto.copy(map2, r7);
    }

    public final Map<String, String> component1() {
        return this.ids;
    }

    public final long component2() {
        return this.expiryEpochSeconds;
    }

    public final VoipBatchIdsDto copy(Map<String, String> map, long j) {
        return new VoipBatchIdsDto(map, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipBatchIdsDto)) {
                return false;
            }
            VoipBatchIdsDto voipBatchIdsDto = (VoipBatchIdsDto) obj;
            return l.a(this.ids, voipBatchIdsDto.ids) && this.expiryEpochSeconds == voipBatchIdsDto.expiryEpochSeconds;
        }
        return true;
    }

    public final long getExpiryEpochSeconds() {
        return this.expiryEpochSeconds;
    }

    public final Map<String, String> getIds() {
        return this.ids;
    }

    public int hashCode() {
        Map<String, String> map = this.ids;
        return ((map != null ? map.hashCode() : 0) * 31) + C4876d.m34274a(this.expiryEpochSeconds);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipBatchIdsDto(ids=");
        m8728C.append(this.ids);
        m8728C.append(", expiryEpochSeconds=");
        return C22128a.m8693K2(m8728C, this.expiryEpochSeconds, ")");
    }
}
