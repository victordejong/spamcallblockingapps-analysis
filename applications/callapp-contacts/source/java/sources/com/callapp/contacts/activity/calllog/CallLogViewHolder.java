package com.callapp.contacts.activity.calllog;

import android.app.Activity;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
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
import com.callapp.contacts.activity.contact.list.ContactItemContextMenuHelper;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.model.contact.social.ContactFieldEnumSets;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.contacts.widget.FourEventsIconsViewGroup;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.phone.PhoneNumberUtils;
import com.callapp.framework.util.StringUtils;
import java.util.Date;
import java.util.EnumSet;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogViewHolder.class */
public class CallLogViewHolder extends BaseContactHolder {

    /* renamed from: B */
    private static final C0434e<String, String> f20711B = new C0434e<>(500);

    /* renamed from: C */
    private static final C0434e<String, Boolean> f20712C = new C0434e<>(500);

    /* renamed from: D */
    private CallAppRow f20714D;

    /* renamed from: E */
    private ProfilePictureView f20715E;

    /* renamed from: F */
    private TextView f20716F;

    /* renamed from: G */
    private TextView f20717G;

    /* renamed from: H */
    private TextView f20718H;

    /* renamed from: I */
    private TextView f20719I;

    /* renamed from: J */
    private ImageView f20720J;

    /* renamed from: K */
    private FrameLayout f20721K;

    /* renamed from: L */
    private FourEventsIconsViewGroup f20722L;

    /* renamed from: M */
    private ImageView f20723M;

    /* renamed from: N */
    private AggregateCallLogData f20724N;

    /* renamed from: u */
    private int f20726u;

    /* renamed from: v */
    private int f20727v;

    /* renamed from: w */
    private int f20728w;

    /* renamed from: x */
    private int f20729x;

    /* renamed from: O */
    private CallLogLastSeenTimestampEventListener f20725O = null;

    /* renamed from: z */
    private final int f20731z = ThemeUtils.m27386a(CallAppApplication.get(), 2131099786);

    /* renamed from: y */
    private final String f20730y = Activities.getString(2131886488);

    /* renamed from: A */
    private final int f20713A = ThemeUtils.getColor(2131100108);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask.class */
    public final class CallLogAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private CallLogAdapterDataLoadTask() {
            super();
            CallLogViewHolder.this = r4;
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final void mo29327a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
            contactLoader.addSyncLoader(new NotificationTelegramLoader());
            contactLoader.addSyncLoader(new NotificationViberLoader());
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: a */
        public final boolean mo29762a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber()) && !contactData.isVoiceMail();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        /* renamed from: b */
        public final boolean mo29326b(final ContactData contactData) {
            super.mo29326b(contactData);
            final long deviceId = contactData.getDeviceId();
            String rawNumber = contactData.getPhone().getRawNumber();
            if (CallLogUtils.m27556b(rawNumber) || contactData.isVoiceMail() || !mo29762a(deviceId, this.f20289b, contactData) || CallLogViewHolder.this.f20724N == null) {
                return true;
            }
            CallLogViewHolder.this.f20724N.contactId = deviceId;
            String fullName = contactData.getFullName();
            String str = fullName;
            if (StringUtils.m26059a((CharSequence) fullName)) {
                str = CallLogViewHolder.this.f20724N.displayName;
            }
            if (!StringUtils.m26045b((CharSequence) str)) {
                return true;
            }
            String m26081c = PhoneNumberUtils.m26081c(rawNumber);
            String m26081c2 = PhoneNumberUtils.m26081c(str);
            if (StringUtils.m26042b(m26081c, m26081c2)) {
                str = PhoneNumberUtils.m26078f(m26081c2);
            }
            CallLogViewHolder.f20711B.put(rawNumber, str);
            if (contactData.isSpammer()) {
                CallLogViewHolder.f20712C.put(rawNumber, Boolean.TRUE);
            } else {
                CallLogViewHolder.f20712C.remove(rawNumber);
            }
            final String str2 = str;
            CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.CallLogAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    CallLogAdapterDataLoadTask callLogAdapterDataLoadTask = CallLogAdapterDataLoadTask.this;
                    if (callLogAdapterDataLoadTask.mo29762a(deviceId, callLogAdapterDataLoadTask.f20289b, contactData)) {
                        CallLogViewHolder.this.m31339a(str2, CallLogAdapterDataLoadTask.this.f20289b, CallLogViewHolder.this.f20724N);
                    }
                }
            });
            return true;
        }
    }

    public CallLogViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.f20714D = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.f20715E = profilePictureView;
        profilePictureView.setClickable(true);
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.f20716F = textView;
        textView.setContentDescription("rowCallLogName");
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.f20717G = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.f20720J = imageView;
        imageView.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        this.f20721K = (FrameLayout) callAppRow.findViewById(2131362211);
        this.f20722L = (FourEventsIconsViewGroup) callAppRow.findViewById(2131362865);
        this.f20718H = (TextView) callAppRow.findViewById(2131364122);
        this.f20719I = (TextView) callAppRow.findViewById(2131362872);
        this.f20723M = (ImageView) callAppRow.findViewById(2131363866);
        this.f20726u = ThemeUtils.m27386a(CallAppApplication.get(), 2131100140);
        this.f20727v = ThemeUtils.m27386a(CallAppApplication.get(), 2131099784);
        this.f20728w = ThemeUtils.m27386a(CallAppApplication.get(), 2131099923);
        this.f20729x = ThemeUtils.m27386a(CallAppApplication.get(), 2131100123);
    }

    /* renamed from: a */
    public /* synthetic */ void m31348a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20714D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, false, contactItemViewEvents);
    }

    /* renamed from: a */
    public void m31344a(AggregateCallLogData aggregateCallLogData, final boolean z) {
        if (m31346a(aggregateCallLogData)) {
            if (this.f20725O == null) {
                this.f20725O = new CallLogLastSeenTimestampEventListener() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.3
                    @Override // com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener
                    /* renamed from: a */
                    public final void mo30225a() {
                        if (CallLogViewHolder.this.f20724N != null) {
                            CallLogViewHolder callLogViewHolder = CallLogViewHolder.this;
                            callLogViewHolder.m31344a(callLogViewHolder.f20724N, z);
                        }
                    }
                };
                EventBusManager.f25138a.m29048a(CallLogLastSeenTimestampEventListener.f23110c, this.f20725O);
            }
            setFirstRowTextStyle(1);
            this.f20716F.setTextColor(z ? this.f20729x : this.f20727v);
            this.f20717G.setTextColor(z ? this.f20729x : this.f20727v);
            this.f20718H.setTextColor(z ? this.f20729x : this.f20727v);
        } else {
            if (this.f20725O != null) {
                EventBusManager.f25138a.m29045b(CallLogLastSeenTimestampEventListener.f23110c, this.f20725O);
                this.f20725O = null;
            }
            setFirstRowTextStyle(0);
            this.f20716F.setTextColor(z ? this.f20729x : this.f20726u);
            this.f20717G.setTextColor(z ? this.f20729x : this.f20728w);
            this.f20718H.setTextColor(z ? this.f20729x : this.f20728w);
        }
        this.f20720J.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
    }

    /* renamed from: a */
    public void m31339a(String str, Phone phone, AggregateCallLogData aggregateCallLogData) {
        boolean z;
        SpannableString spannableString = new SpannableString(ContactUtils.m28319a(aggregateCallLogData.normalNumbers, phone));
        int i = aggregateCallLogData.numberMatchIndexStart;
        int i2 = aggregateCallLogData.numberMatchIndexEnd;
        if (i >= 0 && i2 >= 0 && i2 <= spannableString.length() && i <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(this.f20727v), i, i2, 18);
        }
        boolean z2 = true;
        if (StringUtils.m26059a((CharSequence) str)) {
            str = T9Helper.m30360a((CharSequence) phone.getRawNumber());
            z = false;
        } else {
            z = true;
        }
        String m26020j = StringUtils.m26020j(str);
        this.f20716F.setText(ViewUtils.m27304a(m26020j, aggregateCallLogData.textHighlights, this.f20727v, (Character) '-'));
        if (z) {
            this.f20717G.setText(spannableString);
            TextView textView = this.f20717G;
            int i3 = 8;
            if (StringUtils.m26045b((CharSequence) m26020j)) {
                i3 = 0;
            }
            textView.setVisibility(i3);
        } else {
            this.f20717G.setVisibility(8);
        }
        if (StringUtils.m26059a((CharSequence) m26020j)) {
            this.f20715E.setText("?");
        } else {
            this.f20715E.setText(StringUtils.m26010r(m26020j));
        }
        if (f20712C.get(phone.getRawNumber()) == null) {
            z2 = false;
        }
        m31344a(aggregateCallLogData, z2);
    }

    /* renamed from: a */
    public /* synthetic */ boolean m31347a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.m27630a(view, 1);
        if (OptInWithTopImagePopup.m28052b()) {
            OptInWithTopImagePopup.m28051b(this.f20714D.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$fFzbVZ9SSnoFsJP1czzdrrB62Ws
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    CallLogViewHolder.this.m31337b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$LAMkhKYEk_Po9n1XWXhBLjJr4Ts
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    CallLogViewHolder.this.m31348a(baseAdapterItemData, contactItemViewEvents, activity);
                }
            });
        } else {
            ListsUtils.m27481a(this.f20714D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
        }
        Prefs.f26409da.set(new Date());
        EventBusManager.f25138a.m29043c(CallLogLastSeenTimestampEventListener.f23110c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
        return true;
    }

    /* renamed from: a */
    private static boolean m31346a(AggregateCallLogData aggregateCallLogData) {
        if (DateUtils.m27124a(aggregateCallLogData.f20275d, new Date(), TimeUnit.HOURS) <= 5 && DateUtils.m27124a(Prefs.f26409da.get(), aggregateCallLogData.f20275d, TimeUnit.NANOSECONDS) > 0) {
            return (aggregateCallLogData.getAggregateSize() == 1 && aggregateCallLogData.m31371a(1)) || aggregateCallLogData.m31371a(2);
        }
        return false;
    }

    /* renamed from: b */
    public /* synthetic */ void m31337b(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.m27481a(this.f20714D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
    }

    /* renamed from: n */
    public static void m31335n() {
        f20711B.evictAll();
    }

    private void setFirstRowTextStyle(int i) {
        if (i == 0) {
            this.f20716F.setTypeface(null, i);
            return;
        }
        TextView textView = this.f20716F;
        textView.setTypeface(textView.getTypeface(), i);
    }

    /* renamed from: a */
    protected CharSequence mo30448a(Date date, int i) {
        return CallLogUtils.m27566a(date, i);
    }

    /* renamed from: a */
    public final void m31349a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str, final ContactItemViewEvents contactItemViewEvents) {
        this.f20714D.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.m27630a(view, 1);
                ListsUtils.m27486a(CallLogViewHolder.this.f20714D.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
        if (!this.f20714D.isSwipeable()) {
            this.f20721K.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$7EexOTPFl_VtwLIE11l0faWwbN8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean m31347a;
                    m31347a = CallLogViewHolder.this.m31347a(baseAdapterItemData, contactItemViewEvents, view);
                    return m31347a;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x022b  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m31345a(final com.callapp.contacts.activity.calllog.AggregateCallLogData r9, com.callapp.contacts.activity.base.ScrollEvents r10, final com.callapp.contacts.activity.interfaces.ContactItemViewEvents r11) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.calllog.CallLogViewHolder.m31345a(com.callapp.contacts.activity.calllog.AggregateCallLogData, com.callapp.contacts.activity.base.ScrollEvents, com.callapp.contacts.activity.interfaces.ContactItemViewEvents):void");
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: a */
    public final void mo31338a(boolean z, Phone phone) {
        if (phone == null || phone.isEmpty() || CallLogUtils.m27556b(phone.getRawNumber())) {
            return;
        }
        super.mo31338a(z, phone);
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: a */
    public final boolean mo31340a(Phone phone) {
        AggregateCallLogData aggregateCallLogData = this.f20724N;
        if (aggregateCallLogData == null) {
            return false;
        }
        return (aggregateCallLogData.isLoaded() && this.f20280t.isLoaded()) || PhoneManager.get().m28240a(this.f20724N.getPhone());
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.f20715E;
    }

    public CallAppRow getView() {
        return this.f20714D;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    /* renamed from: l */
    public final BaseContactHolder.AdapterDataLoadTask mo29328l() {
        return new CallLogAdapterDataLoadTask();
    }
}
