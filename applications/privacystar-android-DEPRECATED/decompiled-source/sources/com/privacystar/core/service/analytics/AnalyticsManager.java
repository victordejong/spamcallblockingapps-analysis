package com.privacystar.core.service.analytics;

import com.privacystar.core.service.analytics.IAnalyticsManager;
import com.privacystar.core.service.analytics.apptentive.ApptentiveHandler;
import com.privacystar.core.service.analytics.p009fo.FOAnalyticHandler;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0013\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016¢\u0006\u0002\u0010\bR\u0016\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0006¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/service/analytics/AnalyticsManager;", "Lcom/privacystar/core/service/analytics/IAnalyticsManager;", "()V", "HANDLERS", "", "Lcom/privacystar/core/service/analytics/AnalyticHandler;", "[Lcom/privacystar/core/service/analytics/AnalyticHandler;", "getHandlers", "()[Lcom/privacystar/core/service/analytics/AnalyticHandler;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/AnalyticsManager.class */
public final class AnalyticsManager implements IAnalyticsManager {
    public static final AnalyticsManager INSTANCE = new AnalyticsManager();
    private static final AnalyticHandler[] HANDLERS = {FOAnalyticHandler.INSTANCE, new ApptentiveHandler()};

    private AnalyticsManager() {
    }

    @Override // com.privacystar.core.service.analytics.IAnalyticsManager
    public void fire(@NotNull Event event) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        IAnalyticsManager.DefaultImpls.fire(this, event);
    }

    @Override // com.privacystar.core.service.analytics.IAnalyticsManager
    @NotNull
    public AnalyticHandler[] getHandlers() {
        return HANDLERS;
    }

    @Override // com.privacystar.core.service.analytics.IAnalyticsManager
    public boolean isAnchorAnalyticsEnabled() {
        return IAnalyticsManager.DefaultImpls.isAnchorAnalyticsEnabled(this);
    }

    @Override // com.privacystar.core.service.analytics.IAnalyticsManager
    public boolean isApptentiveEnabled() {
        return IAnalyticsManager.DefaultImpls.isApptentiveEnabled(this);
    }

    @Override // com.privacystar.core.service.analytics.IAnalyticsManager
    public boolean isFOAnalyticsEnabled() {
        return IAnalyticsManager.DefaultImpls.isFOAnalyticsEnabled(this);
    }
}
