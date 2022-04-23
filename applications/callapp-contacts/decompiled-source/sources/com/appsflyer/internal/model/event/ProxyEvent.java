package com.appsflyer.internal.model.event;
/* loaded from: classes-dex2jar.jar:com/appsflyer/internal/model/event/ProxyEvent.class */
public class ProxyEvent extends BackgroundEvent {

    /* renamed from: ȷ  reason: contains not printable characters */
    private String f295;

    public ProxyEvent() {
        super(null, null, Boolean.FALSE, null, null);
    }

    public BackgroundEvent body(String str) {
        this.f295 = str;
        return this;
    }

    @Override // com.appsflyer.internal.model.event.BackgroundEvent
    public String body() {
        return this.f295;
    }
}
