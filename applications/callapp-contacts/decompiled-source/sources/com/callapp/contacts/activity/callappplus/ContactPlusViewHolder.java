package com.callapp.contacts.activity.callappplus;

import android.app.Activity;
import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
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
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.StringPref;
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
import com.callapp.contacts.util.glide.GlideUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder.class */
public class ContactPlusViewHolder extends BaseContactHolder {
    private FrameLayout A;
    private TextView B;
    private ImageView C;
    private FrameLayout D;
    private ImageView E;
    private ImageView F;
    private LinearLayout G;
    private ImageView H;
    private LinearLayout I;
    private ImageView J;
    private LinearLayout K;
    private TextView L;
    private boolean N;
    private TextView O;
    private TextView P;
    private View Q;
    private final boolean R = false;
    private CallAppRow v;
    private ProfilePictureView w;
    private TextView x;
    private TextView y;
    private ImageView z;
    private static final int u = ThemeUtils.a(CallAppApplication.get(), 2131099784);
    private static final e<String, Boolean> M = new e<>(500);

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask.class */
    class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private ContactListAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public void a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask.class */
    public class ContactPlusAdapterDataLoadTask extends ContactListAdapterDataLoadTask {
        public ContactPlusAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.ContactListAdapterDataLoadTask, com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final /* bridge */ /* synthetic */ void a(ContactLoader contactLoader) {
            super.a(contactLoader);
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(final ContactData contactData) {
            super.b(contactData);
            if (!a(getDeviceId(), getPhone(), contactData)) {
                return true;
            }
            String rawNumber = contactData.getPhone().getRawNumber();
            if (contactData.isSpammer()) {
                ContactPlusViewHolder.M.put(rawNumber, Boolean.TRUE);
            } else {
                ContactPlusViewHolder.M.remove(rawNumber);
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.ContactPlusAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    ContactPlusAdapterDataLoadTask contactPlusAdapterDataLoadTask = ContactPlusAdapterDataLoadTask.this;
                    if (contactPlusAdapterDataLoadTask.a(contactPlusAdapterDataLoadTask.getDeviceId(), ContactPlusAdapterDataLoadTask.this.getPhone(), contactData)) {
                        ContactPlusViewHolder.this.setTextColors(contactData.isSpammer());
                    }
                }
            });
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents.class */
    public interface IconsClickEvents {
        void a(Context context, CallAppPlusData callAppPlusData);

        void a(CallAppPlusData callAppPlusData, boolean z);
    }

    public ContactPlusViewHolder(CallAppRow callAppRow, int i, int i2) {
        super(callAppRow);
        this.v = callAppRow;
        this.K = (LinearLayout) callAppRow.findViewById(2131362240);
        int color = ThemeUtils.getColor(2131099784);
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.w = profilePictureView;
        profilePictureView.setClickable(true);
        this.x = (TextView) callAppRow.findViewById(2131363348);
        this.y = (TextView) callAppRow.findViewById(2131363500);
        if (i != 0) {
            this.z = (ImageView) callAppRow.findViewById(i);
            this.A = (FrameLayout) callAppRow.findViewById(i2);
            ImageUtils.a(this.z, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) callAppRow.findViewById(2131364122);
        this.B = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.C = (ImageView) callAppRow.findViewById(2131364469);
        this.D = (FrameLayout) callAppRow.findViewById(2131363307);
        this.E = (ImageView) callAppRow.findViewById(2131363306);
        this.F = (ImageView) callAppRow.findViewById(2131363950);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362879);
        this.P = textView2;
        textView2.setText(Activities.getString(2131886927));
        TextView textView3 = (TextView) callAppRow.findViewById(2131361986);
        this.O = textView3;
        textView3.setText(Activities.getString(2131886213));
        this.L = (TextView) callAppRow.findViewById(2131363857);
        this.G = (LinearLayout) callAppRow.findViewById(2131361990);
        this.H = (ImageView) callAppRow.findViewById(2131361985);
        this.I = (LinearLayout) callAppRow.findViewById(2131363856);
        this.J = (ImageView) callAppRow.findViewById(2131363855);
        this.Q = callAppRow.findViewById(2131362611);
        if (callAppRow.isSwipeable()) {
            ViewUtils.a(this.w, (Drawable) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CallAppPlusData callAppPlusData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, false, contactItemViewEvents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(final CallAppPlusData callAppPlusData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.a(view, 1);
        if (OptInWithTopImagePopup.b()) {
            OptInWithTopImagePopup.b(this.v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$8L6n8jHENAJOyhEY9qIhxOca2RQ
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusViewHolder.this.b(callAppPlusData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$ngRZoMiIOMZPNLcirI1FMal8PUU
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusViewHolder.this.a(callAppPlusData, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.a(this.v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, true, contactItemViewEvents);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(CallAppPlusData callAppPlusData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, true, contactItemViewEvents);
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
        ImageView imageView = this.z;
        if (!z) {
            i = 2131099784;
        }
        imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(i), PorterDuff.Mode.SRC_IN));
    }

    public final void a(final CallAppPlusData callAppPlusData, ScrollEvents scrollEvents, final IconsClickEvents iconsClickEvents, final Action.ContextType contextType, final String str) {
        CharSequence charSequence;
        a(callAppPlusData.getCacheKey(), callAppPlusData, scrollEvents, callAppPlusData.getContactId(), callAppPlusData.getPhone());
        if (!this.v.isSwipeable()) {
            this.A.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                public final void a(View view) {
                    AndroidUtils.a(view, 1);
                    ListsUtils.a(ContactPlusViewHolder.this.v.getContext(), (BaseAdapterItemData) callAppPlusData, false, r6);
                }
            });
        }
        this.D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(ContactPlusViewHolder.this.D.getContext(), callAppPlusData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.DROPPY, ContactPlusViewHolder.this.D);
            }
        });
        if (!this.v.isSwipeable()) {
            this.A.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$fIRii1fJQ9TI5RM92d_KrghbVCA
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = ContactPlusViewHolder.this.a(callAppPlusData, r6, view);
                    return a2;
                }
            });
        }
        boolean isStarred = callAppPlusData.f11269a.isStarred();
        this.N = isStarred;
        this.L.setText(Activities.getString(isStarred ? 2131887572 : 2131887672));
        this.I.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                IconsClickEvents iconsClickEvents2 = iconsClickEvents;
                CallAppPlusData callAppPlusData2 = callAppPlusData;
                iconsClickEvents2.a(callAppPlusData2, true ^ callAppPlusData2.f12645c);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickAddToQuickAccess");
            }
        });
        ImageUtils.a(this.H, 2131231842);
        this.G.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                iconsClickEvents.a(view.getContext(), callAppPlusData);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickAddToContact");
            }
        });
        ListsUtils.a(this.v, (MemoryContactItem) callAppPlusData, (ContactItemViewEvents) null);
        this.v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickProfileCard");
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactPlusViewHolder.this.v.b();
                AndroidUtils.a(view, 1);
                ListsUtils.a(view.getContext(), callAppPlusData, "search", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.SEARCH);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS, "ClickProfileCard");
            }
        });
        StringBuilder sb = new StringBuilder();
        sb.setLength(0);
        Date date = new Date();
        date.setTime(callAppPlusData.a());
        boolean z = true;
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
        GlideUtils.GlideRequestBuilder a2 = new GlideUtils.GlideRequestBuilder(this.F, callAppPlusData.getBadge(), this.F.getContext()).a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        a2.i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387);
        a2.g = Integer.valueOf(callAppPlusData.getBadgeColor());
        a2.l = true;
        a2.d();
        setComIcon(IMDataExtractionUtils.a(callAppPlusData.f11269a.comType), callAppPlusData.getBadgeColor());
        setPhone(spannableString);
        setTimeText(charSequence);
        if (M.get(callAppPlusData.getPhone().getRawNumber()) == null) {
            z = false;
        }
        setTextColors(z);
        this.K.setElevation(Activities.a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165562)));
        this.x.setTextColor(ThemeUtils.getColor(2131100140));
        this.L.setTextColor(ThemeUtils.getColor(2131100108));
        this.O.setTextColor(ThemeUtils.getColor(2131100108));
        this.P.setTextColor(ThemeUtils.getColor(2131100108));
        this.y.setTextColor(ThemeUtils.getColor(2131100108));
        this.Q.setBackgroundColor(ThemeUtils.getColor(2131099891));
        ImageUtils.a(this.H, 2131231842);
        this.H.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        this.E.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.b(this.K, 2131230895, ThemeUtils.getColor(2131100228), ThemeUtils.getColor(2131100228), 0);
            ImageUtils.a(this.J, this.N ? 2131231844 : 2131231843);
        } else {
            ViewUtils.b(this.K, 2131230895, ThemeUtils.getColor(2131099918), ThemeUtils.getColor(2131099918), 0);
            ImageUtils.a(this.J, this.N ? 2131231845 : 2131231846);
        }
        if (StringUtils.b((CharSequence) Prefs.gv.get()) || this.R) {
            CallAppPlusData callAppPlusData2 = (CallAppPlusData) this.t;
            String valueOf = String.valueOf(callAppPlusData2.f11269a.recognizedPersonOrigin.index);
            if (StringUtils.c((String) (this.R ? Prefs.gv.defaultValue : Prefs.gv.get()), valueOf)) {
                LinearLayout linearLayout = this.K;
                boolean isThemeLight = ThemeUtils.isThemeLight();
                IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = callAppPlusData2.f11269a.recognizedPersonOrigin;
                ViewUtils.b(linearLayout, 2131230895, ThemeUtils.getColor(isThemeLight ? recognizedPersonOrigin.colorLight : recognizedPersonOrigin.colorDark), 0, 0);
                if (!this.R) {
                    StringPref stringPref = Prefs.gv;
                    stringPref.set(StringUtils.c(stringPref.get(), valueOf, ""));
                }
            }
        }
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
