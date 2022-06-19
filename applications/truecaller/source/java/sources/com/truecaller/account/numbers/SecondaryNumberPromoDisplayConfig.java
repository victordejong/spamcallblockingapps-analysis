package com.truecaller.account.numbers;

import androidx.annotation.Keep;
import kotlin.Metadata;
import s1.z.c.f;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\t\b\u0003\u0018�� \u00122\u00020\u0001:\u0001\u0013B%\u0012\b\b\u0002\u0010\b\u001a\u00020\u0007\u0012\b\b\u0002\u0010\f\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\b\u0010\nR\u0019\u0010\f\u001a\u00020\u000b8\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f¨\u0006\u0014"}, d2 = {"Lcom/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig;", "", "", "maxDismissCount", "I", "getMaxDismissCount", "()I", "", "isEnabled", "Z", "()Z", "", "intervalDays", "J", "getIntervalDays", "()J", "<init>", "(ZJI)V", "Companion", "a", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes4-dex2jar.jar:com/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig.class */
public final class SecondaryNumberPromoDisplayConfig {
    public static final C2777a Companion = new C2777a(null);
    private static final long DEFAULT_INTERVAL_DAYS = 3;
    private static final int DEFAULT_MAX_DISMISS_COUNT = 3;
    private final long intervalDays;
    private final boolean isEnabled;
    private final int maxDismissCount;

    /* renamed from: com.truecaller.account.numbers.SecondaryNumberPromoDisplayConfig$a */
    /* loaded from: classes4-dex2jar.jar:com/truecaller/account/numbers/SecondaryNumberPromoDisplayConfig$a.class */
    public static final class C2777a {
        public C2777a(f fVar) {
        }
    }

    public SecondaryNumberPromoDisplayConfig() {
        this(false, 0L, 0, 7, null);
    }

    public SecondaryNumberPromoDisplayConfig(boolean z, long j, int i) {
        this.isEnabled = z;
        this.intervalDays = j;
        this.maxDismissCount = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    public /* synthetic */ SecondaryNumberPromoDisplayConfig(boolean z, long j, int i, int i2, f fVar) {
        this((i2 & 1) != 0 ? true : z, (i2 & 2) != 0 ? 3 : j, (i2 & 4) != 0 ? 3 : i);
    }

    public final long getIntervalDays() {
        return this.intervalDays;
    }

    public final int getMaxDismissCount() {
        return this.maxDismissCount;
    }

    public final boolean isEnabled() {
        return this.isEnabled;
    }
}
