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

    /* renamed from: A */
    private FrameLayout f20600A;

    /* renamed from: B */
    private TextView f20601B;

    /* renamed from: C */
    private ImageView f20602C;

    /* renamed from: D */
    private FrameLayout f20603D;

    /* renamed from: E */
    private ImageView f20604E;

    /* renamed from: F */
    private ImageView f20605F;

    /* renamed from: G */
    private LinearLayout f20606G;

    /* renamed from: H */
    private ImageView f20607H;

    /* renamed from: I */
    private LinearLayout f20608I;

    /* renamed from: J */
    private ImageView f20609J;

    /* renamed from: K */
    private LinearLayout f20610K;

    /* renamed from: L */
    private TextView f20611L;

    /* renamed from: N */
    private boolean f20612N;

    /* renamed from: O */
    private TextView f20613O;

    /* renamed from: P */
    private TextView f20614P;

    /* renamed from: Q */
    private View f20615Q;

    /* renamed from: R */
    private final boolean f20616R = false;

    /* renamed from: v */
    private CallAppRow f20617v;

    /* renamed from: w */
    private ProfilePictureView f20618w;

    /* renamed from: x */
    private TextView f20619x;

    /* renamed from: y */
    private TextView f20620y;

    /* renamed from: z */
    private ImageView f20621z;

    /* renamed from: u */
    private static final int f20599u = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);

    /* renamed from: M */
    private static final C0434e<String, Boolean> f20598M = new C0434e<>(500);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactListAdapterDataLoadTask.class */
    public class ContactListAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private ContactListAdapterDataLoadTask() {
            super();
            ContactPlusViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceIdAndPhotoLoaders();
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$ContactPlusAdapterDataLoadTask.class */
    public class ContactPlusAdapterDataLoadTask extends ContactListAdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ContactPlusAdapterDataLoadTask() {
            super();
            ContactPlusViewHolder.this = r5;
        }

        @Override // com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.ContactListAdapterDataLoadTask, com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final /* bridge */ /* synthetic */ void mo29327a(ContactLoader contactLoader) {
            super.mo29327a(contactLoader);
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(final ContactData contactData) {
            super.mo29326b(contactData);
            if (mo29762a(getDeviceId(), getPhone(), contactData)) {
                String rawNumber = contactData.getPhone().getRawNumber();
                if (contactData.isSpammer()) {
                    ContactPlusViewHolder.f20598M.put(rawNumber, Boolean.TRUE);
                } else {
                    ContactPlusViewHolder.f20598M.remove(rawNumber);
                }
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.ContactPlusAdapterDataLoadTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        ContactPlusAdapterDataLoadTask contactPlusAdapterDataLoadTask = ContactPlusAdapterDataLoadTask.this;
                        if (contactPlusAdapterDataLoadTask.mo29762a(contactPlusAdapterDataLoadTask.getDeviceId(), ContactPlusAdapterDataLoadTask.this.getPhone(), contactData)) {
                            ContactPlusViewHolder.this.setTextColors(contactData.isSpammer());
                        }
                    }
                });
                return true;
            }
            return true;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/ContactPlusViewHolder$IconsClickEvents.class */
    public interface IconsClickEvents {
        /* renamed from: a */
        void mo31384a(Context context, CallAppPlusData callAppPlusData);

        /* renamed from: a */
        void mo31383a(CallAppPlusData callAppPlusData, boolean z);
    }

    public ContactPlusViewHolder(CallAppRow callAppRow, int i, int i2) {
        super(callAppRow);
        this.f20617v = callAppRow;
        this.f20610K = (LinearLayout) callAppRow.findViewById(2131362240);
        int color = ThemeUtils.getColor(2131099784);
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f20618w = profilePictureView;
        profilePictureView.setClickable(true);
        this.f20619x = (TextView) callAppRow.findViewById(2131363348);
        this.f20620y = (TextView) callAppRow.findViewById(2131363500);
        if (i != 0) {
            this.f20621z = (ImageView) callAppRow.findViewById(i);
            this.f20600A = (FrameLayout) callAppRow.findViewById(i2);
            ImageUtils.m27529a(this.f20621z, 2131231783, new PorterDuffColorFilter(color, PorterDuff.Mode.SRC_IN));
        }
        TextView textView = (TextView) callAppRow.findViewById(2131364122);
        this.f20601B = textView;
        textView.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20602C = (ImageView) callAppRow.findViewById(2131364469);
        this.f20603D = (FrameLayout) callAppRow.findViewById(2131363307);
        this.f20604E = (ImageView) callAppRow.findViewById(2131363306);
        this.f20605F = (ImageView) callAppRow.findViewById(2131363950);
        TextView textView2 = (TextView) callAppRow.findViewById(2131362879);
        this.f20614P = textView2;
        textView2.setText(Activities.getString(2131886927));
        TextView textView3 = (TextView) callAppRow.findViewById(2131361986);
        this.f20613O = textView3;
        textView3.setText(Activities.getString(2131886213));
        this.f20611L = (TextView) callAppRow.findViewById(2131363857);
        this.f20606G = (LinearLayout) callAppRow.findViewById(2131361990);
        this.f20607H = (ImageView) callAppRow.findViewById(2131361985);
        this.f20608I = (LinearLayout) callAppRow.findViewById(2131363856);
        this.f20609J = (ImageView) callAppRow.findViewById(2131363855);
        this.f20615Q = callAppRow.findViewById(2131362611);
        if (callAppRow.isSwipeable()) {
            ViewUtils.m27320a(this.f20618w, (Drawable) null);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m31391a(CallAppPlusData callAppPlusData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20617v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, false, contactItemViewEvents);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m31390a(final CallAppPlusData callAppPlusData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.m27630a(view, 1);
        if (OptInWithTopImagePopup.m28052b()) {
            OptInWithTopImagePopup.m28051b(this.f20617v.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$8L6n8jHENAJOyhEY9qIhxOca2RQ
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusViewHolder.this.m31387b(callAppPlusData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$ngRZoMiIOMZPNLcirI1FMal8PUU
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    ContactPlusViewHolder.this.m31391a(callAppPlusData, contactItemViewEvents, activity);
                }
            });
            return true;
        }
        ListsUtils.m27481a(this.f20617v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, true, contactItemViewEvents);
        return true;
    }

    /* renamed from: b */
    public /* synthetic */ void m31387b(CallAppPlusData callAppPlusData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20617v.getContext(), callAppPlusData.getPhone(), (BaseAdapterItemData) callAppPlusData, true, contactItemViewEvents);
    }

    private void setComIcon(int i, int i2) {
        if (i != 0) {
            this.f20602C.setColorFilter(new PorterDuffColorFilter(i2, PorterDuff.Mode.SRC_IN));
        }
    }

    private void setProfileText(String str) {
        this.f20618w.setText(str);
    }

    public void setTextColors(boolean z) {
        this.f20619x.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100140));
        this.f20620y.setTextColor(ThemeUtils.getColor(z ? 2131100123 : 2131100108));
        this.f20621z.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v169, types: [android.text.SpannableString] */
    /* JADX WARN: Type inference failed for: r8v0, types: [com.callapp.contacts.activity.callappplus.ContactPlusViewHolder] */
    /* renamed from: a */
    public final void m31392a(final CallAppPlusData callAppPlusData, ScrollEvents scrollEvents, final IconsClickEvents iconsClickEvents, final Action.ContextType contextType, final String str) {
        CharSequence charSequence;
        m31503a(callAppPlusData.getCacheKey(), callAppPlusData, scrollEvents, callAppPlusData.getContactId(), callAppPlusData.getPhone());
        if (!this.f20617v.isSwipeable()) {
            this.f20600A.setOnClickListener(new DefaultInterfaceImplUtils.ClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.2
                @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.ClickListener
                /* renamed from: a */
                public final void mo26371a(View view) {
                    AndroidUtils.m27630a(view, 1);
                    ListsUtils.m27484a(ContactPlusViewHolder.this.f20617v.getContext(), (BaseAdapterItemData) callAppPlusData, false, r6);
                }
            });
        }
        this.f20603D.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27486a(ContactPlusViewHolder.this.f20603D.getContext(), callAppPlusData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.DROPPY, ContactPlusViewHolder.this.f20603D);
            }
        });
        if (!this.f20617v.isSwipeable()) {
            this.f20600A.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.callappplus._$$Lambda$ContactPlusViewHolder$fIRii1fJQ9TI5RM92d_KrghbVCA
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m31390a;
                    m31390a = ContactPlusViewHolder.this.m31390a(callAppPlusData, r6, view);
                    return m31390a;
                }
            });
        }
        boolean isStarred = callAppPlusData.f20527a.isStarred();
        this.f20612N = isStarred;
        this.f20611L.setText(Activities.getString(isStarred ? 2131887572 : 2131887672));
        this.f20608I.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                IconsClickEvents iconsClickEvents2 = iconsClickEvents;
                CallAppPlusData callAppPlusData2 = callAppPlusData;
                iconsClickEvents2.mo31383a(callAppPlusData2, true ^ callAppPlusData2.f22603c);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickAddToQuickAccess");
            }
        });
        ImageUtils.m27530a(this.f20607H, 2131231842);
        this.f20606G.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                iconsClickEvents.mo31384a(view.getContext(), callAppPlusData);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickAddToContact");
            }
        });
        ListsUtils.m27475a(this.f20617v, (MemoryContactItem) callAppPlusData, (ContactItemViewEvents) null);
        this.f20617v.setOnContainerClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), callAppPlusData, "callAppPlus", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.CALLAPP_PLUS);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickProfileCard");
            }
        });
        getProfilePicture().setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.ContactPlusViewHolder.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactPlusViewHolder.this.f20617v.m31479b();
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27485a(view.getContext(), callAppPlusData, "search", DataChangedInfo.create(EventBusManager.CallAppDataType.CONTACTS.ordinal(), ContactPlusViewHolder.this.getAdapterPosition(), r5), ENTRYPOINT.SEARCH);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS, "ClickProfileCard");
            }
        });
        StringBuilder sb = new StringBuilder();
        sb.setLength(0);
        Date date = new Date();
        date.setTime(callAppPlusData.m31419a());
        boolean z = true;
        if (StringUtils.m26045b((CharSequence) callAppPlusData.f20527a.groupName)) {
            sb.append(Activities.m27697a(2131887012, callAppPlusData.f20527a.groupName));
        } else {
            sb.append(DateUtils.m27120b(date));
        }
        int i = f20599u;
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
        GlideUtils.GlideRequestBuilder m27025a = new GlideUtils.GlideRequestBuilder(this.f20605F, callAppPlusData.getBadge(), this.f20605F.getContext()).m27025a(ThemeUtils.getColor(2131100228), PorterDuff.Mode.SRC_IN);
        m27025a.f28243i = CallAppApplication.get().getResources().getDimensionPixelOffset(2131165387);
        m27025a.f28241g = Integer.valueOf(callAppPlusData.getBadgeColor());
        m27025a.f28246l = true;
        m27025a.m27013d();
        setComIcon(IMDataExtractionUtils.m28628a(callAppPlusData.f20527a.comType), callAppPlusData.getBadgeColor());
        setPhone(spannableString);
        setTimeText(charSequence);
        if (f20598M.get(callAppPlusData.getPhone().getRawNumber()) == null) {
            z = false;
        }
        setTextColors(z);
        this.f20610K.setElevation(Activities.m27699a(CallAppApplication.get().getResources().getDimensionPixelOffset(2131165562)));
        this.f20619x.setTextColor(ThemeUtils.getColor(2131100140));
        this.f20611L.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20613O.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20614P.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20620y.setTextColor(ThemeUtils.getColor(2131100108));
        this.f20615Q.setBackgroundColor(ThemeUtils.getColor(2131099891));
        ImageUtils.m27530a(this.f20607H, 2131231842);
        this.f20607H.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        this.f20604E.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131100108), PorterDuff.Mode.SRC_IN));
        if (ThemeUtils.isThemeLight()) {
            ViewUtils.m27299b(this.f20610K, 2131230895, ThemeUtils.getColor(2131100228), ThemeUtils.getColor(2131100228), 0);
            ImageUtils.m27530a(this.f20609J, this.f20612N ? 2131231844 : 2131231843);
        } else {
            ViewUtils.m27299b(this.f20610K, 2131230895, ThemeUtils.getColor(2131099918), ThemeUtils.getColor(2131099918), 0);
            ImageUtils.m27530a(this.f20609J, this.f20612N ? 2131231845 : 2131231846);
        }
        if (StringUtils.m26045b((CharSequence) Prefs.f26589gv.get()) || this.f20616R) {
            CallAppPlusData callAppPlusData2 = (CallAppPlusData) this.f20280t;
            String valueOf = String.valueOf(callAppPlusData2.f20527a.recognizedPersonOrigin.index);
            if (!StringUtils.m26037c((String) (this.f20616R ? Prefs.f26589gv.defaultValue : Prefs.f26589gv.get()), valueOf)) {
                return;
            }
            LinearLayout linearLayout = this.f20610K;
            boolean isThemeLight = ThemeUtils.isThemeLight();
            IMDataExtractionUtils.RecognizedPersonOrigin recognizedPersonOrigin = callAppPlusData2.f20527a.recognizedPersonOrigin;
            ViewUtils.m27299b(linearLayout, 2131230895, ThemeUtils.getColor(isThemeLight ? recognizedPersonOrigin.colorLight : recognizedPersonOrigin.colorDark), 0, 0);
            if (this.f20616R) {
                return;
            }
            StringPref stringPref = Prefs.f26589gv;
            stringPref.set(StringUtils.m26036c(stringPref.get(), valueOf, ""));
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20618w;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new ContactPlusAdapterDataLoadTask();
    }

    public void setName(CharSequence charSequence) {
        this.f20619x.setText(charSequence);
    }

    public void setPhone(CharSequence charSequence) {
        this.f20620y.setText(charSequence);
    }

    public void setTimeText(CharSequence charSequence) {
        this.f20601B.setText(charSequence);
    }
}
