package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.Channel;
import com.freshchat.consumer.sdk.beans.Conversation;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bw */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bw.class */
public final class C1667bw implements C1649bg.AbstractC1651b {

    /* renamed from: fk */
    public final /* synthetic */ long f4439fk;

    /* renamed from: iI */
    public final /* synthetic */ Context f4440iI;

    /* renamed from: kJ */
    public final /* synthetic */ boolean f4441kJ;

    /* renamed from: nW */
    public final /* synthetic */ int f4442nW;

    /* renamed from: nX */
    public final /* synthetic */ String f4443nX;

    public C1667bw(Context context, long j, boolean z, int i, String str) {
        this.f4440iI = context;
        this.f4439fk = j;
        this.f4441kJ = z;
        this.f4442nW = i;
        this.f4443nX = str;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Channel m40074j;
        Event m40064gz;
        C1649bg.C1650a m40067a;
        Conversation m40081c;
        C1649bg.C1650a m40067a2;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventCsatSubmit);
        m40074j = C1649bg.m40074j(this.f4440iI, this.f4439fk);
        if (m40074j != null) {
            m40067a = m40090a.m40067a(Event.Property.FCPropertyChannelID, m40074j.getChannelAlias());
            m40067a.m40067a(Event.Property.FCPropertyChannelName, m40074j.getName());
            m40081c = C1649bg.m40081c(this.f4440iI, m40074j.getId());
            if (m40081c != null) {
                m40067a2 = m40090a.m40067a(Event.Property.FCPropertyConversationID, Long.valueOf(m40081c.getConversationId()));
                m40067a2.m40067a(Event.Property.FCPropertyResolutionStatus, Boolean.valueOf(this.f4441kJ));
            }
        }
        int i = this.f4442nW;
        if (i > 0) {
            m40090a.m40067a(Event.Property.FCPropertyRating, Integer.valueOf(i));
        }
        if (C1626as.m40233a(this.f4443nX)) {
            m40090a.m40067a(Event.Property.FCPropertyComment, this.f4443nX);
        }
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
