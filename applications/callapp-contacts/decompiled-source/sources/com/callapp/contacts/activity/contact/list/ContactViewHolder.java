package com.callapp.contacts.activity.contact.list;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.contact.list.search.ContactsClickEvents;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactViewHolder.class */
public class ContactViewHolder extends BaseContactHolder {
    protected static final int u = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private CallAppRow v;
    private ProfilePictureView w;
    private TextView x;
    private TextView y;
    private FrameLayout z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public ContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.v = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.w = profilePictureView;
        if (profilePictureView != null) {
            profilePictureView.setClickable(true);
        }
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.x = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            this.x.setContentDescription("ContactName");
        }
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.y = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.getColor(2131099923));
        }
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.z = (FrameLayout) callAppRow.findViewById(2131362211);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_ATOP));
            imageView.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        }
        if (callAppRow.isSwipeable()) {
            ViewUtils.a(this.w, (Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, false, contactItemViewEvents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.a(view, 1);
        if (OptInWithTopImagePopup.b()) {
            OptInWithTopImagePopup.b(this.v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$226U8X3j3p5ySUV9oIIe0zRebqo
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactViewHolder.this.b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$ZWKZ3F3JtLoxZHKu_GxBxOOyTlk
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.a(this.v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
    }

    public final void a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str) {
        this.v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(ContactViewHolder.this.v.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
    }

    public void a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents, final ContactsClickEvents contactsClickEvents) {
        a(baseAdapterItemData.getCacheKey(), baseAdapterItemData, scrollEvents, baseAdapterItemData.getContactId(), baseAdapterItemData.getPhone());
        if (contactItemViewEvents != null) {
            if (!this.v.isSwipeable()) {
                this.z.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    public final void a(View view) {
                        AndroidUtils.a(view, 1);
                        Context context = ContactViewHolder.this.v.getContext();
                        BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                        ListsUtils.a(context, baseAdapterItemData2, ContactUtils.a(baseAdapterItemData2.getPhone(), baseAdapterItemData.getContactId()), contactItemViewEvents);
                    }
                });
                this.z.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$_8XAo744M5skHYVMoqIXmbLUwRI
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean a2;
                        a2 = ContactViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, view);
                        return a2;
                    }
                });
            }
            ListsUtils.a(this.v, baseAdapterItemData, contactItemViewEvents);
        }
        this.v.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), baseAdapterItemData, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactViewHolder.this.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                ContactsClickEvents contactsClickEvents2 = contactsClickEvents;
                if (contactsClickEvents2 != null) {
                    contactsClickEvents2.d(2);
                }
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactViewHolder.this.v.b();
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), baseAdapterItemData, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactViewHolder.this.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
            }
        });
        getProfilePicture().b(baseAdapterItemData.isChecked(), false);
        setViewTexts(baseAdapterItemData);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.w;
    }

    public CallAppRow getView() {
        return this.v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new ContactListAdapterDataLoadTask();
    }

    public void setName(CharSequence charSequence) {
        this.x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.y.setText(charSequence);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setPhotoBackgroundAndInitials(BaseAdapterItemData baseAdapterItemData) {
        if (PhoneManager.get().a(baseAdapterItemData.getPhone())) {
            int color = ThemeUtils.getColor(2131100228);
            int a2 = ThemeUtils.a(CallAppApplication.get(), 2131099786);
            ProfilePictureView profilePictureView = this.w;
            GlideUtils.GlideRequestBuilder a3 = new GlideUtils.GlideRequestBuilder(2131231612).a(color, PorterDuff.Mode.SRC_IN);
            a3.g = Integer.valueOf(a2);
            a3.k = 0;
            a3.l = true;
            profilePictureView.a(a3.b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1));
            return;
        }
        setProfileText(StringUtils.r(baseAdapterItemData.displayName));
    }

    void setProfileText(String str) {
        this.w.setText(str);
    }

    protected void setViewTexts(BaseAdapterItemData baseAdapterItemData) {
        String a2 = ContactUtils.a(baseAdapterItemData.normalNumbers, baseAdapterItemData.getPhone());
        setPhotoBackgroundAndInitials(baseAdapterItemData);
        setName(StringUtils.j(baseAdapterItemData.displayName));
        setPhone(a2);
    }
}
