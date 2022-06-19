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

    /* renamed from: u */
    protected static final int f22440u = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: v */
    private CallAppRow f22441v;

    /* renamed from: w */
    private ProfilePictureView f22442w;

    /* renamed from: x */
    private TextView f22443x;

    /* renamed from: y */
    private TextView f22444y;

    /* renamed from: z */
    private FrameLayout f22445z;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/contact/list/ContactViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            ContactViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    public ContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f22441v = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f22442w = profilePictureView;
        if (profilePictureView != null) {
            profilePictureView.setClickable(true);
        }
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.f22443x = textView;
        if (textView != null) {
            textView.setTextColor(ThemeUtils.getColor(2131100140));
            this.f22443x.setContentDescription("ContactName");
        }
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.f22444y = textView2;
        if (textView2 != null) {
            textView2.setTextColor(ThemeUtils.getColor(2131099923));
        }
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.f22445z = (FrameLayout) callAppRow.findViewById(2131362211);
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_ATOP));
            imageView.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        }
        if (callAppRow.isSwipeable()) {
            ViewUtils.m27320a(this.f22442w, (Drawable) null);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m30681a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f22441v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, false, contactItemViewEvents);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m30680a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.m27630a(view, 1);
        if (OptInWithTopImagePopup.m28052b()) {
            OptInWithTopImagePopup.m28051b(this.f22441v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$226U8X3j3p5ySUV9oIIe0zRebqo
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactViewHolder.this.m30678b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$ZWKZ3F3JtLoxZHKu_GxBxOOyTlk
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactViewHolder.this.m30681a(baseAdapterItemData, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.m27481a(this.f22441v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m30678b(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f22441v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
    }

    /* renamed from: a */
    public final void m30682a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str) {
        this.f22441v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27486a(ContactViewHolder.this.f22441v.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
    }

    /* renamed from: a */
    public void mo30418a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents, final ContactsClickEvents contactsClickEvents) {
        m31503a(baseAdapterItemData.getCacheKey(), baseAdapterItemData, scrollEvents, baseAdapterItemData.getContactId(), baseAdapterItemData.getPhone());
        if (contactItemViewEvents != null) {
            if (!this.f22441v.isSwipeable()) {
                this.f22445z.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.1
                    @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                    /* renamed from: a */
                    public final void mo26371a(View view) {
                        AndroidUtils.m27630a(view, 1);
                        Context context = ContactViewHolder.this.f22441v.getContext();
                        BaseAdapterItemData baseAdapterItemData2 = baseAdapterItemData;
                        ListsUtils.m27484a(context, baseAdapterItemData2, ContactUtils.m28326a(baseAdapterItemData2.getPhone(), baseAdapterItemData.getContactId()), contactItemViewEvents);
                    }
                });
                this.f22445z.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.contact.list._$$Lambda$ContactViewHolder$_8XAo744M5skHYVMoqIXmbLUwRI
                    @Override // android.view.View.OnLongClickListener
                    public final boolean onLongClick(View view) {
                        boolean m30680a;
                        m30680a = ContactViewHolder.this.m30680a(baseAdapterItemData, contactItemViewEvents, view);
                        return m30680a;
                    }
                });
            }
            ListsUtils.m27476a(this.f22441v, baseAdapterItemData, contactItemViewEvents);
        }
        this.f22441v.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.2
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), baseAdapterItemData, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactViewHolder.this.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
                ContactsClickEvents contactsClickEvents2 = contactsClickEvents;
                if (contactsClickEvents2 != null) {
                    contactsClickEvents2.mo30422d(2);
                }
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.contact.list.ContactViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactViewHolder.this.f22441v.m31479b();
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), baseAdapterItemData, "contact list", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactViewHolder.this.getAdapterPosition(), 2), ENTRYPOINT.CALL_LOG_CONTACT_LIST);
            }
        });
        getProfilePicture().m26679b(baseAdapterItemData.isChecked(), false);
        setViewTexts(baseAdapterItemData);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_LOAD_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f22442w;
    }

    public CallAppRow getView() {
        return this.f22441v;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactListAdapterDataLoadTask();
    }

    public void setName(CharSequence charSequence) {
        this.f22443x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.f22444y.setText(charSequence);
    }

    public void setPhotoBackgroundAndInitials(BaseAdapterItemData baseAdapterItemData) {
        if (!PhoneManager.get().m28240a(baseAdapterItemData.getPhone())) {
            setProfileText(StringUtils.m26010r(baseAdapterItemData.displayName));
            return;
        }
        int color = ThemeUtils.getColor(2131100228);
        int m27386a = ThemeUtils.m27386a(CallAppApplication.get(), 2131099786);
        ProfilePictureView profilePictureView = this.f22442w;
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(2131231612).m27025a(color, PorterDuff.Mode.SRC_IN);
        m27025a.f28241g = Integer.valueOf(m27386a);
        m27025a.f28245k = 0;
        m27025a.f28246l = true;
        profilePictureView.m26684a(m27025a.m27018b(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387), -1));
    }

    void setProfileText(String str) {
        this.f22442w.setText(str);
    }

    protected void setViewTexts(BaseAdapterItemData baseAdapterItemData) {
        String m28319a = ContactUtils.m28319a(baseAdapterItemData.normalNumbers, baseAdapterItemData.getPhone());
        setPhotoBackgroundAndInitials(baseAdapterItemData);
        setName(StringUtils.m26020j(baseAdapterItemData.displayName));
        setPhone(m28319a);
    }
}
