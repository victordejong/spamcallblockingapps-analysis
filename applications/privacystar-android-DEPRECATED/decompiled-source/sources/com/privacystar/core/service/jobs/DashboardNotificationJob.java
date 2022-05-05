package com.privacystar.core.service.jobs;

import com.birbit.android.jobqueue.Job;
import com.birbit.android.jobqueue.Params;
import com.birbit.android.jobqueue.RetryConstraint;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.model.helper.CallStatsRealm;
import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.BuildUtil;
import com.privacystar.core.util.DateUtil;
import com.privacystar.core.util.NotificationUtil;
import io.realm.Realm;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.p013io.CloseableKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018�� \u000f2\u00020\u0001:\u0001\u000fB\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\u0003\u001a\u00020\u0004H\u0016J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\n\u001a\u00020\u0004H\u0016J \u0010\u000b\u001a\u00020\f2\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\u0007H\u0014¨\u0006\u0010"}, m254d2 = {"Lcom/privacystar/core/service/jobs/DashboardNotificationJob;", "Lcom/birbit/android/jobqueue/Job;", "()V", "onAdded", "", "onCancel", "cancelReason", "", "throwable", "", "onRun", "shouldReRunOnThrowable", "Lcom/birbit/android/jobqueue/RetryConstraint;", "runCount", "maxRunCount", "Companion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/DashboardNotificationJob.class */
public final class DashboardNotificationJob extends Job {
    public static final Companion Companion = new Companion(null);
    private static final int MIN_BLOCKS = 10;
    @NotNull
    public static final String TAG = "DashboardNotificationJob";

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0007\u001a\u00020\bH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n��¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/service/jobs/DashboardNotificationJob$Companion;", "", "()V", "MIN_BLOCKS", "", "TAG", "", "getTimeUntilNextNotification", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/jobs/DashboardNotificationJob$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final long getTimeUntilNextNotification() {
            return !BuildUtil.INSTANCE.isDebugBuild() ? DateUtil.getMilliUntilNextMonth() : TimeUnit.DAYS.toMillis(1L);
        }
    }

    public DashboardNotificationJob() {
        super(new Params(500).setDelayMs(Companion.getTimeUntilNextNotification()).addTags(TAG).singleInstanceBy(TAG));
        Timber.m37d("New dashboard notification job created", new Object[0]);
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onAdded() {
        Timber.m37d("onAdded called for DashboardNotificationJob", new Object[0]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.birbit.android.jobqueue.Job
    public void onCancel(int i, @Nullable Throwable th) {
        Timber.m37d("Job was cancelled.", new Object[0]);
    }

    @Override // com.birbit.android.jobqueue.Job
    public void onRun() {
        Timber.m37d("onRun called for Dashboard notification job", new Object[0]);
        if (PreferenceUtil.getDashboardNotifEnabled()) {
            Timber.m37d("dashboard notifications enabled", new Object[0]);
            Realm defaultInstance = Realm.getDefaultInstance();
            Throwable th = null;
            try {
                Realm realm = defaultInstance;
                long dashboardNotifStartDate = PreferenceUtil.getDashboardNotifStartDate();
                CallStatsRealm callStatsRealm = CallStatsRealm.INSTANCE;
                Intrinsics.checkExpressionValueIsNotNull(realm, "realm");
                long countBetweenDates = callStatsRealm.getCountBetweenDates(realm, new Date(dashboardNotifStartDate), new Date(System.currentTimeMillis()));
                if (countBetweenDates >= 10) {
                    StringBuilder sb = new StringBuilder();
                    sb.append("Blocked ");
                    sb.append(countBetweenDates);
                    sb.append(" this month");
                    Timber.m37d(sb.toString(), new Object[0]);
                    NotificationUtil.showDashboardNotification(getApplicationContext());
                    PreferenceUtil.putDashboardNotifStartDate(System.currentTimeMillis());
                }
                Unit unit = Unit.INSTANCE;
                CloseableKt.closeFinally(defaultInstance, th);
            } finally {
                try {
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
        PSApplication instance = PSApplication.getInstance();
        Intrinsics.checkExpressionValueIsNotNull(instance, "PSApplication.getInstance()");
        instance.getJobManager().addJob(new DashboardNotificationJob());
    }

    @Override // com.birbit.android.jobqueue.Job
    @NotNull
    protected RetryConstraint shouldReRunOnThrowable(@NotNull Throwable throwable, int i, int i2) {
        Intrinsics.checkParameterIsNotNull(throwable, "throwable");
        if (getCurrentRunCount() >= 2) {
            Timber.m28v("Current run count [%d] has reached max retries [%d], cancelling job.", Integer.valueOf(getCurrentRunCount()), 2);
            RetryConstraint retryConstraint = RetryConstraint.CANCEL;
            Intrinsics.checkExpressionValueIsNotNull(retryConstraint, "RetryConstraint.CANCEL");
            return retryConstraint;
        }
        Timber.m28v("Executing exponential backoff.", new Object[0]);
        RetryConstraint createExponentialBackoff = RetryConstraint.createExponentialBackoff(i, 1000L);
        Intrinsics.checkExpressionValueIsNotNull(createExponentialBackoff, "RetryConstraint.createEx…Backoff(runCount, 1_000L)");
        return createExponentialBackoff;
    }
}
