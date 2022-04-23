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
    private CallAppRow u;
    private ProfilePictureView v;
    private TextView w;
    private TextView x;
    private ImageView y;
    private ImageView z;

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallReminderViewHolder$RemindersAdapterDataLoadTask.class */
    final class RemindersAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private RemindersAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallReminderViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.u = callAppRow;
        int color = ThemeUtils.getColor(2131099891);
        int color2 = ThemeUtils.getColor(2131100140);
        this.v = (ProfilePictureView) callAppRow.findViewById(2131363565);
        TextView textView = (TextView) callAppRow.findViewById(2131362445);
        this.w = textView;
        textView.setTextColor(color2);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362527);
        this.x = textView2;
        textView2.setTextColor(color2);
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362673);
        this.y = imageView;
        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(imageView, 2131231643, callAppRow.getContext()).a(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN);
        a2.g = Integer.valueOf(color);
        a2.l = true;
        a2.d();
        ImageView imageView2 = (ImageView) callAppRow.findViewById(2131362547);
        this.z = imageView2;
        GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(imageView2, 2131231592, callAppRow.getContext()).a(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN);
        a3.g = Integer.valueOf(color);
        a3.l = true;
        a3.d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CallRemindersData callRemindersData, View view) {
        AndroidUtils.a(view, 1);
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Pressed on contact image in: reminders", Constants.CLICK);
        Intent createIntent = ContactDetailsActivity.createIntent(view.getContext(), callRemindersData.contactId, callRemindersData.phone.getRawNumber(), null, true, DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), getAdapterPosition(), 2), "CallReminderProfilePicture", ENTRYPOINT.CALL_LOG_CONTACT_LIST);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FULL_NAME, callRemindersData.displayName);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_CORRECTED_INFO_PRESENTER, false);
        createIntent.putExtra(ContactDetailsActivity.EXTRA_FORCE_SHOW_IS_SPAM_PRESENTER, false);
        Activities.a(view.getContext(), createIntent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(CallRemindersData callRemindersData, Action.ContextType contextType, String str, View view) {
        AndroidUtils.a(view, 1);
        ListsUtils.a(this.u.getContext(), callRemindersData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
        return true;
    }

    public final void a(final CallRemindersData callRemindersData, ScrollEvents scrollEvents, final Action.ContextType contextType, final String str) {
        a(callRemindersData.getCacheKey(), callRemindersData, scrollEvents, callRemindersData.contactId, callRemindersData.getPhone());
        this.w.setText(callRemindersData.displayName);
        ListsUtils.a(this.u, callRemindersData, (ContactItemViewEvents) null);
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(callRemindersData.notificationTime.longValue());
        instance.add(12, 1);
        this.x.setText(DateUtils.c(instance.getTime()));
        this.v.setText(StringUtils.r(callRemindersData.displayName));
        View.OnClickListener ___lambda_callreminderviewholder_380c9xrovdumcq8fj_ve7mnrjmu = new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder._$$Lambda$CallReminderViewHolder$380c9xrovDUmCq8fj_vE7MnrJmU
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CallReminderViewHolder.this.a(callRemindersData, view);
            }
        };
        this.v.setOnClickListener(___lambda_callreminderviewholder_380c9xrovdumcq8fj_ve7mnrjmu);
        this.u.setOnContainerClickListener(___lambda_callreminderviewholder_380c9xrovdumcq8fj_ve7mnrjmu);
        this.u.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callreminder._$$Lambda$CallReminderViewHolder$cf7I6wP3KuX3O9Lv8hwLI_I_Uiw
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                boolean a2;
                a2 = CallReminderViewHolder.this.a(callRemindersData, contextType, str, view);
                return a2;
            }
        });
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new RemindersAdapterDataLoadTask();
    }

    public void setOnDeleteClickListener(View.OnClickListener onClickListener) {
        this.z.setOnClickListener(onClickListener);
    }

    public void setOnEditClickListener(View.OnClickListener onClickListener) {
        this.y.setOnClickListener(onClickListener);
    }
}
