package androidx.work;

import android.os.Build;
import androidx.work.WorkRequest;
import java.time.Duration;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/PeriodicWorkRequest.class */
public final class PeriodicWorkRequest extends WorkRequest {
    public static final long MIN_PERIODIC_FLEX_MILLIS = 300000;
    public static final long MIN_PERIODIC_INTERVAL_MILLIS = 900000;

    /* loaded from: classes-dex2jar.jar:androidx/work/PeriodicWorkRequest$Builder.class */
    public static final class Builder extends WorkRequest.Builder<Builder, PeriodicWorkRequest> {
        public Builder(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit) {
            super(cls);
            this.mWorkSpec.setPeriodic(timeUnit.toMillis(j));
        }

        public Builder(Class<? extends ListenableWorker> cls, long j, TimeUnit timeUnit, long j2, TimeUnit timeUnit2) {
            super(cls);
            this.mWorkSpec.setPeriodic(timeUnit.toMillis(j), timeUnit2.toMillis(j2));
        }

        public Builder(Class<? extends ListenableWorker> cls, Duration duration) {
            super(cls);
            this.mWorkSpec.setPeriodic(duration.toMillis());
        }

        public Builder(Class<? extends ListenableWorker> cls, Duration duration, Duration duration2) {
            super(cls);
            this.mWorkSpec.setPeriodic(duration.toMillis(), duration2.toMillis());
        }

        @Override // androidx.work.WorkRequest.Builder
        public PeriodicWorkRequest buildInternal() {
            if (!this.mBackoffCriteriaSet || Build.VERSION.SDK_INT < 23 || !this.mWorkSpec.constraints.requiresDeviceIdle()) {
                return new PeriodicWorkRequest(this);
            }
            throw new IllegalArgumentException("Cannot set backoff criteria on an idle mode job");
        }

        @Override // androidx.work.WorkRequest.Builder
        public Builder getThis() {
            return this;
        }
    }

    PeriodicWorkRequest(Builder builder) {
        super(builder.mId, builder.mWorkSpec, builder.mTags);
    }
}
