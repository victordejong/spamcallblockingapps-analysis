package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0002\u001a\u00020��2\u0006\u0010\u0001\u001a\u00020��H��¢\u0006\u0004\b\u0002\u0010\u0003\u001a\u0017\u0010\u0005\u001a\u00020��2\u0006\u0010\u0004\u001a\u00020��H��¢\u0006\u0004\b\u0005\u0010\u0003\"\u001c\u0010\u0007\u001a\u00020\u00068\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u0007\u0010\b\u0012\u0004\b\t\u0010\n\"\u001c\u0010\u000b\u001a\u00020\u00068\u0002@\u0003X\u0083\u0004¢\u0006\f\n\u0004\b\u000b\u0010\b\u0012\u0004\b\f\u0010\n\"\u0016\u0010\r\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\r\u0010\u000e\"\u0016\u0010\u000f\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u000f\u0010\u000e\"\u0016\u0010\u0010\u001a\u00020��8\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0010\u0010\u000e\"\u0016\u0010\u0012\u001a\u00020\u00118\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013\"\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013\"\u0016\u0010\u0015\u001a\u00020\u00118\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0015\u0010\u0013*\u001e\b\u0002\u0010\u0018\u001a\u0004\b��\u0010\u0016\"\b\u0012\u0004\u0012\u00028��0\u00172\b\u0012\u0004\u0012\u00028��0\u0017¨\u0006\u0019"}, d2 = {"", "timeNanos", "delayNanosToMillis", "(J)J", "timeMillis", "delayToNanos", "Lkotlinx/coroutines/internal/Symbol;", "CLOSED_EMPTY", "Lkotlinx/coroutines/internal/Symbol;", "getCLOSED_EMPTY$annotations", "()V", "DISPOSED_TASK", "getDISPOSED_TASK$annotations", "MAX_DELAY_NS", "J", "MAX_MS", "MS_TO_NS", "", "SCHEDULE_COMPLETED", "I", "SCHEDULE_DISPOSED", "SCHEDULE_OK", "T", "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "Queue", "kotlinx-coroutines-core"}, k = 2, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlinx/coroutines/EventLoop_commonKt.class */
public final class EventLoop_commonKt {

    /* renamed from: a */
    private static final Symbol f21184a = new Symbol("REMOVED_TASK");

    /* renamed from: b */
    private static final Symbol f21185b = new Symbol("CLOSED_EMPTY");

    /* renamed from: c */
    public static final long m1233c(long j) {
        return j / 1000000;
    }

    /* renamed from: d */
    public static final long m1232d(long j) {
        long j2 = 0;
        if (j > 0) {
            j2 = j >= 9223372036854L ? Long.MAX_VALUE : 1000000 * j;
        }
        return j2;
    }
}
