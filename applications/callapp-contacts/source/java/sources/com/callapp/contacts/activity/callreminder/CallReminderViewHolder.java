package com.callapp.contacts.activity.callreminder;

import android.content.Intent;
import android.graphics.PorterDuff;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.details.ContactDetailsActivity;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.Calendar;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallReminderViewHolder.class */
public class CallReminderViewHolder extends BaseContactHolder {

    /* renamed from: u */
    private CallAppRow f20841u;

    /* renamed from: v */
    private ProfilePictureView f20842v;

    /* renamed from: w */
    private TextView f20843w;

    /* renamed from: x */
    private TextView f20844x;

    /* renamed from: y */
    private ImageView f20845y;

    /* renamed from: z */
    private ImageView f20846z;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask.class */
    final class RemindersAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private RemindersAdapterDataLoadTask() {
            super();
            CallReminderViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final boolean mo29762a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber());
        }
    }

    public CallReminderViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f20841u = callAppRow;
        int color = ThemeUtils.getColor(2131099891);
        int color2 = ThemeUtils.getColor(2131100140);
        this.f20842v = (ProfilePictureView) callAppRow.findViewById(2131363565);
        TextView textView = (TextView) callAppRow.findViewById(2131362445);
        this.f20843w = textView;
        textView.setTextColor(color2);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362527);
        this.f20844x = textView2;
        textView2.setTextColor(color2);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362673);
        this.f20845y = imageView;
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(imageView, 2131231643, callAppRow.getContext()).m27025a(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(color);
        m27025a.f28246l = true;
        m27025a.m27013d();
        ImageView imageView2 = (ImageView) callAppRow.findViewById(2131362547);
        this.f20846z = imageView2;
        GlideUtils.GlideRequestBuilder m27025a2 = new GlideUtils.GlideRequestBuilder(imageView2, 2131231592, callAppRow.getContext()).m27025a(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN);
        m27025a2.f28241g = Integer.valueOf(color);
        m27025a2.f28246l = true;
        m27025a2.m27013d();
    }

    /* renamed from: a */
    public /* synthetic */ void m31281a(CallRemindersData callRemindersData, View view) {
        AndroidUtils.m27630a(view, 1);
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Pressed on contact image in: reminders", Constants.CLICK);
        Intent createIntent = ContactDetailsActivity.createIntent(view.getContext(), callRemindersData.contactId, callRemindersData.phone.getRawNumber(), null, true, DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), getAdapterPosition(), 2), "CallReminderProfilePicture", ENTRYPOINT.CALL_LOG_CONTACT_LIST);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, callRemindersData.displayName);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, false);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, false);
        Activities.m27685a(view.getContext(), createIntent);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m31280a(CallRemindersData callRemindersData, Action.ContextType contextType, String str, View view) {
        AndroidUtils.m27630a(view, 1);
        ListsUtils.m27486a(this.f20841u.getContext(), callRemindersData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
        return true;
    }

    /* renamed from: a */
    public final void m31279a(final CallRemindersData callRemindersData, ScrollEvents scrollEvents, final Action.ContextType contextType, final String str) {
        m31503a(callRemindersData.getCacheKey(), callRemindersData, scrollEvents, callRemindersData.contactId, callRemindersData.getPhone());
        this.f20843w.setText(callRemindersData.displayName);
        ListsUtils.m27476a(this.f20841u, callRemindersData, (ContactItemViewEvents) null);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(callRemindersData.notificationTime.longValue());
        calendar.add(12, 1);
        this.f20844x.setText(DateUtils.m27117c(calendar.getTime()));
        this.f20842v.setText(StringUtils.m26010r(callRemindersData.displayName));
        View.OnClickListener onClickListener = new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder._$$Lambda$CallReminderViewHolder$380c9xrovDUmCq8fj_vE7MnrJmU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallReminderViewHolder.this.m31281a(callRemindersData, view);
            }
        };
        this.f20842v.setOnClickListener(onClickListener);
        this.f20841u.setOnContainerClickListener(onClickListener);
        this.f20841u.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callreminder._$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI_I_Uiw
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean m31280a;
                m31280a = CallReminderViewHolder.this.m31280a(callRemindersData, contextType, str, view);
                return m31280a;
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20842v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new RemindersAdapterDataLoadTask();
    }

    public void setOnDeleteClickListener(View.OnClickListener onClickListener) {
        this.f20846z.setOnClickListener(onClickListener);
    }

    public void setOnEditClickListener(View.OnClickListener onClickListener) {
        this.f20845y.setOnClickListener(onClickListener);
    }
}
