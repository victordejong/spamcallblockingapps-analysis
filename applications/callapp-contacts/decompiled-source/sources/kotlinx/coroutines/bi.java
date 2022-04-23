package kotlinx.coroutines;

import kotlin.Metadata;
import kotlinx.coroutines.internal.v;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n��\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\b\n\u0002\u0018\u0002\n��\u001a\u0010\u0010\u000e\u001a\u00020\u00072\u0006\u0010\u000f\u001a\u00020\u0007H��\u001a\u0010\u0010\u0010\u001a\u00020\u00072\u0006\u0010\u0011\u001a\u00020\u0007H��\"\u0016\u0010��\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0002\u0010\u0003\"\u0016\u0010\u0004\u001a\u00020\u00018\u0002X\u0083\u0004¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0003\"\u000e\u0010\u0006\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\b\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\t\u001a\u00020\u0007X\u0082T¢\u0006\u0002\n��\"\u000e\u0010\n\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\f\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��\"\u000e\u0010\r\u001a\u00020\u000bX\u0082T¢\u0006\u0002\n��*\u001e\b\u0002\u0010\u0012\u001a\u0004\b��\u0010\u0013\"\b\u0012\u0004\u0012\u0002H\u00130\u00142\b\u0012\u0004\u0012\u0002H\u00130\u0014¨\u0006\u0015"}, d2 = {"CLOSED_EMPTY", "Lkotlinx/coroutines/internal/Symbol;", "getCLOSED_EMPTY$annotations", "()V", "DISPOSED_TASK", "getDISPOSED_TASK$annotations", "MAX_DELAY_NS", "", "MAX_MS", "MS_TO_NS", "SCHEDULE_COMPLETED", "", "SCHEDULE_DISPOSED", "SCHEDULE_OK", "delayNanosToMillis", "timeNanos", "delayToNanos", "timeMillis", "Queue", "T", "Lkotlinx/coroutines/internal/LockFreeTaskQueueCore;", "kotlinx-coroutines-core"}, k = 2, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:kotlinx/coroutines/bi.class */
public final class bi {

    /* renamed from: a  reason: collision with root package name */
    private static final v f38745a = new v("REMOVED_TASK");

    /* renamed from: b  reason: collision with root package name */
    private static final v f38746b = new v("CLOSED_EMPTY");

    public static final long a(long j) {
        if (j <= 0) {
            return 0L;
        }
        if (j >= 9223372036854L) {
            return Long.MAX_VALUE;
        }
        return j * 1000000;
    }
}
