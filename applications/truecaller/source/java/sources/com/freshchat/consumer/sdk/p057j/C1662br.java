package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
import java.util.Arrays;
/* renamed from: com.freshchat.consumer.sdk.j.br */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/br.class */
public final class C1662br implements C1649bg.AbstractC1651b {

    /* renamed from: lS */
    public final /* synthetic */ String[] f4428lS;

    public C1662br(String[] strArr) {
        this.f4428lS = strArr;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventFAQCategoryListOpen);
        if (C1626as.m40225f(this.f4428lS)) {
            m40090a.m40067a(Event.Property.FCPropertyInputTags, Arrays.toString(this.f4428lS));
        }
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
