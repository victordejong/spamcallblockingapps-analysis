package com.privacystar.core.service.analytics.anchor;

import com.privacystar.core.service.analytics.Event;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import org.jetbrains.annotations.NotNull;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u000e\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, m254d2 = {"<anonymous>", "", "it", "Lcom/privacystar/core/service/analytics/Event;", "invoke"}, m253k = 3, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/anchor/AnchorAnalyticHandler$createEventMap$69.class */
final class AnchorAnalyticHandler$createEventMap$69 extends Lambda implements Function1<Event, Unit> {
    public static final AnchorAnalyticHandler$createEventMap$69 INSTANCE = new AnchorAnalyticHandler$createEventMap$69();

    AnchorAnalyticHandler$createEventMap$69() {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Unit invoke(Event event) {
        invoke2(event);
        return Unit.INSTANCE;
    }

    /* renamed from: invoke  reason: avoid collision after fix types in other method */
    public final void invoke2(@NotNull Event it) {
        Intrinsics.checkParameterIsNotNull(it, "it");
        new AnchorAnalyticEvent(AnchorAnalyticConstants.PERMISSION_REQUIRED_TOGGLE_CLICK).track();
    }
}
