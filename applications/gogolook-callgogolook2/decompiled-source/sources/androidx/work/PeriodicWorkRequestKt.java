package androidx.work;

import androidx.annotation.RequiresApi;
import androidx.exifinterface.media.ExifInterface;
import androidx.work.PeriodicWorkRequest;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\"\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u001d\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0087\b\u001a%\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0087\b\u001a%\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0086\b\u001a5\u0010��\u001a\u00020\u0001\"\n\b��\u0010\u0002\u0018\u0001*\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0086\b¨\u0006\u000b"}, m815d2 = {"PeriodicWorkRequestBuilder", "Landroidx/work/PeriodicWorkRequest$Builder;", ExifInterface.LONGITUDE_WEST, "Landroidx/work/ListenableWorker;", "repeatInterval", "Ljava/time/Duration;", "flexTimeInterval", "", "repeatIntervalTimeUnit", "Ljava/util/concurrent/TimeUnit;", "flexTimeIntervalUnit", "work-runtime-ktx_release"}, m814k = 2, m813mv = {1, 1, 16})
/* loaded from: classes-dex2jar.jar:androidx/work/PeriodicWorkRequestKt.class */
public final class PeriodicWorkRequestKt {
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit timeUnit) {
        C15149k.m377b(timeUnit, "repeatIntervalTimeUnit");
        C15149k.m385a(4, ExifInterface.LONGITUDE_WEST);
        throw null;
    }

    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
        C15149k.m377b(timeUnit, "repeatIntervalTimeUnit");
        C15149k.m377b(timeUnit2, "flexTimeIntervalUnit");
        C15149k.m385a(4, ExifInterface.LONGITUDE_WEST);
        throw null;
    }

    @RequiresApi(26)
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration duration) {
        C15149k.m377b(duration, "repeatInterval");
        C15149k.m385a(4, ExifInterface.LONGITUDE_WEST);
        throw null;
    }

    @RequiresApi(26)
    public static final /* synthetic */ <W extends ListenableWorker> PeriodicWorkRequest.Builder PeriodicWorkRequestBuilder(Duration duration, Duration duration2) {
        C15149k.m377b(duration, "repeatInterval");
        C15149k.m377b(duration2, "flexTimeInterval");
        C15149k.m385a(4, ExifInterface.LONGITUDE_WEST);
        throw null;
    }
}
