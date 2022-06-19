package com.freshchat.consumer.sdk.p061k;

import android.content.Context;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.freshchat.consumer.sdk.beans.fragment.CalendarEventFragment;
import com.freshchat.consumer.sdk.p057j.C1689cm;
import com.freshchat.consumer.sdk.p057j.C1723q;
/* renamed from: com.freshchat.consumer.sdk.k.l */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/l.class */
public class C1749l extends C1754p {

    /* renamed from: qd */
    private CalendarEventFragment f4562qd;

    /* renamed from: qe */
    private boolean f4563qe;

    /* renamed from: com.freshchat.consumer.sdk.k.l$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/k/l$a.class */
    public enum EnumC1750a {
        PENDING,
        CREATED,
        FAILED;
        

        /* renamed from: qi */
        public static final EnumC1750a f4567qi = PENDING;
    }

    public C1749l(Context context) {
        super(context);
    }

    /* renamed from: b */
    public void m39716b(CalendarEventFragment calendarEventFragment) {
        this.f4562qd = calendarEventFragment;
        m39694b(new CalendarDay.TimeSlot(calendarEventFragment.getStartMillis(), calendarEventFragment.getEndMillis()));
    }

    /* renamed from: hZ */
    public EnumC1750a m39715hZ() {
        CalendarEventFragment calendarEventFragment = this.f4562qd;
        return calendarEventFragment == null ? EnumC1750a.f4567qi : !this.f4563qe ? EnumC1750a.PENDING : C1689cm.m40008a(calendarEventFragment) ? EnumC1750a.CREATED : EnumC1750a.FAILED;
    }

    /* renamed from: ia */
    public String m39714ia() {
        String str = "";
        try {
            if (this.f4576qq != null) {
                str = getContext().getString(C1298R.string.freshchat_calendar_duration).replace(getContext().getString(C1298R.string.freshchat_calendar_duration_place_holder), String.valueOf((this.f4576qq.getToMillis() - this.f4576qq.getFromMillis()) / DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL));
            }
        } catch (Exception e) {
            C1723q.m39823a(e);
            str = "";
        }
        return str;
    }

    /* renamed from: y */
    public void m39713y(boolean z) {
        this.f4563qe = z;
    }
}
