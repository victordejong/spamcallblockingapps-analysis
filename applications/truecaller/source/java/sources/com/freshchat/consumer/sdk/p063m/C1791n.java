package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p057j.C1716k;
import com.freshchat.consumer.sdk.p061k.C1756r;
import com.freshchat.consumer.sdk.service.C1824b;
import com.freshchat.consumer.sdk.service.Status;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.m.n */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/n.class */
public class C1791n extends AbstractC1778b {

    /* renamed from: bX */
    private ProgressBar f4649bX;

    /* renamed from: qZ */
    private C1756r f4650qZ;

    /* renamed from: ra */
    private View f4651ra;

    /* renamed from: rb */
    private LinearLayout f4652rb;

    /* renamed from: rc */
    private View f4653rc;

    /* renamed from: rd */
    private View f4654rd;

    /* renamed from: a */
    public void m39563a(C1824b<List<C1337l.AbstractC1339b>> c1824b) {
        View view;
        this.f4649bX.setVisibility(8);
        this.f4651ra.setVisibility(0);
        if (c1824b.getStatus() == Status.SUCCESS) {
            m39558iS();
            List<C1337l.AbstractC1339b> data = c1824b.getData();
            this.f4654rd.setVisibility(8);
            if (C1716k.m39902a(data)) {
                this.f4652rb.setVisibility(0);
                this.f4653rc.setVisibility(8);
                m39589G(data);
                return;
            }
            this.f4650qZ.m39673jr();
            this.f4652rb.setVisibility(8);
            view = this.f4653rc;
        } else {
            this.f4652rb.setVisibility(8);
            this.f4653rc.setVisibility(8);
            view = this.f4654rd;
        }
        view.setVisibility(0);
    }

    /* renamed from: g */
    private void m39560g(View view) {
        this.f4649bX = (ProgressBar) view.findViewById(C1298R.C1300id.freshchat_fragment_calendar_limited_time_slots_progressbar);
        this.f4651ra = view.findViewById(C1298R.C1300id.freshchat_limited_time_slots_view_content);
        this.f4652rb = (LinearLayout) view.findViewById(C1298R.C1300id.freshchat_calendar_timeslots_data_layout);
        View findViewById = view.findViewById(C1298R.C1300id.freshchat_calendar_show_more_time_slots_button);
        this.f4653rc = view.findViewById(C1298R.C1300id.freshchat_calendar_no_timeslots_layout);
        View findViewById2 = view.findViewById(C1298R.C1300id.freshchat_calendar_cancel_invite_button);
        this.f4654rd = view.findViewById(C1298R.C1300id.freshchat_calendar_retry_option_layout);
        View findViewById3 = view.findViewById(C1298R.C1300id.freshchat_calendar_retry_button);
        findViewById.setOnClickListener(new View$OnClickListenerC1792o(this));
        findViewById3.setOnClickListener(new View$OnClickListenerC1793p(this));
        findViewById2.setOnClickListener(new View$OnClickListenerC1794q(this));
    }

    /* renamed from: hH */
    public void m39559hH() {
        if (isDetached()) {
            return;
        }
        this.f4649bX.setVisibility(0);
        this.f4651ra.setVisibility(8);
        this.f4650qZ.m39680a(new C1795r(this));
    }

    /* renamed from: iS */
    private void m39558iS() {
        C1782f m39593hB = m39593hB();
        if (m39593hB != null) {
            m39593hB.m39578bo(this.f4650qZ.m39676ia());
        }
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1776a
    /* renamed from: cc */
    public void mo39555cc(Context context) {
        C1756r c1756r = new C1756r(context);
        this.f4650qZ = c1756r;
        c1756r.setCalendarMessageMeta(getCalendarMessageMeta());
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1778b
    public int getCalendarType() {
        return this.f4650qZ.getCalendarType();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1298R.layout.freshchat_fragment_calendar_limited_timeslots, viewGroup, false);
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1778b
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m39560g(view);
        m39559hH();
    }
}
