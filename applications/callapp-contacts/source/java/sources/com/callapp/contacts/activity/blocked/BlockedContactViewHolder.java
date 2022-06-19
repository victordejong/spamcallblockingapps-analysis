package com.callapp.contacts.activity.blocked;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.p023b.C0434e;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.Action;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseContactHolder;
import com.callapp.contacts.activity.base.CallAppRow;
import com.callapp.contacts.activity.base.ScrollEvents;
import com.callapp.contacts.activity.blocked.BlockedAdapter;
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.Listener;
import com.callapp.contacts.loader.FastCacheDataManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.BlockManager;
import com.callapp.contacts.manager.ContactLoaderManager;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.model.ReminderType;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.BlockedRule;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.UserCorrectedInfoUtil;
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.StringUtils;
import java.util.EnumSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedContactViewHolder.class */
public class BlockedContactViewHolder extends BaseContactHolder {

    /* renamed from: u */
    private static final C0434e<Phone, String> f20471u = new C0434e<>(50);

    /* renamed from: A */
    private ReminderData f20472A;

    /* renamed from: B */
    private FrameLayout f20473B;

    /* renamed from: C */
    private FrameLayout f20474C;

    /* renamed from: v */
    private CallAppRow f20475v;

    /* renamed from: w */
    private ProfilePictureView f20476w;

    /* renamed from: x */
    private TextView f20477x;

    /* renamed from: y */
    private TextView f20478y;

    /* renamed from: z */
    private ImageView f20479z;

    /* renamed from: com.callapp.contacts.activity.blocked.BlockedContactViewHolder$1 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedContactViewHolder$1.class */
    class View$OnLongClickListenerC58391 implements View.OnLongClickListener {

        /* renamed from: a */
        final /* synthetic */ BaseAdapterItemData f20480a;

        /* renamed from: b */
        final /* synthetic */ Action.ContextType f20481b;

        /* renamed from: c */
        final /* synthetic */ String f20482c;

        View$OnLongClickListenerC58391(BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str) {
            BlockedContactViewHolder.this = r4;
            this.f20480a = baseAdapterItemData;
            this.f20481b = contextType;
            this.f20482c = str;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.m27630a(view, 1);
            ListsUtils.m27486a(BlockedContactViewHolder.this.f20475v.getContext(), this.f20480a, this.f20481b, this.f20482c, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask.class */
    public final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            BlockedContactViewHolder.this = r4;
        }

        /* synthetic */ ContactListAdapterDataLoadTask(BlockedContactViewHolder blockedContactViewHolder, View$OnLongClickListenerC58391 view$OnLongClickListenerC58391) {
            this();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(final ContactData contactData) {
            boolean mo29326b = super.mo29326b(contactData);
            setDeviceId(contactData.getDeviceId());
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.ContactListAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactListAdapterDataLoadTask contactListAdapterDataLoadTask = ContactListAdapterDataLoadTask.this;
                    if (contactListAdapterDataLoadTask.mo29762a(contactListAdapterDataLoadTask.getDeviceId(), ContactListAdapterDataLoadTask.this.getPhone(), contactData)) {
                        String fullName = contactData.getFullName();
                        if (!StringUtils.m26045b((CharSequence) fullName)) {
                            return;
                        }
                        BlockedContactViewHolder.f20471u.put(contactData.getPhone(), StringUtils.m26020j(fullName));
                        BlockedContactViewHolder.this.m31436a(fullName, ContactListAdapterDataLoadTask.this.f20289b != null ? ContactListAdapterDataLoadTask.this.f20289b.getRawNumber() : null, BlockedContactViewHolder.this.f20472A);
                    }
                }
            });
            return mo29326b;
        }
    }

    public BlockedContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f20475v = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f20476w = profilePictureView;
        profilePictureView.setClickable(true);
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.f20477x = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.f20478y = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        ImageUtils.m27529a((ImageView) callAppRow.findViewById(2131363690), 2131231381, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.f20473B = (FrameLayout) callAppRow.findViewById(2131363691);
        this.f20479z = (ImageView) callAppRow.findViewById(2131363189);
        this.f20474C = (FrameLayout) callAppRow.findViewById(2131363190);
        callAppRow.setSwipeable(false);
    }

    /* renamed from: a */
    static /* synthetic */ void m31438a(ReminderData reminderData, Context context, int i) {
        if (reminderData.type == ReminderType.BLOCKED_RULE) {
            ListsUtils.m27487a(context, (int) reminderData.reminderId, reminderData.getPhone().getRawNumber());
        } else if (reminderData.type == ReminderType.BLOCKED) {
            ListsUtils.m27478a(context, reminderData.displayName, reminderData.getPhone().getRawNumber());
        } else if (PhoneManager.get().m28240a(reminderData.phone)) {
            FeedbackManager.get().m28669a(Activities.getString(2131887308), (Integer) null);
        } else if (reminderData.type != ReminderType.SPAM) {
        } else {
            ListsUtils.m27485a(context, reminderData, reminderData.type.title, DataChangedInfo.create(EventBusManager.CallAppDataType.BLOCK.ordinal(), i, 7), (ENTRYPOINT) null);
        }
    }

    /* renamed from: a */
    public void m31436a(String str, String str2, ReminderData reminderData) {
        setPhone(str2);
        if (StringUtils.m26059a((CharSequence) str)) {
            reminderData.displayName = f20471u.get(reminderData.phone);
        } else {
            reminderData.displayName = str;
        }
        if (StringUtils.m26059a((CharSequence) reminderData.displayName)) {
            setName(reminderData.phone.getRawNumber());
            setProfileText("?");
            return;
        }
        setName(StringUtils.m26020j(reminderData.displayName));
        setProfileText(StringUtils.m26010r(reminderData.displayName));
    }

    private void setProfileText(String str) {
        this.f20476w.setText(str);
    }

    /* renamed from: a */
    public final void m31437a(final ReminderData reminderData, ScrollEvents scrollEvents, final int i, final BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
        this.f20472A = reminderData;
        if (reminderData.type == ReminderType.BLOCKED_RULE) {
            ProfilePictureView profilePicture = getProfilePicture();
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231476);
            glideRequestBuilder.f28246l = true;
            profilePicture.m26684a(glideRequestBuilder);
        } else {
            m31503a(reminderData.getCacheKey(), reminderData, scrollEvents, reminderData.contactId, reminderData.getPhone());
        }
        String str = null;
        if (reminderData.type == ReminderType.SPAM) {
            final SpamReminderData spamReminderData = (SpamReminderData) reminderData;
            ImageUtils.m27529a(this.f20479z, spamReminderData.isBlocked ? 2131231383 : 2131231373, new PorterDuffColorFilter(ThemeUtils.getColor(spamReminderData.isBlocked ? 2131100123 : 2131100108), PorterDuff.Mode.SRC_IN));
            this.f20474C.setVisibility(0);
            this.f20474C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (!spamReminderData.isBlocked) {
                        BlockManager.m28748b(view.getContext(), reminderData.displayName, reminderData.phone);
                        return;
                    }
                    BlockManager.m28759a(reminderData.contactId, reminderData.displayName, reminderData.phone);
                    BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents2 = blockedAdapterEvents;
                    if (blockedAdapterEvents2 == null) {
                        return;
                    }
                    blockedAdapterEvents2.mo31426b();
                }
            });
        } else {
            this.f20474C.setVisibility(8);
            this.f20474C.setOnClickListener(null);
        }
        getProfilePicture().m26679b(reminderData.isChecked(), false);
        getProfilePicture().setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AndroidUtils.m27630a(view, 1);
                if (reminderData.type == ReminderType.BLOCKED_RULE) {
                    BlockedContactViewHolder.m31438a(reminderData, view.getContext(), i);
                    return;
                }
                DataChangedInfo create = DataChangedInfo.create(EventBusManager.CallAppDataType.BLOCK.ordinal(), i, 7);
                Context context = view.getContext();
                ReminderData reminderData2 = reminderData;
                ListsUtils.m27485a(context, reminderData2, reminderData2.type.title, create, (ENTRYPOINT) null);
            }
        });
        this.f20475v.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AndroidUtils.m27630a(view, 1);
                BlockedContactViewHolder.m31438a(reminderData, view.getContext(), i);
            }
        });
        this.f20473B.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            /* renamed from: a */
            public final void mo26371a(View view) {
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28450a(Constants.BLOCK_AND_SPAM, "Delete entry");
                if (reminderData.type == ReminderType.BLOCKED) {
                    ListsUtils.m27488a(view.getContext(), 2131887460, 2131887457, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.1
                        @Override // com.callapp.contacts.event.listener.Listener
                        /* renamed from: a */
                        public final void mo27399a(Object obj) {
                            BlockManager.m28759a(reminderData.contactId, reminderData.displayName, reminderData.phone);
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.mo31426b();
                            }
                        }
                    });
                } else if (reminderData.type == ReminderType.BLOCKED_RULE) {
                    ListsUtils.m27488a(view.getContext(), 2131887459, 2131887458, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.2
                        @Override // com.callapp.contacts.event.listener.Listener
                        /* renamed from: a */
                        public final void mo27399a(Object obj) {
                            BlockManager.m28747b(BlockedRule.BlockRuleType.values()[(int) reminderData.reminderId], reminderData.phone.getRawNumber());
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.mo31426b();
                            }
                        }
                    });
                } else if (reminderData.type != ReminderType.SPAM) {
                } else {
                    ListsUtils.m27488a(view.getContext(), 2131887467, 2131887466, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.3
                        @Override // com.callapp.contacts.event.listener.Listener
                        /* renamed from: a */
                        public final void mo27399a(Object obj) {
                            ContactData contactData;
                            if (!((SpamReminderData) reminderData).isUserData) {
                                BlockManager.m28752a(reminderData.phone.getRawNumber());
                            }
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.mo31429a(reminderData.phone);
                            }
                            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(reminderData.phone, reminderData.contactId);
                            if (contactDataOnlyIfAlreadyLoaded != null) {
                                contactData = (ContactData) contactDataOnlyIfAlreadyLoaded.first;
                            } else {
                                ContactLoader contactLoader = new ContactLoader();
                                contactLoader.addDeviceDataAndFastPhotoNameLoaders();
                                contactData = contactLoader.load(reminderData.phone, reminderData.contactId);
                            }
                            UserCorrectedInfoUtil.m27344a(contactData, contactData.getPhone(), false);
                            FastCacheDataManager.m28941c(contactData);
                            EventBusManager.f25138a.m29046a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f23122b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.mo31426b();
                            }
                        }
                    });
                }
            }
        });
        if (reminderData.type == ReminderType.BLOCKED || reminderData.type == ReminderType.SPAM) {
            Phone phone = reminderData.getPhone();
            if (phone != null) {
                str = phone.getRawNumber();
            }
        } else if (reminderData.type == ReminderType.BLOCKED_RULE) {
            str = reminderData.getPhone().getRawNumber();
        }
        m31436a(reminderData.displayName, str, reminderData);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20476w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactListAdapterDataLoadTask(this, null);
    }

    public void setName(CharSequence charSequence) {
        this.f20477x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.f20478y.setText(charSequence);
    }
}
