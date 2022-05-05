package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlinx.coroutines.internal.Symbol;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H��\u001a\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��*\u001e\b\u0002\u0010\u0012\u001a\u0004\b��\u0010\u0013\"\b\u0012\u0004\u0012\u0002H\u00130\u00142\b\u0012\u0004\u0012\u0002H\u00130\u0014¨\u0006\u0015"}, m815d2 = {"CLOSED_EMPTY", "Lkotlinx/coroutines/internal/Symbol;", "CLOSED_EMPTY$annotations", "()V", "DISPOSED_TASK", "DISPOSED_TASK$annotations", "MAX_DELAY_NS", "", "MAX_MS", "MS_TO_NS", "SCHEDULE_COMPLETED", "", "SCHEDULE_DISPOSED", "SCHEDULE_OK", "delayNanosToMillis", "timeNanos", "delayToNanos", "timeMillis", "Queue", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "kotlinx-coroutines-core"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes3-dex2jar.jar:kotlinx/coroutines/EventLoop_commonKt.class */
public final class EventLoop_commonKt {
    public static final long MAX_DELAY_NS = 4611686018427387903L;
    public static final long MAX_MS = 9223372036854L;
    public static final long MS_TO_NS = 1000000;
    public static final int SCHEDULE_COMPLETED = 1;
    public static final int SCHEDULE_DISPOSED = 2;
    public static final int SCHEDULE_OK = 0;
    public static final Symbol DISPOSED_TASK = new Symbol("REMOVED_TASK");
    public static final Symbol CLOSED_EMPTY = new Symbol("CLOSED_EMPTY");

    public static /* synthetic */ void CLOSED_EMPTY$annotations() {
    }

    public static /* synthetic */ void DISPOSED_TASK$annotations() {
    }

    public static final long delayNanosToMillis(long j) {
        return j / 1000000;
    }

    public static final long delayToNanos(long j) {
        long j2 = 0;
        if (j > 0) {
            j2 = j >= MAX_MS ? Long.MAX_VALUE : 1000000 * j;
        }
        return j2;
    }
}
