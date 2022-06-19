package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bl */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bl.class */
public final class C1656bl implements C1649bg.AbstractC1651b {

    /* renamed from: jU */
    public final /* synthetic */ String f4416jU;

    /* renamed from: jV */
    public final /* synthetic */ String f4417jV;

    /* renamed from: lN */
    public final /* synthetic */ String f4418lN;

    public C1656bl(String str, String str2, String str3) {
        this.f4418lN = str;
        this.f4416jU = str2;
        this.f4417jV = str3;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        C1649bg.C1650a m40067a2;
        C1649bg.C1650a m40067a3;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventBotFAQOpen);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyBotFAQTitle, this.f4418lN);
        m40067a2 = m40067a.m40067a(Event.Property.FCPropertyBotFAQReferenceId, this.f4416jU);
        m40067a3 = m40067a2.m40067a(Event.Property.FCPropertyBotFAQPlaceholderReferenceId, this.f4417jV);
        m40064gz = m40067a3.m40064gz();
        return m40064gz;
    }
}
