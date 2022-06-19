package com.freshchat.consumer.sdk.p063m;

import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.fragment.app.Fragment;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.beans.CalendarDay;
import com.freshchat.consumer.sdk.beans.CalendarMessageMeta;
import com.freshchat.consumer.sdk.p047b.C1471i;
import com.freshchat.consumer.sdk.p057j.C1626as;
import com.freshchat.consumer.sdk.p057j.C1723q;
import com.freshchat.consumer.sdk.p063m.AbstractC1776a;
import n3.b.a.g;
import p1727n3.p1734b.p1735a.g$a;
import p1727n3.p1859r.p1860a.C26907a;
/* renamed from: com.freshchat.consumer.sdk.m.f */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/f.class */
public class C1782f extends AbstractC1802y {
    private CalendarMessageMeta calendarMessageMeta;

    /* renamed from: oY */
    private String f4636oY;

    /* renamed from: oZ */
    private TextView f4637oZ;

    /* renamed from: pa */
    private AbstractC1783a f4638pa;

    /* renamed from: com.freshchat.consumer.sdk.m.f$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/m/f$a.class */
    public interface AbstractC1783a {
        /* renamed from: b */
        void mo39571b(CalendarMessageMeta calendarMessageMeta);

        /* renamed from: b */
        void mo39570b(CalendarMessageMeta calendarMessageMeta, CalendarDay.TimeSlot timeSlot, int i);
    }

    /* renamed from: a */
    public static C1782f m39582a(int i, CalendarMessageMeta calendarMessageMeta, String str) {
        C1782f c1782f = new C1782f();
        Bundle bundle = new Bundle();
        bundle.putInt("Orientation", i);
        bundle.putParcelable("MessageMeta", calendarMessageMeta);
        bundle.putString("AgentProfilePicUrl", str);
        c1782f.setArguments(bundle);
        return c1782f;
    }

    /* renamed from: g */
    private void m39577g(View view) {
        this.f4637oZ = (TextView) view.findViewById(C1298R.C1300id.freshchat_calendar_dialog_duration_textview);
        ((ImageView) view.findViewById(C1298R.C1300id.freshchat_calendar_cancel_invite_imageview)).setOnClickListener(new View$OnClickListenerC1784g(this));
    }

    /* renamed from: hN */
    public void m39573hN() {
        if (getActivity() == null) {
            return;
        }
        g$a m40834m = C1471i.m40834m(getActivity());
        m40834m.f70854a.f156f = getString(C1298R.string.freshchat_calendar_cancel_booking_prompt_message);
        m40834m.m3660i(C1298R.string.freshchat_calendar_cancel_booking_prompt_cancel, new DialogInterface$OnClickListenerC1785h(this));
        m40834m.m3662g(C1298R.string.freshchat_calendar_cancel_booking_prompt_continue, new DialogInterface$OnClickListenerC1786i(this));
        g m3668a = m40834m.m3668a();
        m3668a.setCanceledOnTouchOutside(false);
        m3668a.show();
    }

    /* renamed from: hO */
    private boolean m39572hO() {
        return getChildFragmentManager().m42942K("Calendar") instanceof AbstractC1776a;
    }

    /* renamed from: a */
    public void m39581a(CalendarDay.TimeSlot timeSlot, int i) {
        AbstractC1783a abstractC1783a = this.f4638pa;
        if (abstractC1783a != null) {
            abstractC1783a.mo39570b(this.calendarMessageMeta, timeSlot, i);
        }
        dismiss();
    }

    /* renamed from: a */
    public void m39580a(AbstractC1776a.EnumC1777a enumC1777a, Bundle bundle) {
        try {
            Fragment fragment = (AbstractC1776a) enumC1777a.m39590hE().newInstance();
            if (bundle != null) {
                fragment.setArguments(bundle);
            }
            C26907a c26907a = new C26907a(getChildFragmentManager());
            if (m39572hO()) {
                c26907a.m1119n(C1298R.anim.freshchat_slide_in_right, C1298R.anim.freshchat_slide_out_left);
                c26907a.m1120m(C1298R.C1300id.freshchat_calendar_child_fragment_container, fragment, "Calendar");
                c26907a.m1128e(null);
            } else {
                c26907a.mo1122k(C1298R.C1300id.freshchat_calendar_child_fragment_container, fragment, "Calendar", 1);
            }
            c26907a.mo1127f();
        } catch (IllegalAccessException | InstantiationException | Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: bo */
    public void m39578bo(String str) {
        if (C1626as.m40233a(str)) {
            this.f4637oZ.setText(str);
            this.f4637oZ.setVisibility(0);
        }
    }

    public CalendarMessageMeta getCalendarMessageMeta() {
        return this.calendarMessageMeta;
    }

    /* renamed from: hK */
    public void m39576hK() {
        Bundle arguments = getArguments();
        if (arguments != null) {
            try {
                if (arguments.containsKey("Orientation")) {
                    setOrientation(arguments.getInt("Orientation"));
                }
                this.calendarMessageMeta = (CalendarMessageMeta) arguments.getParcelable("MessageMeta");
                this.f4636oY = arguments.getString("AgentProfilePicUrl");
            } catch (Exception e) {
                C1723q.m39823a(e);
                dismiss();
            }
        }
    }

    /* renamed from: hL */
    public String m39575hL() {
        return this.f4636oY;
    }

    /* renamed from: hM */
    public void m39574hM() {
        AbstractC1783a abstractC1783a = this.f4638pa;
        if (abstractC1783a != null) {
            abstractC1783a.mo39571b(this.calendarMessageMeta);
        }
        dismiss();
    }

    public void onAttach(Context context) {
        C1782f.super.onAttach(context);
        AbstractC1783a activity = getActivity();
        if (activity instanceof AbstractC1783a) {
            this.f4638pa = activity;
        }
    }

    @Override // com.freshchat.consumer.sdk.p063m.AbstractC1802y
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m39576hK();
    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(C1298R.layout.freshchat_fragment_calendar_bottomsheet_dialog, viewGroup, false);
    }

    public void onDetach() {
        C1782f.super.onDetach();
        this.f4638pa = null;
    }

    public void onDismiss(DialogInterface dialogInterface) {
        if (getActivity() != null) {
            C1471i.m40853a(getContext(), getActivity().getCurrentFocus());
        }
        C1782f.super.onDismiss(dialogInterface);
    }

    public void onViewCreated(View view, Bundle bundle) {
        C1782f.super.onViewCreated(view, bundle);
        m39577g(view);
        if (!m39572hO()) {
            m39580a(AbstractC1776a.EnumC1777a.CALENDAR_EMAIL_ENTRY_FRAGMENT, (Bundle) null);
        }
    }
}
