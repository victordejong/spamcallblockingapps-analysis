package com.truecaller.voip.api;

import androidx.annotation.Keep;
import com.razorpay.AnalyticsConstants;
import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0087\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0002\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J$\u0010\b\u001a\u00020��2\b\b\u0002\u0010\u0006\u001a\u00020\u00022\b\b\u0002\u0010\u0007\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\b\u0010\tJ\u0010\u0010\u000b\u001a\u00020\nHÖ\u0001¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u000e\u001a\u00020\rHÖ\u0001¢\u0006\u0004\b\u000e\u0010\u000fJ\u001a\u0010\u0012\u001a\u00020\u00112\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0012\u0010\u0013R\u0019\u0010\u0006\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0014\u001a\u0004\b\u0015\u0010\u0004R\u001c\u0010\u0007\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u0007\u0010\u0014\u001a\u0004\b\u0016\u0010\u0004¨\u0006\u0019"}, d2 = {"Lcom/truecaller/voip/api/VoipNumberDto;", "", "", "component1", "()J", "component2", AnalyticsConstants.PHONE, "expiryEpochSeconds", "copy", "(JJ)Lcom/truecaller/voip/api/VoipNumberDto;", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getPhone", "getExpiryEpochSeconds", "<init>", "(JJ)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/api/VoipNumberDto.class */
public final class VoipNumberDto {
    @b("expiry")
    private final long expiryEpochSeconds;
    private final long phone;

    public VoipNumberDto(long j, long j2) {
        this.phone = j;
        this.expiryEpochSeconds = j2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.voip.api.VoipNumberDto] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ VoipNumberDto copy$default(VoipNumberDto voipNumberDto, long j, long j2, int i, Object obj) {
        ?? r7 = j;
        if ((i & 1) != 0) {
            r7 = ((VoipNumberDto) voipNumberDto).phone;
        }
        ?? r9 = j2;
        if ((i & 2) != 0) {
            r9 = ((VoipNumberDto) voipNumberDto).expiryEpochSeconds;
        }
        return voipNumberDto.copy(r7, r9);
    }

    public final long component1() {
        return this.phone;
    }

    public final long component2() {
        return this.expiryEpochSeconds;
    }

    public final VoipNumberDto copy(long j, long j2) {
        return new VoipNumberDto(j, j2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipNumberDto)) {
                return false;
            }
            VoipNumberDto voipNumberDto = (VoipNumberDto) obj;
            return this.phone == voipNumberDto.phone && this.expiryEpochSeconds == voipNumberDto.expiryEpochSeconds;
        }
        return true;
    }

    public final long getExpiryEpochSeconds() {
        return this.expiryEpochSeconds;
    }

    public final long getPhone() {
        return this.phone;
    }

    public int hashCode() {
        return (C4876d.m34274a(this.phone) * 31) + C4876d.m34274a(this.expiryEpochSeconds);
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipNumberDto(phone=");
        m8728C.append(this.phone);
        m8728C.append(", expiryEpochSeconds=");
        return C22128a.m8693K2(m8728C, this.expiryEpochSeconds, ")");
    }
}
