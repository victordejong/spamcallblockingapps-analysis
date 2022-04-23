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
import androidx.b.e;
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
    private FrameLayout A;
    private TextView B;
    private ImageView C;
    private ImageView D;
    private FrameLayout E;
    private CallAppRow v;
    private ProfilePictureView w;
    private TextView x;
    private TextView y;
    private ImageView z;
    private static final int u = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private static final e<String, Boolean> F = new e<>(500);

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactListAdapterDataLoadTask.class */
    class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusListViewHolder$ContactPlusAdapterDataLoadTask.class */
    final class ContactPlusAdapterDataLoadTask extends ContactListAdapterDataLoadTask {
        private ContactPlusAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(final ContactData contactData) {
            super.b(contactData);
            if (!a(getDeviceId(), getPhone(), contactData)) {
                return true;
            }
            String rawNumber = contactData.getPhone().getRawNumber();
            if (contactData.isSpammer()) {
                ContactPlusListViewHolder.F.put(rawNumber, Boolean.TRUE);
            } else {
                ContactPlusListViewHolder.F.remove(rawNumber);
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.ContactPlusAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactPlusAdapterDataLoadTask contactPlusAdapterDataLoadTask = ContactPlusAdapterDataLoadTask.this;
                    if (contactPlusAdapterDataLoadTask.a(contactPlusAdapterDataLoadTask.getDeviceId(), ContactPlusAdapterDataLoadTask.this.getPhone(), contactData)) {
                        ContactPlusListViewHolder.this.setTextColors(contactData.isSpammer());
                    }
                }
            });
            return true;
        }
    }

    public ContactPlusListViewHolder(CallAppRow callAppRow, int i, int i2) {
        super(callAppRow);
        this.v = callAppRow;
        int color = ThemeUtils.getColor(2131099784);
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.w = profilePictureView;
        profilePictureView.setClickable(true);
        this.x = (TextView) callAppRow.findViewById(2131363348);
        this.y = (TextView) callAppRow.findViewById(2131363500);
        if (i != 0) {
            this.z = (ImageView) callAppRow.findViewById(i);
            FrameLayout frameLayout = (FrameLayout) callAppRow.findViewById(i2);
            this.A = frameLayout;
            frameLayout.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
            ImageUtils.a(this.z, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) callAppRow.findViewById(2131364122);
        this.B = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.C = (ImageView) callAppRow.findViewById(2131364469);
        this.D = (ImageView) callAppRow.findViewById(2131363189);
        this.E = (FrameLayout) callAppRow.findViewById(2131363190);
        ImageView imageView = this.D;
        if (imageView != null) {
            imageView.setVisibility(0);
            this.E.setVisibility(0);
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
            OptInWithTopImagePopup.b(this.v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$R5PwF3Kjh6ieaWYFpOirF32DOhc
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusListViewHolder.this.b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$q_rSN_ZvrLMpSWKgAj95bmDGQMw
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusListViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, activity);
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

    private void setComIcon(int i, int i2) {
        if (i != 0) {
            this.C.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
        }
    }

    private void setProfileText(String str) {
        this.w.setText(str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setTextColors(boolean z) {
        int i = 2131100123;
        this.x.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100140));
        this.y.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100108));
        this.z.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
        ImageView imageView = this.D;
        if (imageView != null) {
            if (!z) {
                i = 2131099784;
            }
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(i), PorterDuff.Mode.SRC_IN));
        }
    }

    public final void a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str, final ContactItemViewEvents contactItemViewEvents) {
        this.v.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.3
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(ContactPlusListViewHolder.this.v.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
        if (!this.v.isSwipeable()) {
            this.A.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusListViewHolder$UQcg_sTASlDKWlglBvbwa_99gQ8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = ContactPlusListViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, view);
                    return a2;
                }
            });
        }
    }

    public final void a(final CallAppPlusData callAppPlusData, final ContactItemViewEvents contactItemViewEvents, ScrollEvents scrollEvents) {
        CharSequence charSequence;
        a(callAppPlusData.getCacheKey(), callAppPlusData, scrollEvents, callAppPlusData.getContactId(), callAppPlusData.getPhone());
        if (!this.v.isSwipeable()) {
            this.A.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    AndroidUtils.a(view, 1);
                    ListsUtils.a(ContactPlusListViewHolder.this.v.getContext(), (BaseAdapterItemData) callAppPlusData, false, contactItemViewEvents);
                }
            });
        }
        a(callAppPlusData, Action.ContextType.CONTACT_ITEM, Constants.CALLAPP_PLUS, contactItemViewEvents);
        ListsUtils.a(this.v, (MemoryContactItem) callAppPlusData, contactItemViewEvents);
        this.v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusListViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusListViewHolder.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactPlusListViewHolder.this.v.b();
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusListViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
            }
        });
        StringBuilder sb = new StringBuilder();
        boolean z = false;
        sb.setLength(0);
        Date date = new Date();
        date.setTime(callAppPlusData.a());
        if (StringUtils.b((CharSequence) callAppPlusData.f11269a.groupName)) {
            sb.append(Activities.a(2131887012, callAppPlusData.f11269a.groupName));
        } else {
            sb.append(DateUtils.b(date));
        }
        int i = u;
        String j = StringUtils.j(callAppPlusData.displayName);
        setName(callAppPlusData.textHighlights.size() == 0 ? j : ViewUtils.a(j, callAppPlusData.textHighlights, i));
        setProfileText(StringUtils.r(j));
        if (callAppPlusData.f11270b.size() == 0 || StringUtils.a((CharSequence) callAppPlusData.f11269a.groupName)) {
            charSequence = sb.toString();
        } else {
            String sb2 = sb.toString();
            charSequence = ViewUtils.a(sb2, callAppPlusData.f11270b, sb2.length() - callAppPlusData.f11269a.groupName.length(), i);
        }
        SpannableString spannableString = new SpannableString(ContactUtils.a(callAppPlusData.normalNumbers, callAppPlusData.getPhone()));
        if (callAppPlusData.numberMatchIndexStart >= 0 && callAppPlusData.numberMatchIndexEnd >= 0 && callAppPlusData.numberMatchIndexEnd <= spannableString.length() && callAppPlusData.numberMatchIndexStart <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(i), callAppPlusData.numberMatchIndexStart, callAppPlusData.numberMatchIndexEnd, 18);
        }
        this.w.a(callAppPlusData.getBadge());
        int badgeColor = callAppPlusData.getBadgeColor();
        this.w.a(badgeColor);
        setComIcon(IMDataExtractionUtils.a(callAppPlusData.f11269a.comType), badgeColor);
        setPhone(spannableString);
        setTimeText(charSequence);
        if (F.get(callAppPlusData.getPhone().getRawNumber()) != null) {
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
        return this.w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new ContactPlusAdapterDataLoadTask();
    }

    public void setName(CharSequence charSequence) {
        this.x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.y.setText(charSequence);
    }

    public void setTimeText(CharSequence charSequence) {
        this.B.setText(charSequence);
    }
}
