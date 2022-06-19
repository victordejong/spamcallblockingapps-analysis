package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import java.util.Arrays;
/* renamed from: com.freshchat.consumer.sdk.j.bt */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bt.class */
public final class C1664bt implements C1649bg.AbstractC1651b {

    /* renamed from: lS */
    public final /* synthetic */ String[] f4432lS;

    public C1664bt(String[] strArr) {
        this.f4432lS = strArr;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventChannelListOpen);
        if (C1626as.m40225f(this.f4432lS)) {
            m40090a.m40067a(Event.Property.FCPropertyInputTags, Arrays.toString(this.f4432lS));
        }
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
