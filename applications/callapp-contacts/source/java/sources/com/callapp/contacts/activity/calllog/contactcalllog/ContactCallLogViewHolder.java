package com.callapp.contacts.activity.calllog.contactcalllog;

import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.calllog.SingleCallLogData;
import com.callapp.contacts.activity.contact.list.ContactViewHolder;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.sim.SimManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.CallAppCheckBox;
import com.callapp.contacts.widget.FourEventsIconsViewGroup;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/contactcalllog/ContactCallLogViewHolder.class */
public class ContactCallLogViewHolder extends ContactViewHolder {

    /* renamed from: v */
    private CallAppRow f20803v;

    /* renamed from: w */
    private final TextView f20804w;

    /* renamed from: x */
    private final CallAppCheckBox f20805x;

    /* renamed from: y */
    private final ImageView f20806y;

    /* renamed from: z */
    private final FourEventsIconsViewGroup f20807z;

    public ContactCallLogViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f20803v = callAppRow;
        TextView textView = (TextView) callAppRow.findViewById(2131363686);
        this.f20804w = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20805x = (CallAppCheckBox) callAppRow.findViewById(2131362340);
        this.f20806y = (ImageView) callAppRow.findViewById(2131363866);
        this.f20807z = (FourEventsIconsViewGroup) callAppRow.findViewById(2131362865);
    }

    /* renamed from: a */
    public static /* synthetic */ void m31298a(OnListItemInteractionsListener onListItemInteractionsListener, SingleCallLogData singleCallLogData, View view) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Long pressed on calling from contact call log", Constants.LONG_CLICK);
        onListItemInteractionsListener.onListItemInteracted(view, singleCallLogData);
    }

    /* renamed from: a */
    public final void m31299a(final SingleCallLogData singleCallLogData, ScrollEvents scrollEvents, final OnListItemInteractionsListener<SingleCallLogData> onListItemInteractionsListener, final OnListItemInteractionsListener<SingleCallLogData> onListItemInteractionsListener2, boolean z) {
        m31503a(singleCallLogData.getCacheKey(), singleCallLogData, scrollEvents, singleCallLogData.contactId, singleCallLogData.getPhone());
        int i = 0;
        this.f20807z.setEventIcon(0, CallLogUtils.getCallHistoryIcon(singleCallLogData.f20771g));
        setDurationText(singleCallLogData.getDuration());
        singleCallLogData.displayName = DateUtils.m27127a(singleCallLogData.f20275d).toString();
        setName(singleCallLogData.displayName);
        setPhone(singleCallLogData.f20274c.getRawNumber());
        if (Singletons.get().getSimManager().getDualSimOperators() == null || singleCallLogData.getSimId() == SimManager.SimId.ASK) {
            this.f20806y.setVisibility(8);
        } else {
            this.f20806y.setVisibility(0);
            this.f20806y.setImageResource(SimManager.m28141b(singleCallLogData.getSimId()));
            this.f20806y.setColorFilter(ThemeUtils.getColor(2131100108));
        }
        CallAppCheckBox callAppCheckBox = this.f20805x;
        if (!z) {
            i = 4;
        }
        callAppCheckBox.setVisibility(i);
        if (z) {
            this.f20805x.setChecked(singleCallLogData.isChecked());
        }
        this.f20803v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean onListItemInteracted;
                onListItemInteracted = OnListItemInteractionsListener.this.onListItemInteracted(view, singleCallLogData);
                return onListItemInteracted;
            }
        });
        this.f20803v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogViewHolder$SVtSIMuXEcKxOu2MrmnJTvGNvX8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactCallLogViewHolder.m31298a(OnListItemInteractionsListener.this, singleCallLogData, view);
            }
        });
    }

    public void setDurationText(CharSequence charSequence) {
        this.f20804w.setText(charSequence);
    }
}
