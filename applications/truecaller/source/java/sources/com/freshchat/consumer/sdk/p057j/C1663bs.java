package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bs */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bs.class */
public final class C1663bs implements C1649bg.AbstractC1651b {

    /* renamed from: lU */
    public final /* synthetic */ String f4429lU;

    /* renamed from: lV */
    public final /* synthetic */ int f4430lV;

    /* renamed from: lW */
    public final /* synthetic */ boolean f4431lW;

    public C1663bs(String str, int i, boolean z) {
        this.f4429lU = str;
        this.f4430lV = i;
        this.f4431lW = z;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        C1649bg.C1650a m40067a2;
        C1649bg.C1650a m40067a3;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventFAQSearch);
        m40067a = m40090a.m40067a(Event.Property.FCPropertySearchKey, this.f4429lU);
        m40067a2 = m40067a.m40067a(Event.Property.FCPropertySearchFAQCount, Integer.valueOf(this.f4430lV));
        m40067a3 = m40067a2.m40067a(Event.Property.FCPropertyIsRelevant, Boolean.valueOf(this.f4431lW));
        m40064gz = m40067a3.m40064gz();
        return m40064gz;
    }
}
