package com.appsflyer.internal.model.event;

import com.appsflyer.AFEvent;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/AdRevenue.class */
public class AdRevenue extends AFEvent {
    public AdRevenue() {
        super(null, Boolean.FALSE, null);
    }

    @Override // com.appsflyer.AFEvent
    public AFEvent urlString(String str) {
        return super.urlString(addChannel(str));
    }
}
