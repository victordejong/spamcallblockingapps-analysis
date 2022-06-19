package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.widget.NestedScrollView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.p057j.C1684ci;
import com.freshchat.consumer.sdk.p061k.C1754p;
/* renamed from: com.freshchat.consumer.sdk.m.t */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/t.class */
public class C1797t extends AbstractC1776a {

    /* renamed from: jH */
    private NestedScrollView f4660jH;

    /* renamed from: pn */
    private C1754p f4661pn;

    /* renamed from: g */
    private void m39554g(View view) {
        new C1684ci().m40016a(view, this.f4661pn, C1298R.dimen.freshchat_calendar_confirmation_avatar_size);
        this.f4660jH = view.findViewById(C1298R.C1300id.freshchat_calendar_timeslot_confirmation_scrollbar);
        View findViewById = view.findViewById(C1298R.C1300id.freshchat_calendar_confirm_button);
        View findViewById2 = view.findViewById(C1298R.C1300id.freshchat_calendar_change_slot_button);
        findViewById.setOnClickListener(new View$OnClickListenerC1799v(this));
        findViewById2.setOnClickListener(new View$OnClickListenerC1800w(this));
        m39551hR();
    }

    /* renamed from: hJ */
    private int m39553hJ() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("EXTRA_CALENDAR_TYPE")) {
            return 0;
        }
        return arguments.getInt("EXTRA_CALENDAR_TYPE");
    }

    /* renamed from: hQ */
    private CalendarDay.TimeSlot m39552hQ() {
        Bundle arguments = getArguments();
        return (arguments == null || !arguments.containsKey("EXTRA_CALENDAR_SELECTED_TIMESLOT")) ? null : (CalendarDay.TimeSlot) arguments.getParcelable("EXTRA_CALENDAR_SELECTED_TIMESLOT");
    }

    /* renamed from: hR */
    private void m39551hR() {
        this.f4660jH.post(new RunnableC1801x(this));
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1776a
    /* renamed from: cc */
    public void mo39555cc(Context context) {
        this.f4661pn = new C1754p(context);
        CalendarMessageMeta calendarMessageMeta = getCalendarMessageMeta();
        CalendarDay.TimeSlot m39552hQ = m39552hQ();
        String m39592hC = m39592hC();
        int m39553hJ = m39553hJ();
        this.f4661pn.setCalendarMessageMeta(calendarMessageMeta);
        this.f4661pn.m39694b(m39552hQ);
        this.f4661pn.m39693br(m39592hC);
        this.f4661pn.setCalendarType(m39553hJ);
    }

    public void onConfigurationChanged(Configuration configuration) {
        C1797t.super.onConfigurationChanged(configuration);
        m39551hR();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1298R.layout.freshchat_calendar_timeslot_confirmation, viewGroup, false);
    }

    public void onViewCreated(View view, Bundle bundle) {
        C1797t.super.onViewCreated(view, bundle);
        m39554g(view);
        view.post(new RunnableC1798u(this));
    }
}
