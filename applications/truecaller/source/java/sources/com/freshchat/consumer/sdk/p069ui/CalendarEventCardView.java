package com.freshchat.consumer.sdk.p069ui;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import com.freshchat.consumer.sdk.C1298R;
import com.freshchat.consumer.sdk.p057j.C1623aq;
import com.freshchat.consumer.sdk.p057j.C1684ci;
import com.freshchat.consumer.sdk.p061k.C1749l;
/* renamed from: com.freshchat.consumer.sdk.ui.CalendarEventCardView */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/ui/CalendarEventCardView.class */
public class CalendarEventCardView extends CardView {

    /* renamed from: oZ */
    private TextView f4777oZ;

    /* renamed from: pK */
    private C1749l f4778pK;

    /* renamed from: pL */
    private View f4779pL;

    /* renamed from: pM */
    private TextView f4780pM;

    public CalendarEventCardView(Context context) {
        super(context);
        m39307cg(context);
    }

    public CalendarEventCardView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m39307cg(context);
    }

    public CalendarEventCardView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m39307cg(context);
    }

    /* renamed from: cg */
    private void m39307cg(Context context) {
        View inflate = LayoutInflater.from(context).inflate(C1298R.layout.freshchat_calendar_event_card_view, (ViewGroup) this, false);
        this.f4779pL = inflate;
        addView(inflate);
        this.f4780pM = (TextView) this.f4779pL.findViewById(C1298R.C1300id.freshchat_calendar_event_card_confirmation);
        this.f4777oZ = (TextView) this.f4779pL.findViewById(C1298R.C1300id.freshchat_calendar_event_card_duration);
    }

    /* renamed from: hW */
    private void m39306hW() {
        new C1684ci().m40016a(this.f4779pL, this.f4778pK, C1298R.dimen.freshchat_calendar_event_card_avatar_size);
        C1749l.EnumC1750a m39715hZ = this.f4778pK.m39715hZ();
        this.f4780pM.setCompoundDrawablesWithIntrinsicBounds(C1623aq.m40238j(getContext(), m39309a(m39715hZ)), 0, 0, 0);
        this.f4780pM.setText(m39308b(m39715hZ));
        this.f4777oZ.setText(this.f4778pK.m39714ia());
    }

    /* renamed from: a */
    public int m39309a(C1749l.EnumC1750a enumC1750a) {
        int i = C1933d.f4817pN[enumC1750a.ordinal()];
        return i != 1 ? i != 2 ? C1298R.attr.freshchatCalendarEventPendingIcon : C1298R.attr.freshchatCalendarEventScheduledIcon : C1298R.attr.freshchatCalendarEventFailedIcon;
    }

    /* renamed from: b */
    public int m39308b(C1749l.EnumC1750a enumC1750a) {
        int i = C1933d.f4817pN[enumC1750a.ordinal()];
        return i != 1 ? i != 2 ? C1298R.string.freshchat_calendar_meeting_state_pending : C1298R.string.freshchat_calendar_meeting_state_scheduled : C1298R.string.freshchat_calendar_meeting_state_failed;
    }

    public void setCalendarTimeSlotMessageViewModel(C1749l c1749l) {
        this.f4778pK = c1749l;
        m39306hW();
    }
}
