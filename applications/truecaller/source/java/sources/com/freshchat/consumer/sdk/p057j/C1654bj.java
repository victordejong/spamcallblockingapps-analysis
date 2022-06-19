package com.freshchat.consumer.sdk.p057j;

import android.net.Uri;
import com.freshchat.consumer.sdk.Event;
import com.freshchat.consumer.sdk.p057j.C1649bg;
/* renamed from: com.freshchat.consumer.sdk.j.bj */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/bj.class */
public final class C1654bj implements C1649bg.AbstractC1651b {

    /* renamed from: iD */
    public final /* synthetic */ Uri f4409iD;

    public C1654bj(Uri uri) {
        this.f4409iD = uri;
    }

    @Override // com.freshchat.consumer.sdk.p057j.C1649bg.AbstractC1651b
    /* renamed from: gy */
    public Event mo39980gy() {
        C1649bg.C1650a m40090a;
        C1649bg.C1650a m40067a;
        Event m40064gz;
        m40090a = C1649bg.m40090a(Event.EventName.FCEventLinkTap);
        m40067a = m40090a.m40067a(Event.Property.FCPropertyURL, this.f4409iD.toString());
        m40064gz = m40067a.m40064gz();
        return m40064gz;
    }
}
