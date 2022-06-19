package com.truecaller.voip.p189db;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0010\b\u0087\b\u0018��2\u00020\u0001B\u001f\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0004\b!\u0010\"J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0005\u0010\u0004J\u0010\u0010\u0007\u001a\u00020\u0006HÆ\u0003¢\u0006\u0004\b\u0007\u0010\bJ.\u0010\f\u001a\u00020��2\b\b\u0002\u0010\t\u001a\u00020\u00022\b\b\u0002\u0010\n\u001a\u00020\u00022\b\b\u0002\u0010\u000b\u001a\u00020\u0006HÆ\u0001¢\u0006\u0004\b\f\u0010\rJ\u0010\u0010\u000e\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u000e\u0010\u0004J\u0010\u0010\u0010\u001a\u00020\u000fHÖ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u001a\u0010\u0014\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u000b\u001a\u00020\u00068\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000b\u0010\u0016\u001a\u0004\b\u0017\u0010\bR\u001c\u0010\n\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\n\u0010\u0018\u001a\u0004\b\u0019\u0010\u0004R\u001c\u0010\t\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u001a\u0010\u0004R$\u0010\u001b\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\u001e\"\u0004\b\u001f\u0010 ¨\u0006#"}, d2 = {"Lcom/truecaller/voip/db/VoipIdCache;", "", "", "component1", "()Ljava/lang/String;", "component2", "", "component3", "()J", "voipId", "number", "expiryEpochSeconds", "copy", "(Ljava/lang/String;Ljava/lang/String;J)Lcom/truecaller/voip/db/VoipIdCache;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getExpiryEpochSeconds", "Ljava/lang/String;", "getNumber", "getVoipId", "id", "Ljava/lang/Long;", "getId", "()Ljava/lang/Long;", "setId", "(Ljava/lang/Long;)V", "<init>", "(Ljava/lang/String;Ljava/lang/String;J)V", "voip_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* renamed from: com.truecaller.voip.db.VoipIdCache */
/* loaded from: classes15-dex2jar.jar:com/truecaller/voip/db/VoipIdCache.class */
public final class VoipIdCache {
    private final long expiryEpochSeconds;

    /* renamed from: id */
    private Long f16352id;
    private final String number;
    private final String voipId;

    public VoipIdCache(String str, String str2, long j) {
        l.e(str, "voipId");
        l.e(str2, "number");
        this.voipId = str;
        this.number = str2;
        this.expiryEpochSeconds = j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v9, types: [long] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.truecaller.voip.db.VoipIdCache] */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    public static /* synthetic */ VoipIdCache copy$default(VoipIdCache voipIdCache, String str, String str2, long j, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((VoipIdCache) voipIdCache).voipId;
        }
        if ((i & 2) != 0) {
            str2 = ((VoipIdCache) voipIdCache).number;
        }
        ?? r9 = j;
        if ((i & 4) != 0) {
            r9 = ((VoipIdCache) voipIdCache).expiryEpochSeconds;
        }
        return voipIdCache.copy(str, str2, r9);
    }

    public final String component1() {
        return this.voipId;
    }

    public final String component2() {
        return this.number;
    }

    public final long component3() {
        return this.expiryEpochSeconds;
    }

    public final VoipIdCache copy(String str, String str2, long j) {
        l.e(str, "voipId");
        l.e(str2, "number");
        return new VoipIdCache(str, str2, j);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof VoipIdCache)) {
                return false;
            }
            VoipIdCache voipIdCache = (VoipIdCache) obj;
            return l.a(this.voipId, voipIdCache.voipId) && l.a(this.number, voipIdCache.number) && this.expiryEpochSeconds == voipIdCache.expiryEpochSeconds;
        }
        return true;
    }

    public final long getExpiryEpochSeconds() {
        return this.expiryEpochSeconds;
    }

    public final Long getId() {
        return this.f16352id;
    }

    public final String getNumber() {
        return this.number;
    }

    public final String getVoipId() {
        return this.voipId;
    }

    public int hashCode() {
        String str = this.voipId;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.number;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (((hashCode * 31) + i) * 31) + C4876d.m34274a(this.expiryEpochSeconds);
    }

    public final void setId(Long l) {
        this.f16352id = l;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("VoipIdCache(voipId=");
        m8728C.append(this.voipId);
        m8728C.append(", number=");
        m8728C.append(this.number);
        m8728C.append(", expiryEpochSeconds=");
        return C22128a.m8693K2(m8728C, this.expiryEpochSeconds, ")");
    }
}
