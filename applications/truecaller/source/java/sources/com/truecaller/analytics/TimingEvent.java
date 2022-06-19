package com.truecaller.analytics;

import kotlin.Metadata;
import p193e.p194a.p1146q2.C19548u0;
import s1.z.c.f;
/* JADX WARN: Init of enum CALL_LOG_FETCH_AND_MERGE can be incorrect */
/* JADX WARN: Init of enum CALL_LOG_MERGE can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0016\n\u0002\b\u0004\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B3\b\u0002\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\n\b\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\b\u0002\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\b\b\u0002\u0010\r\u001a\u00020\f¢\u0006\u0004\b\u0013\u0010\u0014R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0011\u0010\u0004\u001a\u0004\b\u0012\u0010\u0006j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/analytics/TimingEvent;", "", "", "eventGranularity", "[J", "getEventGranularity", "()[J", "", "event", "Ljava/lang/String;", "getEvent", "()Ljava/lang/String;", "", "unique", "Z", "getUnique", "()Z", "itemGranularity", "getItemGranularity", "<init>", "(Ljava/lang/String;ILjava/lang/String;[J[JZ)V", "CALL_LOG_MERGE", "CALL_LOG_FETCH_AND_MERGE", "CALL_LOG_STARTUP", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes4-dex2jar.jar:com/truecaller/analytics/TimingEvent.class */
public enum TimingEvent {
    CALL_LOG_MERGE("CallLogMerge", r0, r0, false, 8, null),
    CALL_LOG_FETCH_AND_MERGE("CallLogFetchMerge", r0, r0, false, 8, null),
    CALL_LOG_STARTUP("CallLogStartup", C19548u0.f54336c, null, true, 4, null);
    
    private final String event;
    private final long[] eventGranularity;
    private final long[] itemGranularity;
    private final boolean unique;

    static {
        long[] jArr = C19548u0.f54334a;
        long[] jArr2 = C19548u0.f54335b;
        long[] jArr3 = C19548u0.f54334a;
    }

    TimingEvent(String str, long[] jArr, long[] jArr2, boolean z) {
        this.event = str;
        this.eventGranularity = jArr;
        this.itemGranularity = jArr2;
        this.unique = z;
    }

    /* synthetic */ TimingEvent(String str, long[] jArr, long[] jArr2, boolean z, int i, f fVar) {
        this(str, (i & 2) != 0 ? null : jArr, (i & 4) != 0 ? null : jArr2, (i & 8) != 0 ? false : z);
    }

    public final String getEvent() {
        return this.event;
    }

    public final long[] getEventGranularity() {
        return this.eventGranularity;
    }

    public final long[] getItemGranularity() {
        return this.itemGranularity;
    }

    public final boolean getUnique() {
        return this.unique;
    }
}
