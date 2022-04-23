package com.privacystar.core.service.analytics.anchor;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B\u0017\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0004R\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/service/analytics/anchor/AnchorAnalyticEvent;", "", "eventName", "", "(Ljava/lang/String;)V", "eventParams", "Lorg/json/JSONObject;", "(Ljava/lang/String;Lorg/json/JSONObject;)V", "getEventName", "()Ljava/lang/String;", "setEventName", "getEventParams", "()Lorg/json/JSONObject;", "setEventParams", "(Lorg/json/JSONObject;)V", "track", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/anchor/AnchorAnalyticEvent.class */
public final class AnchorAnalyticEvent {
    @NotNull
    private String eventName;
    @Nullable
    private JSONObject eventParams;

    public AnchorAnalyticEvent(@NotNull String eventName) {
        Intrinsics.checkParameterIsNotNull(eventName, "eventName");
        this.eventName = eventName;
    }

    public AnchorAnalyticEvent(@NotNull String eventName, @NotNull JSONObject eventParams) {
        Intrinsics.checkParameterIsNotNull(eventName, "eventName");
        Intrinsics.checkParameterIsNotNull(eventParams, "eventParams");
        this.eventName = eventName;
        this.eventParams = eventParams;
    }

    @NotNull
    public final String getEventName() {
        return this.eventName;
    }

    @Nullable
    public final JSONObject getEventParams() {
        return this.eventParams;
    }

    public final void setEventName(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.eventName = str;
    }

    public final void setEventParams(@Nullable JSONObject jSONObject) {
        this.eventParams = jSONObject;
    }

    public final void track() {
        if (this.eventParams != null) {
            AnchorAnalyticService anchorAnalyticService = AnchorAnalyticService.INSTANCE;
            String str = this.eventName;
            JSONObject jSONObject = this.eventParams;
            if (jSONObject == null) {
                Intrinsics.throwNpe();
            }
            anchorAnalyticService.track(str, jSONObject);
            return;
        }
        AnchorAnalyticService.INSTANCE.track(this.eventName);
    }
}
