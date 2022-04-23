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
import androidx.b.e;
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
    private static final e<String, String> B = new e<>(500);
    private static final e<String, Boolean> C = new e<>(500);
    private CallAppRow D;
    private ProfilePictureView E;
    private TextView F;
    private TextView G;
    private TextView H;
    private TextView I;
    private ImageView J;
    private FrameLayout K;
    private FourEventsIconsViewGroup L;
    private ImageView M;
    private AggregateCallLogData N;
    private int u;
    private int v;
    private int w;
    private int x;
    private CallLogLastSeenTimestampEventListener O = null;
    private final int z = ThemeUtils.a(CallAppApplication.get(), 2131099786);
    private final String y = Activities.getString(2131886488);
    private final int A = ThemeUtils.getColor(2131100108);

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/calllog/CallLogViewHolder$CallLogAdapterDataLoadTask.class */
    final class CallLogAdapterDataLoadTask extends BaseContactHolder.AdapterDataLoadTask {
        private CallLogAdapterDataLoadTask() {
            super();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final void a(ContactLoader contactLoader) {
            contactLoader.addDeviceDataAndFastPhotoNameLoaders();
            contactLoader.addSyncLoader(new NotificationTelegramLoader());
            contactLoader.addSyncLoader(new NotificationViberLoader());
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean a(long j, Phone phone, ContactData contactData) {
            return contactData.getPhone().getRawNumber().equals(phone.getRawNumber()) && !contactData.isVoiceMail();
        }

        @Override // com.callapp.contacts.activity.base.BaseContactHolder.AdapterDataLoadTask
        public final boolean b(final ContactData contactData) {
            super.b(contactData);
            final long deviceId = contactData.getDeviceId();
            String rawNumber = contactData.getPhone().getRawNumber();
            if (CallLogUtils.b(rawNumber) || contactData.isVoiceMail() || !a(deviceId, this.f11108b, contactData) || CallLogViewHolder.this.N == null) {
                return true;
            }
            CallLogViewHolder.this.N.contactId = deviceId;
            String fullName = contactData.getFullName();
            final String str = fullName;
            if (StringUtils.a((CharSequence) fullName)) {
                str = CallLogViewHolder.this.N.displayName;
            }
            if (!StringUtils.b((CharSequence) str)) {
                return true;
            }
            String c2 = PhoneNumberUtils.c(rawNumber);
            String c3 = PhoneNumberUtils.c(str);
            if (StringUtils.b(c2, c3)) {
                str = PhoneNumberUtils.f(c3);
            }
            CallLogViewHolder.B.put(rawNumber, str);
            if (contactData.isSpammer()) {
                CallLogViewHolder.C.put(rawNumber, Boolean.TRUE);
            } else {
                CallLogViewHolder.C.remove(rawNumber);
            }
            CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.CallLogAdapterDataLoadTask.1
                @Override // java.lang.Runnable
                public void run() {
                    CallLogAdapterDataLoadTask callLogAdapterDataLoadTask = CallLogAdapterDataLoadTask.this;
                    if (callLogAdapterDataLoadTask.a(deviceId, callLogAdapterDataLoadTask.f11108b, contactData)) {
                        CallLogViewHolder.this.a(str, CallLogAdapterDataLoadTask.this.f11108b, CallLogViewHolder.this.N);
                    }
                }
            });
            return true;
        }
    }

    public CallLogViewHolder(CallAppRow callAppRow) {
        super(callAppRow);
        this.D = callAppRow;
        ProfilePictureView profilePictureView = (ProfilePictureView) callAppRow.findViewById(2131363565);
        this.E = profilePictureView;
        profilePictureView.setClickable(true);
        TextView textView = (TextView) callAppRow.findViewById(2131363348);
        this.F = textView;
        textView.setContentDescription("rowCallLogName");
        TextView textView2 = (TextView) callAppRow.findViewById(2131363500);
        this.G = textView2;
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        ImageView imageView = (ImageView) callAppRow.findViewById(2131362208);
        this.J = imageView;
        imageView.setVisibility(callAppRow.isSwipeable() ? 8 : 0);
        this.K = (FrameLayout) callAppRow.findViewById(2131362211);
        this.L = (FourEventsIconsViewGroup) callAppRow.findViewById(2131362865);
        this.H = (TextView) callAppRow.findViewById(2131364122);
        this.I = (TextView) callAppRow.findViewById(2131362872);
        this.M = (ImageView) callAppRow.findViewById(2131363866);
        this.u = ThemeUtils.a(CallAppApplication.get(), 2131100140);
        this.v = ThemeUtils.a(CallAppApplication.get(), 2131099784);
        this.w = ThemeUtils.a(CallAppApplication.get(), 2131099923);
        this.x = ThemeUtils.a(CallAppApplication.get(), 2131100123);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, false, contactItemViewEvents);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AggregateCallLogData aggregateCallLogData, final boolean z) {
        if (a(aggregateCallLogData)) {
            if (this.O == null) {
                this.O = new CallLogLastSeenTimestampEventListener() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.3
                    @Override // com.callapp.contacts.activity.interfaces.CallLogLastSeenTimestampEventListener
                    public final void a() {
                        if (CallLogViewHolder.this.N != null) {
                            CallLogViewHolder callLogViewHolder = CallLogViewHolder.this;
                            callLogViewHolder.a(callLogViewHolder.N, z);
                        }
                    }
                };
                EventBusManager.f14368a.a(CallLogLastSeenTimestampEventListener.f12937c, this.O);
            }
            setFirstRowTextStyle(1);
            this.F.setTextColor(z ? this.x : this.v);
            this.G.setTextColor(z ? this.x : this.v);
            this.H.setTextColor(z ? this.x : this.v);
        } else {
            if (this.O != null) {
                EventBusManager.f14368a.b(CallLogLastSeenTimestampEventListener.f12937c, this.O);
                this.O = null;
            }
            setFirstRowTextStyle(0);
            this.F.setTextColor(z ? this.x : this.u);
            this.G.setTextColor(z ? this.x : this.w);
            this.H.setTextColor(z ? this.x : this.w);
        }
        this.J.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(z ? 2131100123 : 2131099784), PorterDuff.Mode.SRC_IN));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, Phone phone, AggregateCallLogData aggregateCallLogData) {
        boolean z;
        SpannableString spannableString = new SpannableString(ContactUtils.a(aggregateCallLogData.normalNumbers, phone));
        int i = aggregateCallLogData.numberMatchIndexStart;
        int i2 = aggregateCallLogData.numberMatchIndexEnd;
        if (i >= 0 && i2 >= 0 && i2 <= spannableString.length() && i <= spannableString.length()) {
            spannableString.setSpan(new ForegroundColorSpan(this.v), i, i2, 18);
        }
        boolean z2 = true;
        if (StringUtils.a((CharSequence) str)) {
            str = T9Helper.a((CharSequence) phone.getRawNumber());
            z = false;
        } else {
            z = true;
        }
        String j = StringUtils.j(str);
        this.F.setText(ViewUtils.a(j, aggregateCallLogData.textHighlights, this.v, (Character) '-'));
        int i3 = 8;
        if (z) {
            this.G.setText(spannableString);
            TextView textView = this.G;
            if (StringUtils.b((CharSequence) j)) {
                i3 = 0;
            }
            textView.setVisibility(i3);
        } else {
            this.G.setVisibility(8);
        }
        if (StringUtils.a((CharSequence) j)) {
            this.E.setText("?");
        } else {
            this.E.setText(StringUtils.r(j));
        }
        if (C.get(phone.getRawNumber()) == null) {
            z2 = false;
        }
        a(aggregateCallLogData, z2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean a(final BaseAdapterItemData baseAdapterItemData, final ContactItemViewEvents contactItemViewEvents, View view) {
        AndroidUtils.a(view, 1);
        if (OptInWithTopImagePopup.b()) {
            OptInWithTopImagePopup.b(this.D.getContext(), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$fFzbVZ9SSnoFsJP1czzdrrB62Ws
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    CallLogViewHolder.this.b(baseAdapterItemData, contactItemViewEvents, activity);
                }
            }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$LAMkhKYEk_Po9n1XWXhBLjJr4Ts
                @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                public final void onClickListener(Activity activity) {
                    CallLogViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, activity);
                }
            });
        } else {
            ListsUtils.a(this.D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
        }
        Prefs.da.set(new Date());
        EventBusManager.f14368a.c(CallLogLastSeenTimestampEventListener.f12937c, EventBusManager.CallAppDataType.LAST_SEEN_CALL_LOG_TIMESTAMP);
        return true;
    }

    private static boolean a(AggregateCallLogData aggregateCallLogData) {
        if (DateUtils.a(aggregateCallLogData.f11102d, new Date(), TimeUnit.HOURS) <= 5 && DateUtils.a(Prefs.da.get(), aggregateCallLogData.f11102d, TimeUnit.NANOSECONDS) > 0) {
            return (aggregateCallLogData.getAggregateSize() == 1 && aggregateCallLogData.a(1)) || aggregateCallLogData.a(2);
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(BaseAdapterItemData baseAdapterItemData, ContactItemViewEvents contactItemViewEvents, Activity activity) {
        ListsUtils.a(this.D.getContext(), baseAdapterItemData.getPhone(), baseAdapterItemData, true, contactItemViewEvents);
    }

    public static void n() {
        B.evictAll();
    }

    private void setFirstRowTextStyle(int i) {
        if (i == 0) {
            this.F.setTypeface(null, i);
            return;
        }
        TextView textView = this.F;
        textView.setTypeface(textView.getTypeface(), i);
    }

    protected CharSequence a(Date date, int i) {
        return CallLogUtils.a(date, i);
    }

    public final void a(final BaseAdapterItemData baseAdapterItemData, final Action.ContextType contextType, final String str, final ContactItemViewEvents contactItemViewEvents) {
        this.D.setOnContainerLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog.CallLogViewHolder.1
            @Override // android.view.View.OnLongClickListener
            public boolean onLongClick(View view) {
                AndroidUtils.a(view, 1);
                ListsUtils.a(CallLogViewHolder.this.D.getContext(), baseAdapterItemData, contextType, str, ContactItemContextMenuHelper.MENU_TYPE.REGULAR, null);
                return true;
            }
        });
        if (!this.D.isSwipeable()) {
            this.K.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.callapp.contacts.activity.calllog._$$Lambda$CallLogViewHolder$7EexOTPFl_VtwLIE11l0faWwbN8
                @Override // android.view.View.OnLongClickListener
                public final boolean onLongClick(View view) {
                    boolean a2;
                    a2 = CallLogViewHolder.this.a(baseAdapterItemData, contactItemViewEvents, view);
                    return a2;
                }
            });
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x022b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(final com.callapp.contacts.activity.calllog.AggregateCallLogData r9, com.callapp.contacts.activity.base.ScrollEvents r10, final com.callapp.contacts.activity.interfaces.ContactItemViewEvents r11) {
        /*
            Method dump skipped, instructions count: 620
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.callapp.contacts.activity.calllog.CallLogViewHolder.a(com.callapp.contacts.activity.calllog.AggregateCallLogData, com.callapp.contacts.activity.base.ScrollEvents, com.callapp.contacts.activity.interfaces.ContactItemViewEvents):void");
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final void a(boolean z, Phone phone) {
        if (phone != null && !phone.isEmpty() && !CallLogUtils.b(phone.getRawNumber())) {
            super.a(z, phone);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final boolean a(Phone phone) {
        AggregateCallLogData aggregateCallLogData = this.N;
        if (aggregateCallLogData == null) {
            return false;
        }
        return (aggregateCallLogData.isLoaded() && this.t.isLoaded()) || PhoneManager.get().a(this.N.getPhone());
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public EnumSet<ContactField> getLoaderLoadFields() {
        return ContactFieldEnumSets.CONTACTS_ADAPTER_WITH_NAME_LOADED_FIELD;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public ProfilePictureView getProfilePicture() {
        return this.E;
    }

    public CallAppRow getView() {
        return this.D;
    }

    @Override // com.callapp.contacts.activity.base.BaseContactHolder
    public final BaseContactHolder.AdapterDataLoadTask l() {
        return new CallLogAdapterDataLoadTask();
    }
}
