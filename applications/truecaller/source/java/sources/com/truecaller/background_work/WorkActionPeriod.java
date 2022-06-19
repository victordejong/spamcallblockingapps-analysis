package com.truecaller.background_work;

import androidx.annotation.Keep;
import com.mopub.mobileads.VastIconXmlManager;
import kotlin.Metadata;
import s1.z.c.f;
import s1.z.c.l;
import w3.b.a.i;
/* JADX WARN: Init of enum DAILY can be incorrect */
/* JADX WARN: Init of enum EVERY_SIX_HOURS can be incorrect */
/* JADX WARN: Init of enum EVERY_THREE_HOURS can be incorrect */
/* JADX WARN: Init of enum EVERY_TWELVE_HOURS can be incorrect */
/* JADX WARN: Init of enum MONTHLY can be incorrect */
/* JADX WARN: Init of enum WEEKLY can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0013\b\u0087\u0001\u0018�� \u00122\b\u0012\u0004\u0012\u00020��0\u0001:\u0001\u0013B)\b\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\f\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\f\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\f\u0010\t\u001a\u0004\b\r\u0010\u000bR\u0019\u0010\u000e\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\u000e\u0010\t\u001a\u0004\b\u000f\u0010\u000bj\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017j\u0002\b\u0018j\u0002\b\u0019¨\u0006\u001a"}, d2 = {"Lcom/truecaller/background_work/WorkActionPeriod;", "", "", "maxRetryCount", "I", "getMaxRetryCount", "()I", "Lw3/b/a/i;", "flexInterval", "Lw3/b/a/i;", "getFlexInterval", "()Lw3/b/a/i;", "exponentialBackoff", "getExponentialBackoff", VastIconXmlManager.DURATION, "getDuration", "<init>", "(Ljava/lang/String;ILw3/b/a/i;Lw3/b/a/i;Lw3/b/a/i;I)V", "Companion", "a", "EVERY_THREE_HOURS", "EVERY_SIX_HOURS", "EVERY_TWELVE_HOURS", "DAILY", "WEEKLY", "MONTHLY", "background-work_release"}, k = 1, mv = {1, 4, 1})
@Keep
/* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/WorkActionPeriod.class */
public enum WorkActionPeriod {
    EVERY_THREE_HOURS(r0, r0, r0, 1),
    EVERY_SIX_HOURS(r0, r0, r0, 1),
    EVERY_TWELVE_HOURS(r0, r0, r0, 2),
    DAILY(r0, r0, r0, 2),
    WEEKLY(r0, r0, r0, 3),
    MONTHLY(r0, r0, r0, 3);
    
    public static final C3462a Companion = new C3462a(null);
    private final i duration;
    private final i exponentialBackoff;
    private final i flexInterval;
    private final int maxRetryCount;

    /* renamed from: com.truecaller.background_work.WorkActionPeriod$a */
    /* loaded from: classes5-dex2jar.jar:com/truecaller/background_work/WorkActionPeriod$a.class */
    public static final class C3462a {
        public C3462a(f fVar) {
        }
    }

    static {
        l.d(i.c(3L), "standardHours(3)");
        l.d(i.d(30L), "standardMinutes(30)");
        l.d(i.d(30L), "standardMinutes(30)");
        l.d(i.c(6L), "standardHours(6)");
        l.d(i.c(1L), "standardHours(1)");
        l.d(i.c(1L), "standardHours(1)");
        l.d(i.c(12L), "standardHours(12)");
        l.d(i.c(1L), "standardHours(1)");
        l.d(i.c(1L), "standardHours(1)");
        l.d(i.a(1L), "standardDays(1)");
        l.d(i.c(12L), "standardHours(12)");
        l.d(i.c(1L), "standardHours(1)");
        l.d(i.a(7L), "standardDays(7)");
        l.d(i.a(1L), "standardDays(1)");
        l.d(i.c(6L), "standardHours(6)");
        l.d(i.a(30L), "standardDays(30)");
        l.d(i.a(1L), "standardDays(1)");
        l.d(i.c(12L), "standardHours(12)");
    }

    WorkActionPeriod(i iVar, i iVar2, i iVar3, int i) {
        this.duration = iVar;
        this.flexInterval = iVar2;
        this.exponentialBackoff = iVar3;
        this.maxRetryCount = i;
    }

    public final i getDuration() {
        return this.duration;
    }

    public final i getExponentialBackoff() {
        return this.exponentialBackoff;
    }

    public final i getFlexInterval() {
        return this.flexInterval;
    }

    public final int getMaxRetryCount() {
        return this.maxRetryCount;
    }
}
