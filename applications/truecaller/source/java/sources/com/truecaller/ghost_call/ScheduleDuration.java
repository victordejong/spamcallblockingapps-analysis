package com.truecaller.ghost_call;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
/* JADX WARN: Init of enum FIVE_MINUTES can be incorrect */
/* JADX WARN: Init of enum IMMEDIATE can be incorrect */
/* JADX WARN: Init of enum ONE_MINUTE can be incorrect */
/* JADX WARN: Init of enum TEN_SECONDS can be incorrect */
/* JADX WARN: Init of enum THIRTY_MINUTES can be incorrect */
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B#\b\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\f\u0012\b\b\u0001\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0011\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0004\u001a\u0004\b\u0005\u0010\u0006R\u0019\u0010\b\u001a\u00020\u00078\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\t\u001a\u0004\b\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\f8\u0006@\u0006¢\u0006\f\n\u0004\b\r\u0010\u000e\u001a\u0004\b\u000f\u0010\u0010j\u0002\b\u0013j\u0002\b\u0014j\u0002\b\u0015j\u0002\b\u0016j\u0002\b\u0017¨\u0006\u0018"}, d2 = {"Lcom/truecaller/ghost_call/ScheduleDuration;", "", "", "delay", "J", "getDelay", "()J", "", "titleRes", "I", "getTitleRes", "()I", "Ljava/util/concurrent/TimeUnit;", "timeUnit", "Ljava/util/concurrent/TimeUnit;", "getTimeUnit", "()Ljava/util/concurrent/TimeUnit;", "<init>", "(Ljava/lang/String;IJLjava/util/concurrent/TimeUnit;I)V", "IMMEDIATE", "TEN_SECONDS", "ONE_MINUTE", "FIVE_MINUTES", "THIRTY_MINUTES", "ghost-call_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes9-dex2jar.jar:com/truecaller/ghost_call/ScheduleDuration.class */
public enum ScheduleDuration {
    IMMEDIATE(0, r0, C4002R.string.PretendCallScheduleDurationImmediately),
    TEN_SECONDS(10, r0, C4002R.string.PretendCallScheduleDurationTenSeconds),
    ONE_MINUTE(1, r0, C4002R.string.PretendCallScheduleDurationOneMinute),
    FIVE_MINUTES(5, r0, C4002R.string.PretendCallScheduleDurationFiveMinutes),
    THIRTY_MINUTES(30, r0, C4002R.string.PretendCallScheduleDurationThirtyMinutes);
    
    private final long delay;
    private final TimeUnit timeUnit;
    private final int titleRes;

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        TimeUnit timeUnit2 = TimeUnit.MINUTES;
    }

    ScheduleDuration(long j, TimeUnit timeUnit, int i) {
        this.delay = j;
        this.timeUnit = timeUnit;
        this.titleRes = i;
    }

    public final long getDelay() {
        return this.delay;
    }

    public final TimeUnit getTimeUnit() {
        return this.timeUnit;
    }

    public final int getTitleRes() {
        return this.titleRes;
    }
}
