package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.beans.fragment.QuickReplyButtonFragment;
import com.freshchat.consumer.sdk.p057j.C1597ab;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bo */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bo.class */
public final class C1659bo implements C1649bg.AbstractC1651b {

    /* renamed from: jX */
    public final /* synthetic */ QuickReplyButtonFragment f4422jX;

    public C1659bo(QuickReplyButtonFragment quickReplyButtonFragment) {
        this.f4422jX = quickReplyButtonFragment;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Event m40064gz;
        String json = new C1597ab(new C1597ab.C1601d()).toJson(this.f4422jX);
        m40090a = C1649bg.m40090a(Event.EventName.FCEventDropDownOptionSelect);
        if (C1626as.m40233a(json)) {
            m40090a.m40067a(Event.Property.FCPropertyOption, json);
        }
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
