package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bi */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bi.class */
public final class C1653bi implements C1649bg.AbstractC1651b {

    /* renamed from: fk */
    public final /* synthetic */ long f4406fk;

    /* renamed from: iI */
    public final /* synthetic */ Context f4407iI;

    /* renamed from: nQ */
    public final /* synthetic */ long f4408nQ;

    public C1653bi(long j, Context context, long j2) {
        this.f4408nQ = j;
        this.f4407iI = context;
        this.f4406fk = j2;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Channel m40074j;
        Event m40064gz;
        C1649bg.C1650a m40067a2;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventNotificationReceive);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyConversationID, Long.valueOf(this.f4408nQ));
        m40074j = C1649bg.m40074j(this.f4407iI, this.f4406fk);
        if (m40074j != null) {
            m40067a2 = m40067a.m40067a(Event.Property.FCPropertyChannelID, m40074j.getChannelAlias());
            m40067a2.m40067a(Event.Property.FCPropertyChannelName, m40074j.getName());
        }
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
