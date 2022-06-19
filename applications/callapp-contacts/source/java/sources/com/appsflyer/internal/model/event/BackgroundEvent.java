package com.appsflyer.internal.model.event;

import android.content.Context;
import com.appsflyer.AFEvent;
import com.appsflyer.AFHelper;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/BackgroundEvent.class */
public abstract class BackgroundEvent extends AFEvent {

    /* renamed from: ȷ */
    private final boolean f12968;

    /* renamed from: ɨ */
    private final boolean f12969;

    /* renamed from: ɪ */
    private boolean f12970;

    public BackgroundEvent() {
        this(null, null, null, null, null);
    }

    public BackgroundEvent(String str, Boolean bool, Boolean bool2, Boolean bool3, Context context) {
        super(str, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        this.f12969 = bool != null ? bool.booleanValue() : true;
        this.f12968 = bool2 != null ? bool2.booleanValue() : true;
    }

    public String body() {
        return AFHelper.toJsonObject(params()).toString();
    }

    public boolean proxyMode() {
        return this.f12968;
    }

    public boolean readResponse() {
        return this.f12969;
    }

    public BackgroundEvent trackingStopped(boolean z) {
        this.f12970 = z;
        return this;
    }

    public boolean trackingStopped() {
        return this.f12970;
    }
}
