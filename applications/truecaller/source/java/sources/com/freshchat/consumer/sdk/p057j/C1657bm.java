package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bm */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bm.class */
public final class C1657bm implements C1649bg.AbstractC1651b {

    /* renamed from: jW */
    public final /* synthetic */ String f4419jW;

    public C1657bm(String str) {
        this.f4419jW = str;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventBotFAQVote);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyBotFAQFeedback, this.f4419jW);
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
