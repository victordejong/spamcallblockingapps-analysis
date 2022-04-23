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
    private CallAppRow v;
    private final TextView w;
    private final CallAppCheckBox x;
    private final ImageView y;
    private final FourEventsIconsViewGroup z;

    public ContactCallLogViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.v = callAppRow;
        TextView textView = (TextView) callAppRow.findViewById(2131363686);
        this.w = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.x = (CallAppCheckBox) callAppRow.findViewById(2131362340);
        this.y = (ImageView) callAppRow.findViewById(2131363866);
        this.z = (FourEventsIconsViewGroup) callAppRow.findViewById(2131362865);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(OnListItemInteractionsListener onListItemInteractionsListener, SingleCallLogData singleCallLogData, View view) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Long pressed on calling from contact call log", Constants.LONG_CLICK);
        onListItemInteractionsListener.onListItemInteracted(view, singleCallLogData);
    }

    public final void a(final SingleCallLogData singleCallLogData, ScrollEvents scrollEvents, final OnListItemInteractionsListener<SingleCallLogData> onListItemInteractionsListener, final OnListItemInteractionsListener<SingleCallLogData> onListItemInteractionsListener2, boolean z) {
        a(singleCallLogData.getCacheKey(), singleCallLogData, scrollEvents, singleCallLogData.contactId, singleCallLogData.getPhone());
        int i = 0;
        this.z.setEventIcon(0, CallLogUtils.getCallHistoryIcon(singleCallLogData.g));
        setDurationText(singleCallLogData.getDuration());
        singleCallLogData.displayName = DateUtils.a(singleCallLogData.f11102d).toString();
        setName(singleCallLogData.displayName);
        setPhone(singleCallLogData.f11101c.getRawNumber());
        if (Singletons.get().getSimManager().getDualSimOperators() == null || singleCallLogData.getSimId() == SimManager.SimId.ASK) {
            this.y.setVisibility(8);
        } else {
            this.y.setVisibility(0);
            this.y.setImageResource(SimManager.b(singleCallLogData.getSimId()));
            this.y.setColorFilter(ThemeUtils.getColor(2131100108));
        }
        CallAppCheckBox callAppCheckBox = this.x;
        if (!z) {
            i = 4;
        }
        callAppCheckBox.setVisibility(i);
        if (z) {
            this.x.setChecked(singleCallLogData.isChecked());
        }
        this.v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogViewHolder$p8wKhphYQvDn9jH2MUD5WWhOffM
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean onListItemInteracted;
                onListItemInteracted = OnListItemInteractionsListener.this.onListItemInteracted(view, singleCallLogData);
                return onListItemInteracted;
            }
        });
        this.v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.calllog.contactcalllog._$$Lambda$ContactCallLogViewHolder$SVtSIMuXEcKxOu2MrmnJTvGNvX8
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                ContactCallLogViewHolder.a(OnListItemInteractionsListener.this, singleCallLogData, view);
            }
        });
    }

    public void setDurationText(CharSequence charSequence) {
        this.w.setText(charSequence);
    }
}
