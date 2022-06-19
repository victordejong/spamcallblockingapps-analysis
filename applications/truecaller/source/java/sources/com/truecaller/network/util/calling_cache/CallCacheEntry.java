package com.truecaller.network.util.calling_cache;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u000e\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u000f\b\u0087\b\u0018��2\u00020\u0001B3\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0005\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000f\u001a\u00020\u0005\u0012\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005¢\u0006\u0004\b%\u0010&J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\b\u0010\u0004J\u0010\u0010\t\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\t\u0010\u0007J\u0012\u0010\n\u001a\u0004\u0018\u00010\u0005HÆ\u0003¢\u0006\u0004\b\n\u0010\u000bJD\u0010\u0011\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\u00022\b\b\u0002\u0010\u000f\u001a\u00020\u00052\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0005HÆ\u0001¢\u0006\u0004\b\u0011\u0010\u0012J\u0010\u0010\u0013\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0004J\u0010\u0010\u0015\u001a\u00020\u0014HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0016J\u001a\u0010\u0019\u001a\u00020\u00182\b\u0010\u0017\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0019\u0010\u001aR\u001c\u0010\r\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R\u001c\u0010\f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\u001d\u001a\u0004\b\u001e\u0010\u0004R\u001c\u0010\u000f\u001a\u00020\u00058\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000f\u0010\u001b\u001a\u0004\b\u001f\u0010\u0007R$\u0010\u0010\u001a\u0004\u0018\u00010\u00058\u0006@\u0006X\u0087\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010 \u001a\u0004\b!\u0010\u000b\"\u0004\b\"\u0010#R\u001c\u0010\u000e\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b$\u0010\u0004¨\u0006'"}, d2 = {"Lcom/truecaller/network/util/calling_cache/CallCacheEntry;", "", "", "component1", "()Ljava/lang/String;", "", "component2", "()J", "component3", "component4", "component5", "()Ljava/lang/Long;", "number", "timestamp", "state", "maxAgeSeconds", "id", "copy", "(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;)Lcom/truecaller/network/util/calling_cache/CallCacheEntry;", "toString", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", "J", "getTimestamp", "Ljava/lang/String;", "getNumber", "getMaxAgeSeconds", "Ljava/lang/Long;", "getId", "setId", "(Ljava/lang/Long;)V", "getState", "<init>", "(Ljava/lang/String;JLjava/lang/String;JLjava/lang/Long;)V", "call-alert_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes11-dex2jar.jar:com/truecaller/network/util/calling_cache/CallCacheEntry.class */
public final class CallCacheEntry {

    /* renamed from: id */
    private Long f14033id;
    private final long maxAgeSeconds;
    private final String number;
    private final String state;
    private final long timestamp;

    public CallCacheEntry(String str, long j, String str2, long j2, Long l) {
        l.e(str, "number");
        l.e(str2, "state");
        this.number = str;
        this.timestamp = j;
        this.state = str2;
        this.maxAgeSeconds = j2;
        this.f14033id = l;
    }

    public /* synthetic */ CallCacheEntry(String str, long j, String str2, long j2, Long l, int i, f fVar) {
        this(str, j, str2, j2, (i & 16) != 0 ? null : l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v3 */
    /* JADX WARN: Type inference failed for: r9v0, types: [com.truecaller.network.util.calling_cache.CallCacheEntry] */
    public static /* synthetic */ CallCacheEntry copy$default(CallCacheEntry callCacheEntry, String str, long j, String str2, long j2, Long l, int i, Object obj) {
        if ((i & 1) != 0) {
            str = ((CallCacheEntry) callCacheEntry).number;
        }
        ?? r11 = j;
        if ((i & 2) != 0) {
            r11 = ((CallCacheEntry) callCacheEntry).timestamp;
        }
        if ((i & 4) != 0) {
            str2 = ((CallCacheEntry) callCacheEntry).state;
        }
        ?? r14 = j2;
        if ((i & 8) != 0) {
            r14 = ((CallCacheEntry) callCacheEntry).maxAgeSeconds;
        }
        if ((i & 16) != 0) {
            l = ((CallCacheEntry) callCacheEntry).f14033id;
        }
        return callCacheEntry.copy(str, r11, str2, r14, l);
    }

    public final String component1() {
        return this.number;
    }

    public final long component2() {
        return this.timestamp;
    }

    public final String component3() {
        return this.state;
    }

    public final long component4() {
        return this.maxAgeSeconds;
    }

    public final Long component5() {
        return this.f14033id;
    }

    public final CallCacheEntry copy(String str, long j, String str2, long j2, Long l) {
        l.e(str, "number");
        l.e(str2, "state");
        return new CallCacheEntry(str, j, str2, j2, l);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof CallCacheEntry)) {
                return false;
            }
            CallCacheEntry callCacheEntry = (CallCacheEntry) obj;
            return l.a(this.number, callCacheEntry.number) && this.timestamp == callCacheEntry.timestamp && l.a(this.state, callCacheEntry.state) && this.maxAgeSeconds == callCacheEntry.maxAgeSeconds && l.a(this.f14033id, callCacheEntry.f14033id);
        }
        return true;
    }

    public final Long getId() {
        return this.f14033id;
    }

    public final long getMaxAgeSeconds() {
        return this.maxAgeSeconds;
    }

    public final String getNumber() {
        return this.number;
    }

    public final String getState() {
        return this.state;
    }

    public final long getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        String str = this.number;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        int m34274a = C4876d.m34274a(this.timestamp);
        String str2 = this.state;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        int m34274a2 = C4876d.m34274a(this.maxAgeSeconds);
        Long l = this.f14033id;
        if (l != null) {
            i = l.hashCode();
        }
        return (((((((hashCode * 31) + m34274a) * 31) + hashCode2) * 31) + m34274a2) * 31) + i;
    }

    public final void setId(Long l) {
        this.f14033id = l;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("CallCacheEntry(number=");
        m8728C.append(this.number);
        m8728C.append(", timestamp=");
        m8728C.append(this.timestamp);
        m8728C.append(", state=");
        m8728C.append(this.state);
        m8728C.append(", maxAgeSeconds=");
        m8728C.append(this.maxAgeSeconds);
        m8728C.append(", id=");
        m8728C.append(this.f14033id);
        m8728C.append(")");
        return m8728C.toString();
    }
}
