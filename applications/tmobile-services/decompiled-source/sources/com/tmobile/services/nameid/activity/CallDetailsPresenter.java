package com.tmobile.services.nameid.activity;

import android.app.Activity;
import android.content.Context;
import androidx.fragment.app.FragmentActivity;
import com.facebook.stetho.server.http.HttpStatus;
import com.tmobile.services.C1517R;
import com.tmobile.services.nameid.MainActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.domain.policy.FavoritesContactsPolicy;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.TmoUserStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.model.activity.EventSummaryItem;
import com.tmobile.services.nameid.model.activity.MultiMessageActivityItem;
import com.tmobile.services.nameid.model.activity.RecentActivityDisplayable;
import com.tmobile.services.nameid.utility.AnalyticsHelper;
import com.tmobile.services.nameid.utility.AnalyticsWrapper;
import com.tmobile.services.nameid.utility.Command;
import com.tmobile.services.nameid.utility.ContactLookup;
import com.tmobile.services.nameid.utility.EmptyCommand;
import com.tmobile.services.nameid.utility.Feature;
import com.tmobile.services.nameid.utility.LogUtil;
import com.tmobile.services.nameid.utility.ManageDialog;
import com.tmobile.services.nameid.utility.PermissionChecker;
import com.tmobile.services.nameid.utility.PhoneNumberHelper;
import com.tmobile.services.nameid.utility.PreferenceUtils;
import com.tmobile.services.nameid.utility.SinglePrefChangeCommand;
import com.tmobile.services.nameid.utility.StringParsingUtils;
import com.tmobile.services.nameid.utility.SubscriptionHelper;
import com.tmobile.services.nameid.utility.WidgetUtils;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.annotations.NonNull;
import io.reactivex.disposables.Disposable;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallDetailsPresenter.class */
public class CallDetailsPresenter {

    /* renamed from: a */
    private CallerDetailsFragment f13098a;
    @Nullable

    /* renamed from: c */
    protected Caller f13100c;
    @Nullable

    /* renamed from: d */
    protected CallerDetailsData f13101d;

    /* renamed from: n */
    private RealmResults<TmoUserStatus> f13111n;
    @Nullable

    /* renamed from: p */
    private TmoUserStatus f13113p;
    @Nullable

    /* renamed from: q */
    private RealmResults<CallerSetting> f13114q;
    @Nullable

    /* renamed from: r */
    private RealmResults<MessageUserPreference> f13115r;
    @Nullable

    /* renamed from: s */
    private Caller f13116s;
    @Nullable

    /* renamed from: u */
    private Realm f13118u;
    @Nullable

    /* renamed from: x */
    private Disposable f13121x;
    @Nullable

    /* renamed from: y */
    private Disposable f13122y;

    /* renamed from: b */
    private List<RecentActivityDisplayable> f13099b = new ArrayList();

    /* renamed from: e */
    private int f13102e = 0;

    /* renamed from: f */
    private int f13103f = 1;

    /* renamed from: g */
    private int f13104g = 0;

    /* renamed from: h */
    private int f13105h = 1;

    /* renamed from: i */
    private boolean f13106i = true ^ Feature.PNB_MESSAGING.isOwned();

    /* renamed from: j */
    private boolean f13107j = false;

    /* renamed from: k */
    private boolean f13108k = false;

    /* renamed from: l */
    private TmoUserStatus.SubscriptionType f13109l = TmoUserStatus.SubscriptionType.UNKNOWN;

    /* renamed from: m */
    private boolean f13110m = false;

    /* renamed from: o */
    private boolean f13112o = false;

    /* renamed from: t */
    private boolean f13117t = false;
    @Nullable

    /* renamed from: v */
    private ActivityItem f13119v = null;

    /* renamed from: w */
    private ContactListener f13120w = new ContactListener();

    /* renamed from: z */
    private Observer<List<RecentActivityDisplayable>> f13123z = new Observer<List<RecentActivityDisplayable>>() { // from class: com.tmobile.services.nameid.activity.CallDetailsPresenter.1
        /* renamed from: a */
        public void onNext(@NonNull List<RecentActivityDisplayable> list) {
            LogUtil.m5643d("CallDetailsPresenter#eventSummaryObserver", "onNext with " + list.size() + " new items.");
            CallDetailsPresenter.this.m7021E(list);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5643d("CallDetailsPresenter#eventSummaryObserver", "onError: " + th);
            CallDetailsPresenter.this.f13106i = true;
            CallDetailsPresenter.this.m7025A();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            CallDetailsPresenter.this.f13122y = disposable;
        }
    };

    /* renamed from: A */
    private Observer<List<RecentActivityDisplayable>> f13097A = new Observer<List<RecentActivityDisplayable>>() { // from class: com.tmobile.services.nameid.activity.CallDetailsPresenter.2
        /* renamed from: a */
        public void onNext(@NonNull List<RecentActivityDisplayable> list) {
            LogUtil.m5643d("CallDetailsPresenter#callLogObserver", "onNext with " + list.size() + " new items.");
            CallDetailsPresenter.this.m7024B(list);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
        }

        @Override // io.reactivex.Observer
        public void onError(@NonNull Throwable th) {
            LogUtil.m5643d("CallDetailsPresenter#callLogObserver", "onError: " + th);
            CallDetailsPresenter.this.f13107j = true;
            CallDetailsPresenter.this.m7025A();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(@NonNull Disposable disposable) {
            CallDetailsPresenter.this.f13121x = disposable;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.tmobile.services.nameid.activity.CallDetailsPresenter$3 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallDetailsPresenter$3.class */
    public static /* synthetic */ class C16273 {

        /* renamed from: a */
        static final /* synthetic */ int[] f13126a;

        /* renamed from: b */
        static final /* synthetic */ int[] f13127b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0055 -> B:26:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0059 -> B:22:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x005d -> B:8:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0061 -> B:28:0x003e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0065 -> B:24:0x0049). Please submit an issue!!! */
        static {
            int[] iArr = new int[ApiUtils.Mode.values().length];
            f13127b = iArr;
            try {
                iArr[ApiUtils.Mode.ADD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f13127b[ApiUtils.Mode.DELETE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f13127b[ApiUtils.Mode.UPDATE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            int[] iArr2 = new int[CallerSetting.Action.values().length];
            f13126a = iArr2;
            try {
                iArr2[CallerSetting.Action.APPROVED.ordinal()] = 1;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f13126a[CallerSetting.Action.BLOCKED.ordinal()] = 2;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f13126a[CallerSetting.Action.VOICEMAIL.ordinal()] = 3;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/activity/CallDetailsPresenter$ContactListener.class */
    public class ContactListener extends ContactLookup.ContactUpdateListener {
        private ContactListener() {
        }

        @Override // com.tmobile.services.nameid.utility.ContactLookup.ContactUpdateListener
        /* renamed from: b */
        public void mo5819b() {
            CallDetailsPresenter callDetailsPresenter = CallDetailsPresenter.this;
            callDetailsPresenter.m7008R(callDetailsPresenter.f13101d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CallDetailsPresenter(CallerDetailsFragment callerDetailsFragment, CallerDetailsData callerDetailsData) {
        this.f13098a = callerDetailsFragment;
        this.f13101d = callerDetailsData;
        Context context = callerDetailsFragment.getContext();
        if (context != null) {
            Realm f = ((MainActivity) context).m7593f();
            this.f13118u = f;
            if (f != null && !f.isClosed()) {
                RealmResults<TmoUserStatus> E = this.f13118u.m3053Q0(TmoUserStatus.class).m2918E();
                this.f13111n = E;
                if (!E.isEmpty()) {
                    m7016J(this.f13111n);
                    this.f13111n.m2865v(new C1629a(this));
                }
                m7012N(callerDetailsData);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: D */
    public void m7022D(RealmResults<CallerSetting> realmResults) {
        if (this.f13101d == null || realmResults.isEmpty()) {
            LogUtil.m5643d("CallDetailsPresenter#", "onCallerSettingsChange - trivial");
            m7007S(CallerSetting.Action.NONE, false);
            return;
        }
        LogUtil.m5643d("CallDetailsPresenter#", "onCallerSettingsChange - nontrivial");
        RealmQuery<CallerSetting> E = realmResults.m2867E();
        E.m2882t("e164Number", this.f13101d.getE164Number());
        m7023C(E.m2916G());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: G */
    public void m7019G(RealmResults<MessageUserPreference> realmResults) {
        if (this.f13101d == null || realmResults.isEmpty()) {
            m7005U(MessageUserPreference.Action.NONE);
            return;
        }
        RealmQuery<MessageUserPreference> E = realmResults.m2867E();
        E.m2882t("e164Number", this.f13101d.getE164Number());
        m7020F(E.m2916G());
    }

    /* renamed from: M */
    private void m7013M(CallerDetailsData callerDetailsData) {
        Contact S0 = this.f13098a.m6947S0(callerDetailsData.getE164Number());
        boolean z = S0 == null || ((S0.getName() == null || S0.getName().isEmpty()) && (S0.getUri() == null || S0.getUri().isEmpty()));
        int i = C1517R.string.con_desc_contact_image;
        if (z && callerDetailsData.getE164Number().replace(" ", "").equals("")) {
            this.f13098a.m6944T1(C1517R.C1519drawable.caller_unknown_inverted, C1517R.string.con_desc_contact_image);
        } else if (S0 != null && WidgetUtils.m5254S(S0)) {
            this.f13098a.m6942U1(S0.getUri());
        } else if (S0 != null && WidgetUtils.m5253T(S0)) {
            String b = StringParsingUtils.m5338b(S0.getName());
            if (b.isEmpty() || b.equals(" ")) {
                this.f13098a.m6944T1(C1517R.C1519drawable.caller_unknown_inverted, C1517R.string.con_desc_contact_image);
            } else {
                this.f13098a.m6946S1(b);
            }
        } else if (callerDetailsData.isScammer()) {
            this.f13098a.m6944T1(C1517R.C1519drawable.caller_exclamation_inverted, C1517R.string.con_desc_scam_likely_call_details);
        } else if (callerDetailsData.getCategory() != CategorySetting.BucketId.NONE.getValue() && !callerDetailsData.hasCallerName()) {
            this.f13098a.m6944T1(C1517R.C1519drawable.caller_category, C1517R.string.con_desc_contact_image);
        } else if (callerDetailsData.hasCallerName() || callerDetailsData.isPrivate() || callerDetailsData.getCategory() != CategorySetting.BucketId.NONE.getValue()) {
            if (S0 == null || S0.getId() == null || S0.getId().isEmpty()) {
                i = C1517R.string.con_desc_category_number_call_details;
            }
            this.f13098a.m6944T1(C1517R.C1519drawable.caller_unknown_inverted, i);
        } else {
            this.f13098a.m6944T1(C1517R.C1519drawable.caller_no_info, C1517R.string.con_desc_caller_no_info);
        }
    }

    /* renamed from: N */
    private void m7012N(CallerDetailsData callerDetailsData) {
        if (callerDetailsData instanceof Caller) {
            this.f13100c = (Caller) callerDetailsData;
        } else {
            this.f13100c = null;
        }
    }

    /* renamed from: P */
    private boolean m7010P() {
        return Feature.PNB_MESSAGING.isOwned() && !this.f13107j;
    }

    /* renamed from: S */
    private void m7007S(CallerSetting.Action action, boolean z) {
        LogUtil.m5643d("CallDetailsPresenter#updateCallerSetting", "action = " + action.name() + "    added?" + z);
        this.f13098a.m6918s1(false);
        this.f13098a.m6917t1(false);
        this.f13098a.m6962J1(false);
        if ((this.f13098a.m6954O0(false) != SubscriptionHelper.State.NONE || action == CallerSetting.Action.APPROVED) && z) {
            int i = C16273.f13126a[action.ordinal()];
            if (i == 1) {
                this.f13098a.m6918s1(true);
            } else if (i == 2) {
                this.f13098a.m6917t1(true);
            } else if (i == 3) {
                this.f13098a.m6962J1(true);
            }
        }
    }

    /* renamed from: T */
    private void m7006T(int i) {
        int i2;
        int i3;
        if (i == CategorySetting.BucketId.CALL_BLOCKING.getValue() || i == CategorySetting.BucketId.SCAM.getValue()) {
            i2 = C1517R.string.call_details_manage_card_title_scam;
            i3 = C1517R.string.call_details_manage_card_button_scam;
        } else {
            i2 = C1517R.string.call_details_manage_card_title_non_scam;
            i3 = C1517R.string.call_details_manage_card_button_non_scam;
        }
        this.f13098a.m6971D1(i2, i3);
        this.f13098a.m6970E1(true);
    }

    /* renamed from: U */
    private void m7005U(MessageUserPreference.Action action) {
        if (this.f13098a.m6954O0(false) != SubscriptionHelper.State.NONE) {
            if (action == MessageUserPreference.Action.BLOCKED) {
                this.f13098a.m6916u1(true);
            } else {
                this.f13098a.m6916u1(false);
            }
        }
    }

    /* renamed from: V */
    private boolean m7004V() {
        CallerDetailsData callerDetailsData = this.f13101d;
        if (callerDetailsData == null) {
            return false;
        }
        return PhoneNumberHelper.m5403p(callerDetailsData.getE164Number());
    }

    /* renamed from: e */
    private void m6999e(List<RecentActivityDisplayable> list) {
        this.f13099b.addAll(list);
        Collections.sort(this.f13099b);
        Iterator<RecentActivityDisplayable> it = this.f13099b.iterator();
        RecentActivityDisplayable recentActivityDisplayable = null;
        while (it.hasNext()) {
            RecentActivityDisplayable next = it.next();
            if (recentActivityDisplayable == null || !recentActivityDisplayable.equals(next)) {
                recentActivityDisplayable = next;
            } else {
                it.remove();
            }
        }
        Collections.sort(this.f13099b, Collections.reverseOrder());
    }

    /* renamed from: f */
    private boolean m6998f(CallerSetting.Action action) {
        SubscriptionHelper.State O0 = this.f13098a.m6954O0(true);
        if (action != CallerSetting.Action.NONE && action != CallerSetting.Action.APPROVED && !Feature.PHONE_NUMBER_BLOCK.isOwned(O0)) {
            LogUtil.m5632o("CallDetailsPresenter#", "tried to set action for caller but user is " + O0.name() + " state. Going to subscribe");
            this.f13098a.m6945T0();
            return false;
        } else if (this.f13098a.m6941V0()) {
            return true;
        } else {
            LogUtil.m5632o("CallDetailsPresenter#", "tried to set action for caller but no network. Showing network dialog.");
            WidgetUtils.m5241c0(this.f13098a.getActivity(), this.f13098a.getFragmentManager());
            return false;
        }
    }

    /* renamed from: g */
    private List<RecentActivityDisplayable> m6997g(List<RecentActivityDisplayable> list) {
        ArrayList arrayList = new ArrayList();
        MultiMessageActivityItem multiMessageActivityItem = null;
        for (RecentActivityDisplayable recentActivityDisplayable : list) {
            if (multiMessageActivityItem == null || !multiMessageActivityItem.getDate().equals(recentActivityDisplayable.getDate())) {
                arrayList.add(recentActivityDisplayable);
                multiMessageActivityItem = recentActivityDisplayable;
            } else {
                MultiMessageActivityItem multiMessageActivityItem2 = new MultiMessageActivityItem(multiMessageActivityItem, recentActivityDisplayable);
                arrayList.remove(multiMessageActivityItem);
                arrayList.add(multiMessageActivityItem2);
                multiMessageActivityItem = multiMessageActivityItem2;
            }
        }
        return arrayList;
    }

    /* renamed from: h */
    private void m6996h(CallerSetting callerSetting, CallerSetting.Action action, String str, int i) {
        boolean z = callerSetting.getPreferenceId() != null && !callerSetting.getPreferenceId().isEmpty();
        if (action == CallerSetting.Action.NONE) {
            this.f13098a.m6963J0(str, callerSetting, i);
        } else if (z) {
            this.f13098a.m6948R1(str, callerSetting, i);
        } else {
            this.f13098a.m6968G0(str, i, callerSetting);
        }
    }

    /* renamed from: i */
    private CallerSetting m6995i() {
        RealmResults<CallerSetting> realmResults = this.f13114q;
        if (realmResults == null || this.f13101d == null) {
            return null;
        }
        RealmQuery<CallerSetting> E = realmResults.m2867E();
        E.m2882t("e164Number", this.f13101d.getE164Number());
        return E.m2916G();
    }

    /* renamed from: j */
    private MessageUserPreference m6994j() {
        RealmResults<MessageUserPreference> realmResults = this.f13115r;
        if (realmResults == null || this.f13101d == null) {
            return null;
        }
        RealmQuery<MessageUserPreference> E = realmResults.m2867E();
        E.m2882t("e164Number", this.f13101d.getE164Number());
        return E.m2916G();
    }

    /* renamed from: k */
    private boolean m6993k() {
        return this.f13107j && this.f13106i;
    }

    /* renamed from: m */
    private List<RecentActivityDisplayable> m6991m(String str) {
        ArrayList arrayList;
        Realm realm = this.f13118u;
        if (realm != null) {
            RealmQuery Q0 = realm.m3053Q0(ActivityItem.class);
            Q0.m2882t("e164Number", str);
            RealmResults E = Q0.m2918E();
            arrayList = new ArrayList(E.subList(0, Math.min(E.size(), (int) HttpStatus.HTTP_OK)));
        } else {
            arrayList = new ArrayList();
        }
        LogUtil.m5643d("CallDetailsPresenter#getCachedCallLogForCaller", "Retrieved " + arrayList.size());
        return arrayList;
    }

    /* renamed from: n */
    private List<RecentActivityDisplayable> m6990n(String str) {
        ArrayList arrayList;
        String replace = str.replace("+", "");
        Realm realm = this.f13118u;
        if (realm != null) {
            RealmQuery Q0 = realm.m3053Q0(EventSummaryItem.class);
            Q0.m2882t("originatingNumber", replace);
            arrayList = new ArrayList(Q0.m2918E());
        } else {
            arrayList = new ArrayList();
        }
        LogUtil.m5643d("CallDetailsPresenter#getCachedEventSummForCaller", "Retrieved " + arrayList.size());
        return m6997g(arrayList);
    }

    /* renamed from: o */
    private void m6989o(String str) {
        if (this.f13118u != null) {
            List<RecentActivityDisplayable> m = m6991m(str);
            List<RecentActivityDisplayable> n = m6990n(str);
            m6999e(m);
            m6999e(n);
        }
    }

    @Nullable
    /* renamed from: p */
    private ActivityItem m6988p() {
        return null;
    }

    /* renamed from: u */
    private Command m6983u(MessageUserPreference messageUserPreference, ApiUtils.Mode mode) {
        int i = C16273.f13127b[mode.ordinal()];
        return i != 1 ? i != 2 ? i != 3 ? new EmptyCommand() : ApiUtils.m6898A(messageUserPreference) : ApiUtils.m6822z(messageUserPreference) : ApiUtils.m6824y(messageUserPreference);
    }

    /* renamed from: x */
    private boolean m6980x() {
        CallerDetailsData callerDetailsData = this.f13101d;
        if (callerDetailsData == null) {
            return false;
        }
        boolean p = PhoneNumberHelper.m5403p(callerDetailsData.getE164Number());
        boolean z = (m6995i() == null && m6994j() == null) ? false : true;
        boolean z2 = false;
        if (!p) {
            z2 = false;
            if (z) {
                z2 = true;
            }
        }
        return z2;
    }

    /* renamed from: A */
    public void m7025A() {
        this.f13112o = false;
        if (this.f13099b.isEmpty()) {
            this.f13098a.m6959L1(false);
            this.f13098a.m6957M1(m6993k(), this.f13099b.isEmpty());
        }
    }

    /* renamed from: B */
    public void m7024B(@NonNull List<RecentActivityDisplayable> list) {
        this.f13112o = false;
        int i = this.f13105h;
        this.f13104g = i;
        this.f13105h = i + 1;
        if (list.size() < 20) {
            this.f13107j = true;
        }
        boolean z = false;
        if (this.f13099b.isEmpty()) {
            z = false;
            if (list.isEmpty()) {
                z = true;
            }
        }
        this.f13098a.m6957M1(m6993k(), z);
        m6999e(list);
        this.f13098a.m6950Q1();
        this.f13098a.m6959L1(!this.f13099b.isEmpty());
    }

    /* renamed from: C */
    public void m7023C(@Nullable CallerSetting callerSetting) {
        if (callerSetting == null) {
            m7007S(CallerSetting.Action.NONE, false);
        } else {
            m7007S(CallerSetting.Action.fromValue(callerSetting.getAction()), true);
        }
    }

    /* renamed from: E */
    public void m7021E(@NonNull List<RecentActivityDisplayable> list) {
        this.f13112o = false;
        int i = this.f13103f;
        this.f13102e = i;
        this.f13103f = i + 1;
        if (list.size() < 20) {
            this.f13106i = true;
        }
        this.f13098a.m6957M1(m6993k(), this.f13099b.isEmpty());
        m6999e(m6997g(list));
        this.f13098a.m6950Q1();
        this.f13098a.m6959L1(!this.f13099b.isEmpty());
    }

    /* renamed from: F */
    public void m7020F(@Nullable MessageUserPreference messageUserPreference) {
        if (messageUserPreference == null) {
            m7005U(MessageUserPreference.Action.NONE);
        } else {
            m7005U(MessageUserPreference.Action.fromValue(messageUserPreference.getAction()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: H */
    public void m7018H() {
        LogUtil.m5643d("CallDetailsPresenter#", "onStart");
        ContactLookup.m5824d().m5825c(this.f13120w);
        Caller caller = this.f13100c;
        if (caller != null && caller.isValid()) {
            this.f13100c.addChangeListener(new C1664r0(this));
            this.f13098a.m6928i1(this.f13100c.getE164Number());
        }
        if (this.f13111n.isValid()) {
            this.f13111n.m2865v(new C1629a(this));
        } else {
            Realm G0 = Realm.m3064G0();
            try {
                RealmResults<TmoUserStatus> E = G0.m3053Q0(TmoUserStatus.class).m2918E();
                this.f13111n = E;
                E.m2865v(new C1629a(this));
                if (G0 != null) {
                    G0.close();
                }
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (G0 != null) {
                        try {
                            G0.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
        if (this.f13114q != null) {
            LogUtil.m5643d("CallDetailsPresenter#", "Add callerSetting listener onStart");
            this.f13114q.m2865v(new C1638e0(this));
        }
        RealmResults<MessageUserPreference> realmResults = this.f13115r;
        if (realmResults != null) {
            realmResults.m2865v(new C1636d0(this));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: I */
    public void m7017I() {
        LogUtil.m5643d("CallDetailsPresenter#", "onStop");
        ContactLookup.m5824d().m5821g(this.f13120w);
        Caller caller = this.f13100c;
        if (caller != null && caller.isValid()) {
            this.f13100c.removeAllChangeListeners();
        }
        RealmResults<TmoUserStatus> realmResults = this.f13111n;
        if (realmResults != null && realmResults.isValid()) {
            this.f13111n.m2870B();
        }
        RealmResults<CallerSetting> realmResults2 = this.f13114q;
        if (realmResults2 != null && realmResults2.isValid()) {
            LogUtil.m5643d("CallDetailsPresenter#", "Remove callerSetting listener onStop");
            this.f13114q.m2870B();
        }
        RealmResults<MessageUserPreference> realmResults3 = this.f13115r;
        if (realmResults3 != null && realmResults3.isValid()) {
            this.f13115r.m2870B();
        }
        Disposable disposable = this.f13121x;
        if (disposable != null) {
            disposable.dispose();
        }
        Disposable disposable2 = this.f13122y;
        if (disposable2 != null) {
            disposable2.dispose();
        }
        this.f13098a.m6953O1();
    }

    /* renamed from: J */
    public void m7016J(List<TmoUserStatus> list) {
        if (!list.isEmpty()) {
            TmoUserStatus tmoUserStatus = list.get(0);
            this.f13113p = tmoUserStatus;
            this.f13110m = tmoUserStatus.isPending();
            this.f13113p.isPendingCheckError();
            boolean z = TmoUserStatus.SubscriptionStatus.fromStatusText(this.f13113p.getStatusText()) == TmoUserStatus.SubscriptionStatus.ACTIVE;
            this.f13108k = z;
            boolean z2 = false;
            if (z) {
                z2 = false;
                if (this.f13113p.isEligible()) {
                    z2 = true;
                }
            }
            this.f13108k = z2;
            TmoUserStatus.SubscriptionType fromTypeLetter = TmoUserStatus.SubscriptionType.fromTypeLetter(this.f13113p.getTypeLetter());
            this.f13109l = fromTypeLetter;
            if (fromTypeLetter == TmoUserStatus.SubscriptionType.FREE && this.f13108k) {
                this.f13113p.getDaysLeft();
            }
        }
    }

    /* renamed from: K */
    public void m7015K(Collection<Caller> collection) {
        Date date = new Date(0L);
        for (Caller caller : collection) {
            if (!caller.getName().isEmpty() || caller.getBucketId() >= 0) {
                if (date.before(caller.getDate())) {
                    date = caller.getDate();
                    this.f13116s = caller;
                }
            }
        }
        m7008R(this.f13101d);
    }

    /* renamed from: L */
    public void m7014L(CallerSetting.Action action, boolean z) {
        FragmentActivity activity;
        if (action.equals(CallerSetting.Action.BLOCKED) && z) {
            WidgetUtils.m5223l0(this.f13098a.getFragmentManager(), true, false);
        }
        if (this.f13101d == null) {
            LogUtil.m5632o("CallDetailsPresenter#setActionForCaller", "tried to set action for caller but caller is null");
            return;
        }
        String n = MainApplication.m7526n();
        AnalyticsWrapper.m5883E(n, "tapped_action_" + AnalyticsHelper.m5902d(action.getValue()));
        CallerSetting.Action action2 = !z ? CallerSetting.Action.NONE : action;
        if (m6998f(action)) {
            Caller caller = this.f13101d.getCaller();
            Caller caller2 = caller;
            if (caller == null) {
                caller2 = this.f13101d.buildCaller();
            }
            boolean W0 = this.f13098a.m6940W0();
            CallerSetting R0 = this.f13098a.m6949R0(this.f13101d.getE164Number());
            CallerSetting callerSetting = new CallerSetting();
            callerSetting.setAction(action2.getValue());
            callerSetting.setE164Number(this.f13101d.getE164Number());
            callerSetting.setPreferenceId("");
            callerSetting.setPending(W0);
            callerSetting.setCallerId(caller2.getId());
            String id = caller2.getId();
            String str = id;
            if (this.f13117t) {
                Caller caller3 = this.f13116s;
                str = id;
                if (caller3 != null) {
                    str = caller3.getId();
                }
            }
            callerSetting.setCallerId(str);
            int value = CallerSetting.Action.NONE.getValue();
            if (R0 != null) {
                R0.setPending(W0);
                value = R0.getAction();
                R0.setAction(action2.getValue());
                R0.setCallerId(str);
                if (action2 == CallerSetting.Action.NONE) {
                    AnalyticsWrapper.m5885C(MainApplication.m7526n(), value);
                } else {
                    AnalyticsWrapper.m5854z(MainApplication.m7526n(), value, action2.getValue());
                }
                this.f13098a.m6920q1(R0);
            } else {
                AnalyticsWrapper.m5881G(MainApplication.m7526n(), action2.getValue());
                this.f13098a.m6920q1(callerSetting);
            }
            if (W0) {
                LogUtil.m5632o("CallDetailsPresenter#setActionForCaller", this.f13101d.getE164Number() + " setting is being queued because user is pending");
            } else if (R0 != null) {
                m6996h(R0, action2, this.f13101d.getE164Number(), value);
            } else {
                LogUtil.m5632o("CallDetailsPresenter#setActionForCaller", "Caller does not exist in realm." + this.f13101d.getE164Number());
                this.f13098a.m6968G0(this.f13101d.getE164Number(), value, callerSetting);
            }
            LogUtil.m5643d("CallDetailsPresenter#setActionForCaller", "showing toast for " + action.name());
            if (action == CallerSetting.Action.APPROVED && z && (activity = this.f13098a.getActivity()) != null) {
                this.f13098a.m6966H0(m6992l(), m6986r(), m6985s(activity));
            }
        }
    }

    /* renamed from: O */
    public void m7011O(boolean z) {
        SinglePrefChangeCommand singlePrefChangeCommand;
        if (m6998f(CallerSetting.Action.BLOCKED)) {
            CallerDetailsData callerDetailsData = this.f13101d;
            if (callerDetailsData == null) {
                LogUtil.m5632o("CallDetailsPresenter#setMessageActionForCaller", "tried to set action for caller but caller is null");
                return;
            }
            String e164Number = callerDetailsData.getE164Number();
            if (z) {
                Caller caller = this.f13101d.getCaller();
                MessageUserPreference messageUserPreference = new MessageUserPreference();
                messageUserPreference.setE164Number(e164Number);
                messageUserPreference.setCallerId(caller.getId());
                messageUserPreference.setPending(this.f13110m);
                messageUserPreference.setAction(MessageUserPreference.Action.BLOCKED.getValue());
                ApiUtils.Mode mode = ApiUtils.Mode.ADD;
                ManageDialog.MessagePrefAddApiObserver messagePrefAddApiObserver = new ManageDialog.MessagePrefAddApiObserver(e164Number, MessageUserPreference.Action.NONE.getValue(), MessageUserPreference.Action.BLOCKED.getValue(), this.f13098a.getContext());
                singlePrefChangeCommand = new SinglePrefChangeCommand(messageUserPreference, mode, messagePrefAddApiObserver, null);
                messagePrefAddApiObserver.m5611e(singlePrefChangeCommand);
                messagePrefAddApiObserver.m5610f(m6983u(messageUserPreference, mode));
                AnalyticsWrapper.m5882F(MainApplication.m7526n());
            } else {
                MessageUserPreference Q0 = this.f13098a.m6951Q0(e164Number);
                MessageUserPreference copy = Q0.copy();
                Q0.setAction(MessageUserPreference.Action.NONE.getValue());
                ApiUtils.Mode mode2 = ApiUtils.Mode.DELETE;
                MessageUserPreference.Action.BLOCKED.getValue();
                MessageUserPreference.Action.NONE.getValue();
                ManageDialog.UserPrefDeleteObserver userPrefDeleteObserver = new ManageDialog.UserPrefDeleteObserver(copy, this.f13098a.getContext());
                singlePrefChangeCommand = new SinglePrefChangeCommand(Q0, mode2, null, userPrefDeleteObserver);
                userPrefDeleteObserver.m5593d(singlePrefChangeCommand);
                userPrefDeleteObserver.m5592e(m6983u(copy, mode2));
                AnalyticsWrapper.m5886B(MainApplication.m7526n());
            }
            if (!WidgetUtils.m5241c0(this.f13098a.getContext(), this.f13098a.getFragmentManager())) {
                singlePrefChangeCommand.execute();
            }
        }
    }

    /* renamed from: Q */
    public boolean m7009Q() {
        return Feature.PNB_MESSAGING.isOwned();
    }

    /* renamed from: R */
    public void m7008R(@Nullable CallerDetailsData callerDetailsData) {
        Context l;
        if (callerDetailsData != null && callerDetailsData.isValid() && (l = MainApplication.m7528l()) != null) {
            LogUtil.m5643d("CallDetailsPresenter#updateCallerInfo", "Caller -> " + callerDetailsData.getE164Number());
            Contact contact = callerDetailsData.getContact();
            boolean z = (contact == null || contact.getId() == null || contact.getId().isEmpty()) ? false : true;
            String location = callerDetailsData.getLocation();
            boolean isPrivate = callerDetailsData.isPrivate();
            boolean C = WidgetUtils.m5270C(callerDetailsData.getE164Number());
            boolean z2 = WidgetUtils.m5269D(callerDetailsData, z) && !callerDetailsData.isScammer() && !callerDetailsData.isEmail();
            int category = callerDetailsData.getCategory();
            boolean z3 = category != CategorySetting.BucketId.NONE.getValue();
            boolean isScammer = callerDetailsData.isScammer();
            boolean z4 = !callerDetailsData.hasCallerName() && !z2 && !z3 && !z && !isPrivate;
            boolean z5 = z3 && !z && !callerDetailsData.hasCallerName();
            CategorySetting p = ApiUtils.m6842p(category);
            boolean z6 = p != null && p.getBlocked() && SubscriptionHelper.m5317k();
            if (!z3 || z6 || z) {
                this.f13098a.m6970E1(false);
            } else {
                m7006T(callerDetailsData.getCategory());
            }
            this.f13098a.m6964I1(z2);
            m7013M(callerDetailsData);
            if (z5 || (isScammer && !z)) {
                this.f13098a.m6952P1();
            }
            this.f13098a.m6969F1(z4);
            this.f13098a.m6973B1(location);
            this.f13098a.m6972C1(!location.isEmpty());
            if (!z3 || isScammer) {
                this.f13098a.m6915v1(z2 ? l.getString(C1517R.string.caller_name_unknown) : z4 ? l.getString(C1517R.string.caller_name_no_info) : callerDetailsData.getPrimaryDisplayInfo(l));
                this.f13098a.m6912y1(false);
            } else {
                String name = contact != null ? contact.getName() : null;
                if (name != null) {
                    this.f13098a.m6915v1(name);
                    this.f13098a.m6913x1(callerDetailsData.getDisplayCategory(l));
                    this.f13098a.m6912y1(true);
                } else if (callerDetailsData.hasCallerName()) {
                    this.f13098a.m6915v1(callerDetailsData.getDisplayName());
                    this.f13098a.m6913x1(callerDetailsData.getDisplayCategory(l));
                    this.f13098a.m6912y1(true);
                } else {
                    this.f13098a.m6915v1(callerDetailsData.getDisplayCategory(l));
                    this.f13098a.m6912y1(false);
                }
                this.f13098a.m6969F1(false);
            }
            if (callerDetailsData.isPrivate() || z2 || C) {
                this.f13098a.m6967G1("");
                this.f13098a.m6914w1(true);
                return;
            }
            this.f13098a.m6967G1(callerDetailsData.getDisplayNumber(""));
            this.f13098a.m6914w1(false);
        }
    }

    /* renamed from: l */
    public String m6992l() {
        CallerDetailsData callerDetailsData = this.f13101d;
        return callerDetailsData != null ? callerDetailsData.getDisplayName() : "";
    }

    /* renamed from: q */
    public void m6987q() {
        LogUtil.m5643d("CallDetailsPresenter#", "getData");
        Realm realm = this.f13118u;
        if (realm != null && !realm.isClosed()) {
            CallerDetailsData callerDetailsData = this.f13101d;
            if (callerDetailsData == null) {
                LogUtil.m5643d("CallDetailsPresenter#getData", "callerDetailsData == null, returning");
                return;
            }
            String e164Number = callerDetailsData.getE164Number();
            if (e164Number.replace(" ", "").equals("")) {
                m7013M(this.f13101d);
            } else if (this.f13101d.isEmail()) {
                this.f13098a.m6965H1();
            }
            this.f13119v = m6988p();
            m7008R(this.f13101d);
            Caller caller = this.f13100c;
            if (caller != null) {
                caller.addChangeListener(new C1664r0(this));
            }
            RealmQuery Q0 = this.f13118u.m3053Q0(CallerSetting.class);
            Q0.m2882t("e164Number", e164Number);
            RealmResults<CallerSetting> E = Q0.m2918E();
            this.f13114q = E;
            m7022D(E);
            LogUtil.m5643d("CallDetailsPresenter#", "Add callerSetting listener in getData");
            this.f13114q.m2865v(new C1638e0(this));
            RealmQuery Q02 = this.f13118u.m3053Q0(MessageUserPreference.class);
            Q02.m2882t("e164Number", e164Number);
            RealmResults<MessageUserPreference> E2 = Q02.m2918E();
            this.f13115r = E2;
            m7019G(E2);
            this.f13115r.m2865v(new C1636d0(this));
            if (m6980x()) {
                this.f13098a.m6974A1(m6995i(), m6994j());
            } else if (!m7004V()) {
                this.f13098a.m6960L0();
            } else if (!SubscriptionHelper.m5317k()) {
                this.f13098a.m6958M0();
            }
            this.f13107j = PreferenceUtils.m5395b("PREF_CALL_LOG_RETRIEVED_ALL_ITEMS", false);
            if (e164Number.replace(" ", "").equals("")) {
                this.f13098a.m6961K1(m6991m(e164Number));
                m7008R(this.f13101d);
                return;
            }
            if (!this.f13107j) {
                Observable<List<RecentActivityDisplayable>> j = ApiWrapper.m6771j(e164Number, 0, 20);
                if (j == null) {
                    m7025A();
                } else {
                    j.subscribe(this.f13097A);
                }
            }
            if (m7010P()) {
                Observable<List<RecentActivityDisplayable>> o = ApiWrapper.m6762o(e164Number, 0, 20);
                if (o == null) {
                    m7025A();
                } else {
                    o.subscribe(this.f13123z);
                }
            }
            m6989o(e164Number);
            this.f13098a.m6961K1(this.f13099b);
            this.f13098a.m6957M1(m6993k(), this.f13099b.isEmpty());
        }
    }

    /* renamed from: r */
    public String m6986r() {
        CallerDetailsData callerDetailsData = this.f13101d;
        return callerDetailsData != null ? callerDetailsData.getE164Number() : "";
    }

    /* renamed from: s */
    public FavoritesContactsPolicy m6985s(Activity activity) {
        CallerDetailsData callerDetailsData = this.f13101d;
        return new FavoritesContactsPolicy(callerDetailsData != null ? callerDetailsData.getContact() : null, PermissionChecker.m5423b(activity), PermissionChecker.m5424a(activity));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public void m6984t() {
        LogUtil.m5643d("CallDetailsPresenter#", "getMoreActivity");
        if (!this.f13112o) {
            this.f13112o = true;
            CallerDetailsData callerDetailsData = this.f13101d;
            if (callerDetailsData != null) {
                if (!this.f13107j) {
                    Observable<List<RecentActivityDisplayable>> j = ApiWrapper.m6771j(callerDetailsData.getE164Number(), this.f13104g, 20);
                    if (j == null) {
                        m7025A();
                    } else {
                        j.subscribe(this.f13097A);
                    }
                }
                if (m7010P()) {
                    Observable<List<RecentActivityDisplayable>> o = ApiWrapper.m6762o(this.f13101d.getE164Number(), this.f13102e, 20);
                    if (o == null) {
                        m7025A();
                    } else {
                        o.subscribe(this.f13123z);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: v */
    public void m6982v() {
        AnalyticsWrapper.m5883E("CallerDetailsFragment", "manage_category");
        CallerDetailsData callerDetailsData = this.f13101d;
        if (callerDetailsData != null) {
            this.f13098a.m6923n1(callerDetailsData.getCategory());
        }
    }

    /* renamed from: w */
    public void m6981w() {
        AnalyticsWrapper.m5883E("CallerDetailsFragment", "report_caller");
        if (this.f13101d != null && !WidgetUtils.m5241c0(this.f13098a.getActivity(), this.f13098a.getFragmentManager())) {
            MainApplication.m7553C("complaint_initialized", new String[]{"source", "bucketId"}, new String[]{"detail_view", this.f13101d.getCategory() + ""});
            Contact contact = this.f13101d.getContact();
            this.f13098a.m6955N1(PhoneNumberHelper.m5412g(this.f13101d.getE164Number(), ""), (contact == null || contact.getName() == null || contact.getName().isEmpty()) ? this.f13101d.getDisplayName() : contact.getName(), this.f13101d.getCategoryRes(), this.f13101d.getCategory(), this.f13101d.getE164Number());
        }
    }
}
