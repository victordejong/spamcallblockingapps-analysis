package com.privacystar.core.util.analytics;

import com.privacystar.core.service.PreferenceUtil;
import com.privacystar.core.util.NumbersUtil;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\nJ\u0016\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rJ\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\nJ\u0018\u0010\u0011\u001a\u00020\u00042\b\u0010\u0012\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0013\u001a\u00020\u0007J\u0010\u0010\u0014\u001a\u00020\u00042\b\b\u0002\u0010\u0015\u001a\u00020\nJ\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0007J\u0006\u0010\u0018\u001a\u00020\u0004¨\u0006\u0019"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnswersUtil;", "", "()V", "startTrackingSmsValidation", "", "trackCYDReregistration", "alreadyRegistered", "", "trackDetailView", "viewName", "", "trackInvalidCallDate", "callTime", "", "currentTime", "trackNotRegisteredNotification", "type", "trackNumberLookup", "number", "numberValid", "trackShare", "shareMethod", "trackSmsValidation", "success", "trackUnsubscribeEngaged", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnswersUtil.class */
public final class AnswersUtil {
    public static final AnswersUtil INSTANCE = new AnswersUtil();

    private AnswersUtil() {
    }

    public static /* synthetic */ void trackShare$default(AnswersUtil answersUtil, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "system_share";
        }
        answersUtil.trackShare(str);
    }

    public final void startTrackingSmsValidation() {
        Timber.m37d("Starting tracking of sms validation duration.", new Object[0]);
        PreferenceUtil.putSmsValidationStartTime(System.currentTimeMillis());
    }

    public final void trackCYDReregistration(boolean z) {
    }

    public final void trackDetailView(@NotNull String viewName) {
        Intrinsics.checkParameterIsNotNull(viewName, "viewName");
    }

    public final void trackInvalidCallDate(long j, long j2) {
    }

    public final void trackNotRegisteredNotification(@NotNull String type) {
        Intrinsics.checkParameterIsNotNull(type, "type");
    }

    public final void trackNumberLookup(@Nullable String str, boolean z) {
    }

    public final void trackShare(@NotNull String shareMethod) {
        Intrinsics.checkParameterIsNotNull(shareMethod, "shareMethod");
    }

    public final void trackSmsValidation(boolean z) {
        if (NumbersUtil.timestampDelta(PreferenceUtil.getSmsValidationStartTime(), System.currentTimeMillis()) < 0) {
            Timber.m37d("Can't track sms validation - delta negative. Either wasn't initialized or improperly initialized.", new Object[0]);
        } else {
            PreferenceUtil.putSmsValidationStartTime(-1L);
        }
    }

    public final void trackUnsubscribeEngaged() {
    }
}
