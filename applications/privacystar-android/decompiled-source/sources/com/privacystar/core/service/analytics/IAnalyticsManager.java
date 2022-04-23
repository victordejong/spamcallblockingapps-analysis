package com.privacystar.core.service.analytics;

import com.privacystar.core.service.analytics.anchor.AnchorAnalyticHandler;
import com.privacystar.core.service.analytics.apptentive.ApptentiveHandler;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticHandler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import timber.log.Timber;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0013\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H&¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u000bH\u0016J\b\u0010\f\u001a\u00020\u000bH\u0016J\b\u0010\r\u001a\u00020\u000bH\u0016¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/service/analytics/IAnalyticsManager;", "", "fire", "", "event", "Lcom/privacystar/core/service/analytics/Event;", "getHandlers", "", "Lcom/privacystar/core/service/analytics/AnalyticHandler;", "()[Lcom/privacystar/core/service/analytics/AnalyticHandler;", "isAnchorAnalyticsEnabled", "", "isApptentiveEnabled", "isFOAnalyticsEnabled", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/IAnalyticsManager.class */
public interface IAnalyticsManager {

    @Metadata(m256bv = {1, 0, 3}, m253k = 3, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/IAnalyticsManager$DefaultImpls.class */
    public static final class DefaultImpls {
        public static void fire(IAnalyticsManager iAnalyticsManager, @NotNull Event event) {
            AnalyticHandler[] handlers;
            Intrinsics.checkParameterIsNotNull(event, "event");
            for (AnalyticHandler analyticHandler : iAnalyticsManager.getHandlers()) {
                Timber.m37d("Logging event: " + event + " to " + analyticHandler, new Object[0]);
                analyticHandler.logEvent(event);
            }
        }

        public static boolean isAnchorAnalyticsEnabled(IAnalyticsManager iAnalyticsManager) {
            for (AnalyticHandler analyticHandler : iAnalyticsManager.getHandlers()) {
                if (analyticHandler instanceof AnchorAnalyticHandler) {
                    return true;
                }
            }
            return false;
        }

        public static boolean isApptentiveEnabled(IAnalyticsManager iAnalyticsManager) {
            for (AnalyticHandler analyticHandler : iAnalyticsManager.getHandlers()) {
                if (analyticHandler instanceof ApptentiveHandler) {
                    return true;
                }
            }
            return false;
        }

        public static boolean isFOAnalyticsEnabled(IAnalyticsManager iAnalyticsManager) {
            for (AnalyticHandler analyticHandler : iAnalyticsManager.getHandlers()) {
                if (analyticHandler instanceof FOAnalyticHandler) {
                    return true;
                }
            }
            return false;
        }
    }

    void fire(@NotNull Event event);

    @NotNull
    AnalyticHandler[] getHandlers();

    boolean isAnchorAnalyticsEnabled();

    boolean isApptentiveEnabled();

    boolean isFOAnalyticsEnabled();
}
