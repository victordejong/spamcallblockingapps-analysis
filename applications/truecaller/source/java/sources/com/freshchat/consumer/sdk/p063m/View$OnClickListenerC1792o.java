package com.freshchat.consumer.sdk.p063m;

import android.os.Bundle;
import android.view.View;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p061k.C1756r;
import com.freshchat.consumer.sdk.p063m.AbstractC1776a;
import java.util.ArrayList;
/* renamed from: com.freshchat.consumer.sdk.m.o */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/o.class */
public class View$OnClickListenerC1792o implements View.OnClickListener {

    /* renamed from: pl */
    public final /* synthetic */ C1791n f4655pl;

    public View$OnClickListenerC1792o(C1791n c1791n) {
        this.f4655pl = c1791n;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1756r c1756r;
        c1756r = this.f4655pl.f4650qZ;
        ArrayList<C1337l.AbstractC1339b> m39675jp = c1756r.m39675jp();
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("EXTRA_CALENDAR_ALL_TIMESLOTS", m39675jp);
        bundle.putInt("EXTRA_CALENDAR_TYPE", this.f4655pl.getCalendarType());
        this.f4655pl.m39594a(AbstractC1776a.EnumC1777a.CALENDAR_ALL_TIMESLOTS_VIEW_FRAGMENT, bundle);
    }
}
