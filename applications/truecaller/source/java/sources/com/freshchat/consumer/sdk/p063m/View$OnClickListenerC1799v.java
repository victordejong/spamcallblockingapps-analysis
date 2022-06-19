package com.freshchat.consumer.sdk.p063m;

import android.view.View;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.p061k.C1754p;
/* renamed from: com.freshchat.consumer.sdk.m.v */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/v.class */
public class View$OnClickListenerC1799v implements View.OnClickListener {

    /* renamed from: pp */
    public final /* synthetic */ C1797t f4663pp;

    public View$OnClickListenerC1799v(C1797t c1797t) {
        this.f4663pp = c1797t;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C1754p c1754p;
        C1754p c1754p2;
        C1782f m39593hB = this.f4663pp.m39593hB();
        if (m39593hB != null) {
            c1754p = this.f4663pp.f4661pn;
            CalendarDay.TimeSlot m39691ih = c1754p.m39691ih();
            c1754p2 = this.f4663pp.f4661pn;
            int calendarType = c1754p2.getCalendarType();
            if (m39691ih == null) {
                return;
            }
            m39593hB.m39581a(m39691ih, calendarType);
        }
    }
}
