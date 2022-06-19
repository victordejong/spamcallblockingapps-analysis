package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bv */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bv.class */
public final class C1666bv implements C1649bg.AbstractC1651b {

    /* renamed from: fk */
    public final /* synthetic */ long f4436fk;

    /* renamed from: iI */
    public final /* synthetic */ Context f4437iI;

    /* renamed from: nV */
    public final /* synthetic */ long f4438nV;

    public C1666bv(long j, Context context, long j2) {
        this.f4438nV = j;
        this.f4437iI = context;
        this.f4436fk = j2;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Channel m40074j;
        Event m40064gz;
        C1649bg.C1650a m40067a2;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventCsatExpiry);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyConversationID, Long.valueOf(this.f4438nV));
        m40074j = C1649bg.m40074j(this.f4437iI, this.f4436fk);
        if (m40074j != null) {
            m40067a2 = m40067a.m40067a(Event.Property.FCPropertyChannelID, m40074j.getChannelAlias());
            m40067a2.m40067a(Event.Property.FCPropertyChannelName, m40074j.getName());
        }
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
