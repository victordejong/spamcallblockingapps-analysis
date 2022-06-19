package com.truecaller.incallui.utils;

import androidx.annotation.Keep;
import kotlin.Metadata;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0010\b\u0081\b\u0018��2\u00020\u0001B/\u0012\b\b\u0002\u0010\f\u001a\u00020\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u000e\u001a\u00020\b\u0012\b\b\u0002\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b \u0010!J\u0010\u0010\u0003\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÆ\u0003¢\u0006\u0004\b\u0006\u0010\u0007J\u0010\u0010\t\u001a\u00020\bHÆ\u0003¢\u0006\u0004\b\t\u0010\nJ\u0010\u0010\u000b\u001a\u00020\u0002HÆ\u0003¢\u0006\u0004\b\u000b\u0010\u0004J8\u0010\u0010\u001a\u00020��2\b\b\u0002\u0010\f\u001a\u00020\u00022\b\b\u0002\u0010\r\u001a\u00020\u00052\b\b\u0002\u0010\u000e\u001a\u00020\b2\b\b\u0002\u0010\u000f\u001a\u00020\u0002HÆ\u0001¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0015\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0015\u0010\u0007J\u001a\u0010\u0017\u001a\u00020\u00022\b\u0010\u0016\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\u0017\u0010\u0018R\u0019\u0010\u000f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u000f\u0010\u0019\u001a\u0004\b\u001a\u0010\u0004R\u0019\u0010\r\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u001b\u001a\u0004\b\u001c\u0010\u0007R\u0019\u0010\u000e\u001a\u00020\b8\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\u001d\u001a\u0004\b\u001e\u0010\nR\u0019\u0010\f\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\u0019\u001a\u0004\b\u001f\u0010\u0004¨\u0006\""}, d2 = {"Lcom/truecaller/incallui/utils/WatchDogConfig;", "", "", "component1", "()Z", "", "component2", "()I", "", "component3", "()J", "component4", "enabled", "maxFailureCount", "disableAfterFailureDuration", "listenMultiSimDevices", "copy", "(ZIJZ)Lcom/truecaller/incallui/utils/WatchDogConfig;", "", "toString", "()Ljava/lang/String;", "hashCode", "other", "equals", "(Ljava/lang/Object;)Z", "Z", "getListenMultiSimDevices", "I", "getMaxFailureCount", "J", "getDisableAfterFailureDuration", "getEnabled", "<init>", "(ZIJZ)V", "incallui_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes10-dex2jar.jar:com/truecaller/incallui/utils/WatchDogConfig.class */
public final class WatchDogConfig {
    private final long disableAfterFailureDuration;
    private final boolean enabled;
    private final boolean listenMultiSimDevices;
    private final int maxFailureCount;

    public WatchDogConfig() {
        this(false, 0, 0L, false, 15, null);
    }

    public WatchDogConfig(boolean z, int i, long j, boolean z2) {
        this.enabled = z;
        this.maxFailureCount = i;
        this.disableAfterFailureDuration = j;
        this.listenMultiSimDevices = z2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    public /* synthetic */ WatchDogConfig(boolean z, int i, long j, boolean z2, int i2, f fVar) {
        this((i2 & 1) != 0 ? false : z, (i2 & 2) != 0 ? 0 : i, (i2 & 4) != 0 ? 0 : j, (i2 & 8) != 0 ? false : z2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r7v0, types: [com.truecaller.incallui.utils.WatchDogConfig] */
    public static /* synthetic */ WatchDogConfig copy$default(WatchDogConfig watchDogConfig, boolean z, int i, long j, boolean z2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            z = ((WatchDogConfig) watchDogConfig).enabled;
        }
        if ((i2 & 2) != 0) {
            i = ((WatchDogConfig) watchDogConfig).maxFailureCount;
        }
        ?? r10 = j;
        if ((i2 & 4) != 0) {
            r10 = ((WatchDogConfig) watchDogConfig).disableAfterFailureDuration;
        }
        if ((i2 & 8) != 0) {
            z2 = ((WatchDogConfig) watchDogConfig).listenMultiSimDevices;
        }
        return watchDogConfig.copy(z, i, r10, z2);
    }

    public final boolean component1() {
        return this.enabled;
    }

    public final int component2() {
        return this.maxFailureCount;
    }

    public final long component3() {
        return this.disableAfterFailureDuration;
    }

    public final boolean component4() {
        return this.listenMultiSimDevices;
    }

    public final WatchDogConfig copy(boolean z, int i, long j, boolean z2) {
        return new WatchDogConfig(z, i, j, z2);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof WatchDogConfig)) {
                return false;
            }
            WatchDogConfig watchDogConfig = (WatchDogConfig) obj;
            return this.enabled == watchDogConfig.enabled && this.maxFailureCount == watchDogConfig.maxFailureCount && this.disableAfterFailureDuration == watchDogConfig.disableAfterFailureDuration && this.listenMultiSimDevices == watchDogConfig.listenMultiSimDevices;
        }
        return true;
    }

    public final long getDisableAfterFailureDuration() {
        return this.disableAfterFailureDuration;
    }

    public final boolean getEnabled() {
        return this.enabled;
    }

    public final boolean getListenMultiSimDevices() {
        return this.listenMultiSimDevices;
    }

    public final int getMaxFailureCount() {
        return this.maxFailureCount;
    }

    public int hashCode() {
        boolean z = this.enabled;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        int i2 = this.maxFailureCount;
        int m34274a = C4876d.m34274a(this.disableAfterFailureDuration);
        boolean z3 = this.listenMultiSimDevices;
        if (!z3) {
            i = z3 ? 1 : 0;
        }
        return ((((((z2 ? 1 : 0) * 31) + i2) * 31) + m34274a) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("WatchDogConfig(enabled=");
        m8728C.append(this.enabled);
        m8728C.append(", maxFailureCount=");
        m8728C.append(this.maxFailureCount);
        m8728C.append(", disableAfterFailureDuration=");
        m8728C.append(this.disableAfterFailureDuration);
        m8728C.append(", listenMultiSimDevices=");
        return C22128a.m8590o(m8728C, this.listenMultiSimDevices, ")");
    }
}
