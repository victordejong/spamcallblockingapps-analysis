package com.callapp.contacts.activity.blocked;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.Pair;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.b.e;
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
    private static final e<Phone, String> u = new e<>(50);
    private ReminderData A;
    private FrameLayout B;
    private FrameLayout C;
    private CallAppRow v;
    private ProfilePictureView w;
    private TextView x;
    private TextView y;
    private ImageView z;

    /* renamed from: com.callapp.contacts.activity.blocked.BlockedContactViewHolder$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedContactViewHolder$1.class */
    class AnonymousClass1 implements View.OnLongClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ BaseAdapterItemData f11231a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Action.ContextType f11232b;

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ String f11233c;

        AnonymousClass1(BaseAdapterItemData baseAdapterItemData, Action.ContextType contextType, String str) {
            this.f11231a = baseAdapterItemData;
            this.f11232b = contextType;
            this.f11233c = str;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.a(view, 1);
            ListsUtils.a(BlockedContactViewHolder.this.v.getContext(), this.f11231a, this.f11232b, this.f11233c, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/blocked/BlockedContactViewHolder$ContactListAdapterDataLoadTask.class */
    final class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        /* synthetic */ ContactListAdapterDataLoadTask(BlockedContactViewHolder blockedContactViewHolder, AnonymousClass1 r5) {
            this();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(final ContactData contactData) {
            boolean b2 = super.b(contactData);
            setDeviceId(contactData.getDeviceId());
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.ContactListAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactListAdapterDataLoadTask contactListAdapterDataLoadTask = ContactListAdapterDataLoadTask.this;
                    if (contactListAdapterDataLoadTask.a(contactListAdapterDataLoadTask.getDeviceId(), ContactListAdapterDataLoadTask.this.getPhone(), contactData)) {
                        String fullName = contactData.getFullName();
                        if (StringUtils.b((CharSequence) fullName)) {
                            BlockedContactViewHolder.u.put(contactData.getPhone(), StringUtils.j(fullName));
                            BlockedContactViewHolder.this.a(fullName, ContactListAdapterDataLoadTask.this.f11108b != null ? ContactListAdapterDataLoadTask.this.f11108b.getRawNumber() : null, BlockedContactViewHolder.this.A);
                        }
                    }
                }
            });
            return b2;
        }
    }

    public BlockedContactViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.v = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.w = profilePictureView;
        profilePictureView.setClickable(true);
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.x = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.y = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        ImageUtils.a((ImageView) callAppRow.findViewById(2131363690), 2131231381, new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
        this.B = (FrameLayout) callAppRow.findViewById(2131363691);
        this.z = (ImageView) callAppRow.findViewById(2131363189);
        this.C = (FrameLayout) callAppRow.findViewById(2131363190);
        callAppRow.setSwipeable(false);
    }

    static /* synthetic */ void a(ReminderData reminderData, Context context, int i) {
        if (reminderData.type == ReminderType.BLOCKED_RULE) {
            ListsUtils.a(context, (int) reminderData.reminderId, reminderData.getPhone().getRawNumber());
        } else if (reminderData.type == ReminderType.BLOCKED) {
            ListsUtils.a(context, reminderData.displayName, reminderData.getPhone().getRawNumber());
        } else if (PhoneManager.get().a(reminderData.phone)) {
            FeedbackManager.get().a(Activities.getString(2131887308), (Integer) null);
        } else if (reminderData.type == ReminderType.SPAM) {
            ListsUtils.a(context, reminderData, reminderData.type.title, DataChangedInfo.create(EventBusManager.CallAppDataType.BLOCK.ordinal(), i, 7), (ENTRYPOINT) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2, ReminderData reminderData) {
        setPhone(str2);
        if (StringUtils.a((CharSequence) str)) {
            reminderData.displayName = u.get(reminderData.phone);
        } else {
            reminderData.displayName = str;
        }
        if (StringUtils.a((CharSequence) reminderData.displayName)) {
            setName(reminderData.phone.getRawNumber());
            setProfileText("?");
            return;
        }
        setName(StringUtils.j(reminderData.displayName));
        setProfileText(StringUtils.r(reminderData.displayName));
    }

    private void setProfileText(String str) {
        this.w.setText(str);
    }

    public final void a(final ReminderData reminderData, ScrollEvents scrollEvents, final int i, final BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents) {
        this.A = reminderData;
        if (reminderData.type == ReminderType.BLOCKED_RULE) {
            ProfilePictureView profilePicture = getProfilePicture();
            GlideUtils.GlideRequestBuilder glideRequestBuilder = new GlideUtils.GlideRequestBuilder(2131231476);
            glideRequestBuilder.l = true;
            profilePicture.a(glideRequestBuilder);
        } else {
            a(reminderData.getCacheKey(), reminderData, scrollEvents, reminderData.contactId, reminderData.getPhone());
        }
        String str = null;
        if (reminderData.type == ReminderType.SPAM) {
            final SpamReminderData spamReminderData = (SpamReminderData) reminderData;
            ImageUtils.a(this.z, spamReminderData.isBlocked ? 2131231383 : 2131231373, new PorterDuffColorFilter(ThemeUtils.getColor(spamReminderData.isBlocked ? 2131100123 : 2131100108), PorterDuff.Mode.SRC_IN));
            this.C.setVisibility(0);
            this.C.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (spamReminderData.isBlocked) {
                        BlockManager.a(reminderData.contactId, reminderData.displayName, reminderData.phone);
                        BlockedAdapter.BlockedAdapterEvents blockedAdapterEvents2 = blockedAdapterEvents;
                        if (blockedAdapterEvents2 != null) {
                            blockedAdapterEvents2.b();
                            return;
                        }
                        return;
                    }
                    BlockManager.b(view.getContext(), reminderData.displayName, reminderData.phone);
                }
            });
        } else {
            this.C.setVisibility(8);
            this.C.setOnClickListener(null);
        }
        getProfilePicture().b(reminderData.isChecked(), false);
        getProfilePicture().setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.3
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AndroidUtils.a(view, 1);
                if (reminderData.type == ReminderType.BLOCKED_RULE) {
                    BlockedContactViewHolder.a(reminderData, view.getContext(), i);
                    return;
                }
                DataChangedInfo create = DataChangedInfo.create(EventBusManager.CallAppDataType.BLOCK.ordinal(), i, 7);
                Context context = view.getContext();
                ReminderData reminderData2 = reminderData;
                ListsUtils.a(context, reminderData2, reminderData2.type.title, create, (ENTRYPOINT) null);
            }
        });
        this.v.setOnContainerClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.4
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AndroidUtils.a(view, 1);
                BlockedContactViewHolder.a(reminderData, view.getContext(), i);
            }
        });
        this.B.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5
            @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
            public final void a(View view) {
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.BLOCK_AND_SPAM, "Delete entry");
                if (reminderData.type == ReminderType.BLOCKED) {
                    ListsUtils.a(view.getContext(), 2131887460, 2131887457, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.1
                        @Override // com.callapp.contacts.event.listener.Listener
                        public final void a(Object obj) {
                            BlockManager.a(reminderData.contactId, reminderData.displayName, reminderData.phone);
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.b();
                            }
                        }
                    });
                } else if (reminderData.type == ReminderType.BLOCKED_RULE) {
                    ListsUtils.a(view.getContext(), 2131887459, 2131887458, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.2
                        @Override // com.callapp.contacts.event.listener.Listener
                        public final void a(Object obj) {
                            BlockManager.b(BlockedRule.BlockRuleType.values()[(int) reminderData.reminderId], reminderData.phone.getRawNumber());
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.b();
                            }
                        }
                    });
                } else if (reminderData.type == ReminderType.SPAM) {
                    ListsUtils.a(view.getContext(), 2131887467, 2131887466, new Listener<Object>() { // from class: com.callapp.contacts.activity.blocked.BlockedContactViewHolder.5.3
                        @Override // com.callapp.contacts.event.listener.Listener
                        public final void a(Object obj) {
                            ContactData contactData;
                            if (!((SpamReminderData) reminderData).isUserData) {
                                BlockManager.a(reminderData.phone.getRawNumber());
                            }
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.a(reminderData.phone);
                            }
                            Pair<ContactData, Set<ContactField>> contactDataOnlyIfAlreadyLoaded = ContactLoaderManager.get().getContactDataOnlyIfAlreadyLoaded(reminderData.phone, reminderData.contactId);
                            if (contactDataOnlyIfAlreadyLoaded != null) {
                                contactData = (ContactData) contactDataOnlyIfAlreadyLoaded.first;
                            } else {
                                ContactLoader contactLoader = new ContactLoader();
                                contactLoader.addDeviceDataAndFastPhotoNameLoaders();
                                contactData = contactLoader.load(reminderData.phone, reminderData.contactId);
                            }
                            UserCorrectedInfoUtil.a(contactData, contactData.getPhone(), false);
                            FastCacheDataManager.c(contactData);
                            EventBusManager.f14368a.a((EventType<L, EventType<InvalidateDataListener, EventBusManager.CallAppDataType>>) InvalidateDataListener.f12949b, (EventType<InvalidateDataListener, EventBusManager.CallAppDataType>) EventBusManager.CallAppDataType.CONTACTS, false);
                            if (blockedAdapterEvents != null) {
                                blockedAdapterEvents.b();
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
        a(reminderData.displayName, str, reminderData);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new ContactListAdapterDataLoadTask(this, null);
    }

    public void setName(CharSequence charSequence) {
        this.x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.y.setText(charSequence);
    }
}
