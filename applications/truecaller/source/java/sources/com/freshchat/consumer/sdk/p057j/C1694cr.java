package com.freshchat.consumer.sdk.p057j;

import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.cr */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/cr.class */
public final class C1694cr implements C1649bg.AbstractC1651b {

    /* renamed from: jZ */
    public final /* synthetic */ boolean f4486jZ;

    public C1694cr(boolean z) {
        this.f4486jZ = z;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(this.f4486jZ ? Event.EventName.FCEventShowOriginalClick : Event.EventName.FCEventHideOriginalClick);
        m40064gz = m40090a.m40064gz();
        return m40064gz;
    }
}
