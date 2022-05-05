package com.privacystar.core.service.analytics.p009fo;

import com.privacystar.core.service.analytics.Event;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
/* JADX INFO: Access modifiers changed from: package-private */
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "event", "Lcom/privacystar/core/service/analytics/Event;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* renamed from: com.privacystar.core.service.analytics.fo.FOAnalyticHandler$createEventMap$1 */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/fo/FOAnalyticHandler$createEventMap$1.class */
public final class FOAnalyticHandler$createEventMap$1 extends Lambda implements Function1<Event, Unit> {
    public static final FOAnalyticHandler$createEventMap$1 INSTANCE = new FOAnalyticHandler$createEventMap$1();

    FOAnalyticHandler$createEventMap$1() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Event event) {
        invoke2(event);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Event event) {
        String buildEvent83BodyImpl;
        Intrinsics.checkParameterIsNotNull(event, "event");
        buildEvent83BodyImpl = FOAnalyticHandler.INSTANCE.buildEvent83BodyImpl((Event.ExtendedCallInformationEvent) event);
        new FOAnalyticsEvent(83, buildEvent83BodyImpl).track();
    }
}
