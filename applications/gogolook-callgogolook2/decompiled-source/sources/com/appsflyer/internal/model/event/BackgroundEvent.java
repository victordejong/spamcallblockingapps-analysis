package com.appsflyer.internal.model.event;

import android.content.Context;
import androidx.annotation.Nullable;
import com.appsflyer.AFEvent;
import com.appsflyer.AFHelper;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/BackgroundEvent.class */
public abstract class BackgroundEvent extends AFEvent {

    /* renamed from: ɪ */
    public final boolean f1883;

    /* renamed from: ɾ */
    public boolean f1884;

    /* renamed from: ӏ */
    public final boolean f1885;

    public BackgroundEvent() {
        this(null, null, null, null, null);
    }

    public BackgroundEvent(@Nullable String str, @Nullable Boolean bool, @Nullable Boolean bool2, @Nullable Boolean bool3, @Nullable Context context) {
        super(str, Boolean.valueOf(bool3 != null ? bool3.booleanValue() : false), context);
        boolean z = true;
        this.f1883 = bool != null ? bool.booleanValue() : true;
        this.f1885 = bool2 != null ? bool2.booleanValue() : z;
    }

    public String body() {
        return AFHelper.convertToJsonObject(params()).toString();
    }

    public boolean proxyMode() {
        return this.f1885;
    }

    public boolean readResponse() {
        return this.f1883;
    }

    public BackgroundEvent trackingStopped(boolean z) {
        this.f1884 = z;
        return this;
    }

    public boolean trackingStopped() {
        return this.f1884;
    }
}
