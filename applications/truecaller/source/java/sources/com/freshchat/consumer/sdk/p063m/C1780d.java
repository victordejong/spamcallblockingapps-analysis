package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p045a.C1337l;
import com.freshchat.consumer.sdk.p061k.C1747j;
import java.util.List;
/* renamed from: com.freshchat.consumer.sdk.m.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/d.class */
public class C1780d extends AbstractC1778b {

    /* renamed from: oW */
    private C1747j f4634oW;

    /* renamed from: hH */
    private void m39585hH() {
        m39589G(this.f4634oW.m39720hY());
    }

    /* renamed from: hI */
    private List<C1337l.AbstractC1339b> m39584hI() {
        Bundle arguments = getArguments();
        return (arguments == null || !arguments.containsKey("EXTRA_CALENDAR_ALL_TIMESLOTS")) ? null : arguments.getParcelableArrayList("EXTRA_CALENDAR_ALL_TIMESLOTS");
    }

    /* renamed from: hJ */
    private int m39583hJ() {
        Bundle arguments = getArguments();
        if (arguments == null || !arguments.containsKey("EXTRA_CALENDAR_TYPE")) {
            return 0;
        }
        return arguments.getInt("EXTRA_CALENDAR_TYPE");
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1776a
    /* renamed from: cc */
    public void mo39555cc(Context context) {
        C1747j c1747j = new C1747j(context);
        this.f4634oW = c1747j;
        c1747j.m39721H(m39584hI());
        this.f4634oW.setCalendarType(m39583hJ());
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1778b
    public int getCalendarType() {
        return this.f4634oW.getCalendarType();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1298R.layout.freshchat_fragment_calendar_all_timeslots, viewGroup, false);
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1778b
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        m39585hH();
        view.post(new RunnableC1781e(this));
    }
}
