package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bn */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bn.class */
public final class C1658bn implements C1649bg.AbstractC1651b {

    /* renamed from: fk */
    public final /* synthetic */ long f4420fk;

    /* renamed from: iI */
    public final /* synthetic */ Context f4421iI;

    public C1658bn(Context context, long j) {
        this.f4421iI = context;
        this.f4420fk = j;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Channel m40074j;
        Event m40064gz;
        C1649bg.C1650a m40067a;
        Conversation m40081c;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventMessageSent);
        m40074j = C1649bg.m40074j(this.f4421iI, this.f4420fk);
        if (m40074j != null) {
            m40067a = m40090a.m40067a(Event.Property.FCPropertyChannelID, m40074j.getChannelAlias());
            m40067a.m40067a(Event.Property.FCPropertyChannelName, m40074j.getName());
            m40081c = C1649bg.m40081c(this.f4421iI, this.f4420fk);
            if (m40081c != null) {
                m40090a.m40067a(Event.Property.FCPropertyConversationID, Long.valueOf(m40081c.getConversationId()));
            }
        }
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
