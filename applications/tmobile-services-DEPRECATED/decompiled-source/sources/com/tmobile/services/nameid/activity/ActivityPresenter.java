package com.tmobile.services.nameid.activity;

import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.activity.ActivityFragment;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import io.reactivex.Completable;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityPresenter.class */
public class ActivityPresenter {

    /* renamed from: a */
    private ActivityFragment f13085a;

    /* renamed from: d */
    private CallFilterType f13088d;

    /* renamed from: b */
    private boolean f13086b = false;

    /* renamed from: c */
    private boolean f13087c = false;

    /* renamed from: e */
    private MessageFilterType f13089e = MessageFilterType.ALL;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.activity.ActivityPresenter$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityPresenter$1.class */
    public static /* synthetic */ class C16241 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13090a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13091b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003f -> B:4:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0043 -> B:20:0x0028). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0047 -> B:18:0x0033). Please submit an issue!!! */
        static {
            int[] iArr = new int[MessageFilterType.values().length];
            f13091b = iArr;
            try {
                iArr[MessageFilterType.BLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            int[] iArr2 = new int[CallFilterType.values().length];
            f13090a = iArr2;
            try {
                iArr2[CallFilterType.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13090a[CallFilterType.BLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f13090a[CallFilterType.VOICEMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityPresenter$CallFilterType.class */
    public enum CallFilterType {
        ALL(0),
        BLOCKED(1),
        VOICEMAIL(2),
        APPROVED(3);
        
        private int value;

        CallFilterType(int i) {
            this.value = i;
        }

        public static CallFilterType fromValue(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/ActivityPresenter$MessageFilterType.class */
    public enum MessageFilterType {
        ALL(0),
        BLOCKED(1);
        
        private int value;

        MessageFilterType(int i) {
            this.value = i;
        }

        public static MessageFilterType fromValue(int i) {
            return values()[i];
        }

        public int getValue() {
            return this.value;
        }
    }

    public ActivityPresenter(ActivityFragment activityFragment) {
        this.f13085a = activityFragment;
        CallFilterType k = MainApplication.m7529k();
        this.f13088d = k;
        activityFragment.m7118U1(new ActivityItemFilter(k));
        LogUtil.m5632o("ActivityPresenter#", "created with filter=" + this.f13088d.name());
        m7058c();
    }

    /* renamed from: b */
    private void m7059b(final boolean z) {
        LogUtil.m5643d("ActivityPresenter#applyDefaultFilter", "isUpdate=" + z);
        List<ActivityItem> c1 = this.f13085a.m7103c1();
        if (z || c1.isEmpty()) {
            this.f13085a.m7107a1(new Consumer() { // from class: com.tmobile.services.nameid.activity.a0
                @Override // io.reactivex.functions.Consumer
                public final void accept(Object obj) {
                    ActivityPresenter.this.m7049l(z, (List) obj);
                }
            });
        } else {
            this.f13085a.m7084l2(c1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: e */
    public void m7056e() {
        this.f13085a.m7130O1();
    }

    /* renamed from: i */
    private void m7052i(CallFilterType callFilterType, boolean z) {
        LogUtil.m5643d("ActivityPresenter#getListWithFilter", "filter type = " + callFilterType.name());
        if (callFilterType == CallFilterType.BLOCKED || callFilterType == CallFilterType.VOICEMAIL || callFilterType == CallFilterType.APPROVED) {
            ActivityItem.Type type = ActivityItem.Type.UNKNOWN;
            int i = C16241.f13090a[callFilterType.ordinal()];
            if (i == 1) {
                type = ActivityItem.Type.APPROVED;
            } else if (i == 2) {
                type = ActivityItem.Type.BLOCKED;
            } else if (i == 3) {
                type = ActivityItem.Type.VOICEMAIL;
            }
            this.f13085a.m7084l2(this.f13085a.m7121T0(type));
            this.f13085a.m7080n2(this.f13085a.m7113X0(EventSummaryItem.Type.UNKNOWN));
            return;
        }
        m7059b(z);
    }

    /* renamed from: j */
    private void m7051j(MessageFilterType messageFilterType, boolean z) {
        LogUtil.m5643d("ActivityPresenter#getMessageListWithFilter", "filter type = " + messageFilterType.name());
        this.f13085a.m7080n2(this.f13085a.m7113X0(C16241.f13091b[messageFilterType.ordinal()] != 1 ? EventSummaryItem.Type.ALL : EventSummaryItem.Type.BLOCKED));
    }

    /* renamed from: a */
    void m7060a() {
        int i = C16241.f13090a[this.f13088d.ordinal()];
        if (i == 1) {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_approved);
        } else if (i == 2) {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_blocked);
        } else if (i != 3) {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_all);
        } else {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_voicemail);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public void m7058c() {
        if (this.f13085a.m7117V0() == ActivityFragment.ActivityType.MESSAGES) {
            m7057d();
        } else {
            m7060a();
        }
    }

    /* renamed from: d */
    void m7057d() {
        if (C16241.f13091b[this.f13089e.ordinal()] != 1) {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_all);
        } else {
            this.f13085a.m7110Y1(C1517R.string.activity_filter_dialog_blocked_messages);
        }
    }

    /* renamed from: f */
    public void m7055f() {
        m7044q(CallFilterType.ALL);
        m7043r(MessageFilterType.ALL);
    }

    /* renamed from: g */
    public void m7054g(ActivityItem activityItem) {
        AnalyticsWrapper.m5883E("ActivityFragment", "go_to_call_details");
        this.f13085a.m7112X1(activityItem);
        this.f13085a.m7101d1(activityItem);
        this.f13085a.m7114W1(activityItem);
    }

    /* renamed from: h */
    public void m7053h(EventSummaryItem eventSummaryItem) {
        Contact e = ContactLookup.m5824d().m5823e(eventSummaryItem.getE164Number());
        boolean z = (e == null || e.getName() == null || e.getName().isEmpty()) ? false : true;
        String e164Number = eventSummaryItem.getE164Number();
        boolean z2 = true;
        if (!z) {
            if (eventSummaryItem.getCaller() != null) {
                z2 = true;
                if (eventSummaryItem.getCaller().getDisplayName().isEmpty()) {
                    if (eventSummaryItem.getCaller().getBucketId() > -1) {
                        z2 = true;
                    }
                }
            }
            z2 = false;
        }
        if (z2) {
            MainApplication.m7553C("number_lookup", new String[]{"source"}, new String[]{"internal"});
            LogUtil.m5632o("ActivityPresenter#", "Clicked item with a name or category");
        } else if (Feature.NUMBER_LOOKUP.isOwned()) {
            MainApplication.m7553C("number_lookup", new String[]{"source"}, new String[]{"external"});
            this.f13085a.m7068y0(e164Number);
            LogUtil.m5632o("ActivityPresenter#", "Clicked item has no name/category, doing a lookup");
        } else {
            LogUtil.m5632o("ActivityPresenter#", "Clicked item has no name/category, but user's account does not allow lookups");
        }
        AnalyticsWrapper.m5883E("ActivityFragment", "go_to_call_details");
        this.f13085a.m7101d1(eventSummaryItem);
    }

    /* renamed from: l */
    public /* synthetic */ void m7049l(boolean z, List list) throws Exception {
        this.f13085a.m7129P0(list, z);
    }

    /* renamed from: m */
    public void m7048m() {
        LogUtil.m5643d("ActivityPresenter#loadMoreClick", "called");
        ActivityFragment.ActivityType V0 = this.f13085a.m7117V0();
        if (!this.f13086b && V0 == ActivityFragment.ActivityType.CALLS) {
            if (this.f13085a.m7127Q0()) {
                LogUtil.m5632o("ActivityPresenter#", "Loading older items to show in call activity list");
                this.f13085a.m7086k2();
            } else {
                LogUtil.m5632o("ActivityPresenter#", "Got older items to show in call activity list");
            }
        }
        if (!this.f13087c && V0 == ActivityFragment.ActivityType.MESSAGES && m7036y()) {
            if (this.f13085a.m7142I1()) {
                LogUtil.m5632o("ActivityPresenter#", "Loading older items to show in message activity list");
                this.f13085a.m7086k2();
                return;
            }
            LogUtil.m5632o("ActivityPresenter#", "Got older items to show in message activity list");
        }
    }

    /* renamed from: n */
    public void m7047n(boolean z) {
        if (z) {
            this.f13085a.m7097f1();
            return;
        }
        LogUtil.m5632o("ActivityPresenter#", "there is no activity");
        this.f13085a.m7090i2();
    }

    /* renamed from: o */
    public void m7046o() {
        if (this.f13085a.m7117V0() == ActivityFragment.ActivityType.CALLS) {
            m7052i(CallFilterType.ALL, true);
        } else {
            m7051j(this.f13089e, true);
        }
        Completable.m4519e(2000L, TimeUnit.MILLISECONDS).m4520c(new Action() { // from class: com.tmobile.services.nameid.activity.b0
            @Override // io.reactivex.functions.Action
            public final void run() {
                ActivityPresenter.this.m7056e();
            }
        });
        this.f13085a.m7093h1();
    }

    /* renamed from: p */
    public void m7045p() {
        CallFilterType k = MainApplication.m7529k();
        if (this.f13088d.value != k.value) {
            this.f13088d = k;
            this.f13085a.m7118U1(new ActivityItemFilter(k));
            m7060a();
        }
    }

    /* renamed from: q */
    public void m7044q(CallFilterType callFilterType) {
        LogUtil.m5643d("ActivityPresenter#setCallFilter", "setting filter to " + callFilterType.name());
        this.f13088d = callFilterType;
        MainApplication.m7544L(callFilterType);
        this.f13085a.m7118U1(new ActivityItemFilter(callFilterType));
        m7060a();
    }

    /* renamed from: r */
    public void m7043r(MessageFilterType messageFilterType) {
        if (this.f13089e != messageFilterType) {
            LogUtil.m5643d("ActivityPresenter#setMessageFilter", "setting filter to " + messageFilterType.name());
            this.f13089e = messageFilterType;
            PreferenceUtils.m5385l("PREF_LAST_USED_MESSAGE_FILTER", messageFilterType.getValue());
            m7051j(messageFilterType, false);
            m7057d();
        }
    }

    /* renamed from: s */
    public void m7042s(boolean z) {
        this.f13086b = z;
    }

    /* renamed from: t */
    public void m7041t(boolean z) {
        this.f13087c = z;
    }

    /* renamed from: u */
    public boolean m7040u() {
        boolean isOwned = Feature.PNB_MESSAGING.isOwned();
        boolean b = PreferenceUtils.m5395b("PREF_ACTIVITY_JUMP_TO_MESSAGES", false);
        boolean z = false;
        if (isOwned) {
            z = false;
            if (b) {
                PreferenceUtils.m5386k("PREF_ACTIVITY_JUMP_TO_MESSAGES", false);
                z = true;
            }
        }
        return z;
    }

    /* renamed from: v */
    public boolean m7039v() {
        return Feature.PNB_MESSAGING.isOwned();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: w */
    public boolean m7038w() {
        return SubscriptionHelper.m5330D();
    }

    /* renamed from: x */
    public void m7037x() {
        if (this.f13085a.m7117V0() == ActivityFragment.ActivityType.MESSAGES) {
            this.f13085a.m7094g2(this.f13089e);
        } else {
            this.f13085a.m7098e2(this.f13088d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: y */
    public boolean m7036y() {
        return SubscriptionHelper.m5329E();
    }
}
