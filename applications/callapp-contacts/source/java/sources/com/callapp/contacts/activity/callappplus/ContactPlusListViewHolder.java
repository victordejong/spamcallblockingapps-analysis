package com.callapp.contacts.activity.callappplus;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
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
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.manager.NotificationExtractors.IMDataExtractionUtils;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.model.objectbox.ENTRYPOINT;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ImageUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusListViewHolder.class */
public class ContactPlusListViewHolder extends BaseContactHolder {

    /* renamed from: A */
    private FrameLayout f20571A;

    /* renamed from: B */
    private TextView f20572B;

    /* renamed from: C */
    private ImageView f20573C;

    /* renamed from: D */
    private ImageView f20574D;

    /* renamed from: E */
    private FrameLayout f20575E;

    /* renamed from: v */
    private CallAppRow f20576v;

    /* renamed from: w */
    private ProfilePictureView f20577w;

    /* renamed from: x */
    private TextView f20578x;

    /* renamed from: y */
    private TextView f20579y;

    /* renamed from: z */
    private ImageView f20580z;

    /* renamed from: u */
    private static final int f20570u = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: F */
    private static final C0434e<String, Boolean> f20569F = new C0434e<>(500);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask.class */
    public class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            ContactPlusListViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask.class */
    public final class ContactPlusAdapterDataLoadTask extends ContactListAdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactPlusAdapterDataLoadTask() {
            super();
            ContactPlusListViewHolder.this = r5;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(final ContactData contactData) {
            super.mo29326b(contactData);
            if (mo29762a(getDeviceId(), getPhone(), contactData)) {
                String rawNumber = contactData.getPhone().getRawNumber();
                if (contactData.isSpammer()) {
                    ContactPlusListViewHolder.f20569F.put(rawNumber, Boolean.TRUE);
                } else {
                    ContactPlusListViewHolder.f20569F.remove(rawNumber);
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.ContactPlusAdapterDataLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactPlusAdapterDataLoadTask contactPlusAdapterDataLoadTask = ContactPlusAdapterDataLoadTask.this;
                        if (contactPlusAdapterDataLoadTask.mo29762a(contactPlusAdapterDataLoadTask.getDeviceId(), ContactPlusAdapterDataLoadTask.this.getPhone(), contactData)) {
                            ContactPlusListViewHolder.this.setTextColors(contactData.isSpammer());
                        }
                    }
                });
                return true;
            }
            return true;
        }
    }

    public ContactPlusListViewHolder(CallAppRow callAppRow, int i, int i2) {
        super(callAppRow);
        this.f20576v = callAppRow;
        int color = ThemeUtils.getColor(2131099784);
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f20577w = profilePictureView;
        profilePictureView.setClickable(true);
        this.f20578x = (TextView) callAppRow.findViewById(2131363348);
        this.f20579y = (TextView) callAppRow.findViewById(2131363500);
        if (i != 0) {
            this.f20580z = (ImageView) callAppRow.findViewById(i);
            FrameLayout frameLayout = (FrameLayout) callAppRow.findViewById(i2);
            this.f20571A = frameLayout;
            frameLayout.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
            ImageUtils.m27529a(this.f20580z, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) callAppRow.findViewById(2131364122);
        this.f20572B = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20573C = (ImageView) callAppRow.findViewById(2131364469);
        this.f20574D = (ImageView) callAppRow.findViewById(2131363189);
        this.f20575E = (FrameLayout) callAppRow.findViewById(2131363190);
        ImageView imageView = this.f20574D;
        if (imageView != null) {
            imageView.setVisibility(0);
            this.f20575E.setVisibility(0);
        }
        if (callAppRow.isSwipeable()) {
            ViewUtils.m27320a(this.f20577w, (Drawable) null);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m31399a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20576v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, false, contactItemViewEvents);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m31398a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.m27630a(view, 1);
        if (OptInWithTopImagePopup.m28052b()) {
            OptInWithTopImagePopup.m28051b(this.f20576v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$R5PwF3Kjh6ieaWYFpOirF32DOhc
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusListViewHolder.this.m31394b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$q_rSN_ZvrLMpSWKgAj95bmDGQMw
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusListViewHolder.this.m31399a(baseAdapterItemData, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.m27481a(this.f20576v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m31394b(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20576v.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
    }

    private void setComIcon(int i, int i2) {
        if (i != 0) {
            this.f20573C.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
        }
    }

    private void setProfileText(String str) {
        this.f20577w.setText(str);
    }

    public void setTextColors(boolean z) {
        this.f20578x.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100140));
        this.f20579y.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100108));
        this.f20580z.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
        ImageView imageView = this.f20574D;
        if (imageView != null) {
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
        }
    }

    /* renamed from: a */
    public final void m31400a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str, final ContactItemViewEvents contactItemViewEvents) {
        this.f20576v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27486a(ContactPlusListViewHolder.this.f20576v.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
        if (!this.f20576v.isSwipeable()) {
            this.f20571A.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$UQcg_sTASlDKWlglBvbwa_99gQ8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m31398a;
                    m31398a = ContactPlusListViewHolder.this.m31398a(baseAdapterItemData, contactItemViewEvents, view);
                    return m31398a;
                }
            });
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v74, types: [android.text.SpannableString] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder] */
    /* renamed from: a */
    public final void m31397a(final CallAppPlusData callAppPlusData, final ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents) {
        CharSequence charSequence;
        m31503a(callAppPlusData.getCacheKey(), callAppPlusData, scrollEvents, callAppPlusData.getContactId(), callAppPlusData.getPhone());
        if (!this.f20576v.isSwipeable()) {
            this.f20571A.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    AndroidUtils.m27630a(view, 1);
                    ListsUtils.m27484a(ContactPlusListViewHolder.this.f20576v.getContext(), (BaseAdapterItemData) callAppPlusData, false, contactItemViewEvents);
                }
            });
        }
        m31400a(callAppPlusData, Action.ContextType.CONTACT_ITEM, Constants.CALLAPP_PLUS, contactItemViewEvents);
        ListsUtils.m27475a(this.f20576v, (MemoryContactItem) callAppPlusData, contactItemViewEvents);
        this.f20576v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusListViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactPlusListViewHolder.this.f20576v.m31479b();
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusListViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
            }
        });
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        sb.setLength(0);
        Date date = new Date();
        date.setTime(callAppPlusData.m31419a());
        if (StringUtils.m26045b((CharSequence) callAppPlusData.f20527a.groupName)) {
            sb.append(Activities.m27697a(2131887012, callAppPlusData.f20527a.groupName));
        } else {
            sb.append(DateUtils.m27120b(date));
        }
        int i = f20570u;
        String m26020j = StringUtils.m26020j(callAppPlusData.displayName);
        setName(callAppPlusData.textHighlights.size() == 0 ? m26020j : ViewUtils.m27307a(m26020j, callAppPlusData.textHighlights, i));
        setProfileText(StringUtils.m26010r(m26020j));
        if (callAppPlusData.f20528b.size() == 0 || StringUtils.m26059a((CharSequence) callAppPlusData.f20527a.groupName)) {
            charSequence = sb.toString();
        } else {
            String sb2 = sb.toString();
            charSequence = ViewUtils.m27306a(sb2, callAppPlusData.f20528b, sb2.length() - callAppPlusData.f20527a.groupName.length(), i);
        }
        SpannableString spannableString = new SpannableString(ContactUtils.m28319a(callAppPlusData.normalNumbers, callAppPlusData.getPhone()));
        if (callAppPlusData.numberMatchIndexStart >= 0 && callAppPlusData.numberMatchIndexEnd >= 0 && callAppPlusData.numberMatchIndexEnd <= spannableString.length() && callAppPlusData.numberMatchIndexStart <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(i), callAppPlusData.numberMatchIndexStart, callAppPlusData.numberMatchIndexEnd, 18);
        }
        this.f20577w.m26685a(callAppPlusData.getBadge());
        int badgeColor = callAppPlusData.getBadgeColor();
        this.f20577w.m26687a(badgeColor);
        setComIcon(IMDataExtractionUtils.m28628a(callAppPlusData.f20527a.comType), badgeColor);
        setPhone(spannableString);
        setTimeText(charSequence);
        if (f20569F.get(callAppPlusData.getPhone().getRawNumber()) != null) {
            z = true;
        }
        setTextColors(z);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20577w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactPlusAdapterDataLoadTask();
    }

    public void setName(CharSequence charSequence) {
        this.f20578x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.f20579y.setText(charSequence);
    }

    public void setTimeText(CharSequence charSequence) {
        this.f20572B.setText(charSequence);
    }
}
