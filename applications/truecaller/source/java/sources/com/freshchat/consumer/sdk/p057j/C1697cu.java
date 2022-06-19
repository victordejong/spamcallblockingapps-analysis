package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.cu */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cu.class */
public final class C1697cu implements C1649bg.AbstractC1651b {

    /* renamed from: lv */
    public final /* synthetic */ Event.EventName f4489lv;

    /* renamed from: lw */
    public final /* synthetic */ String f4490lw;

    public C1697cu(Event.EventName eventName, String str) {
        this.f4489lv = eventName;
        this.f4490lw = str;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(this.f4489lv);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyInviteId, this.f4490lw);
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
