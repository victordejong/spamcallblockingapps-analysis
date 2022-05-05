package com.privacystar.core.service.analytics.apptentive;

import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\t\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u000f\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004B#\b\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0005\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u0006¢\u0006\u0002\u0010\u0007J\u0006\u0010\u000f\u001a\u00020\u0010R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\b\u0010\t\"\u0004\b\n\u0010\u0004R(\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0001\u0018\u00010\u0006X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000e¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/service/analytics/apptentive/ApptentiveEvent;", "", "eventName", "", "(Ljava/lang/String;)V", "eventParams", "", "(Ljava/lang/String;Ljava/util/Map;)V", "getEventName", "()Ljava/lang/String;", "setEventName", "getEventParams", "()Ljava/util/Map;", "setEventParams", "(Ljava/util/Map;)V", "track", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/apptentive/ApptentiveEvent.class */
public final class ApptentiveEvent {
    @NotNull
    private String eventName;
    @Nullable
    private Map<String, ? extends Object> eventParams;

    public ApptentiveEvent(@NotNull String eventName) {
        Intrinsics.checkParameterIsNotNull(eventName, "eventName");
        this.eventName = eventName;
    }

    public ApptentiveEvent(@NotNull String eventName, @NotNull Map<String, ? extends Object> eventParams) {
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
    public final Map<String, Object> getEventParams() {
        return this.eventParams;
    }

    public final void setEventName(@NotNull String str) {
        Intrinsics.checkParameterIsNotNull(str, "<set-?>");
        this.eventName = str;
    }

    public final void setEventParams(@Nullable Map<String, ? extends Object> map) {
        this.eventParams = map;
    }

    public final void track() {
        if (this.eventParams != null) {
            ApptentiveService apptentiveService = ApptentiveService.INSTANCE;
            String str = this.eventName;
            Map<String, ? extends Object> map = this.eventParams;
            if (map == null) {
                Intrinsics.throwNpe();
            }
            apptentiveService.fire(str, map);
            return;
        }
        ApptentiveService.INSTANCE.fire(this.eventName);
    }
}
