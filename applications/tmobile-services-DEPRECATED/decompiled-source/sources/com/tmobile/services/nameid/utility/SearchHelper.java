package com.tmobile.services.nameid.utility;

import android.content.Context;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import androidx.appcompat.app.AppCompatActivity;
import com.tmobile.services.nameid.MainApplication;
import com.tmobile.services.nameid.api.ApiUtils;
import com.tmobile.services.nameid.api.ApiWrapper;
import com.tmobile.services.nameid.model.Caller;
import com.tmobile.services.nameid.model.CallerDetailsData;
import com.tmobile.services.nameid.model.CallerSetting;
import com.tmobile.services.nameid.model.CategorySetting;
import com.tmobile.services.nameid.model.Contact;
import com.tmobile.services.nameid.model.MessageUserPreference;
import com.tmobile.services.nameid.model.SearchItem;
import com.tmobile.services.nameid.model.UserPreference;
import com.tmobile.services.nameid.model.UserPreferenceStatus;
import com.tmobile.services.nameid.model.activity.ActivityItem;
import com.tmobile.services.nameid.p007ui.dialog_fragment.NameIDDialogBuilder;
import com.tmobile.services.nameid.utility.ManageDialog;
import io.reactivex.Observable;
import io.reactivex.ObservableEmitter;
import io.reactivex.ObservableOnSubscribe;
import io.reactivex.Observer;
import io.reactivex.functions.BiFunction;
import io.realm.Case;
import io.realm.ImportFlag;
import io.realm.Realm;
import io.realm.RealmQuery;
import io.realm.RealmResults;
import io.realm.Sort;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nonnull;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SearchHelper.class */
public class SearchHelper {

    /* loaded from: classes-dex2jar.jar:com/tmobile/services/nameid/utility/SearchHelper$SearchResponse.class */
    public static class SearchResponse {
        @Nonnull

        /* renamed from: a */
        private List<SearchItem> f14432a = new ArrayList();
        @Nonnull

        /* renamed from: b */
        private String f14433b = "";

        @Nonnull
        /* renamed from: a */
        public List<SearchItem> m5356a() {
            return this.f14432a;
        }

        @Nonnull
        /* renamed from: b */
        public String m5355b() {
            return this.f14433b;
        }

        /* renamed from: c */
        public void m5354c(@Nonnull List<SearchItem> list) {
            this.f14432a = list;
        }

        /* renamed from: d */
        public void m5353d(@Nonnull String str) {
            this.f14433b = str;
        }
    }

    static {
        C1959l1 l1Var = C1959l1.f14562f;
    }

    private SearchHelper() {
        throw new IllegalAccessError("This is a utility class, it shouldn't be created.");
    }

    /* renamed from: a */
    public static boolean m5375a(final String str) {
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2882t("e164Number", str);
            if (Q0.m2896f() <= 0) {
                G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.j1
                    @Override // io.realm.Realm.Transaction
                    /* renamed from: a */
                    public final void mo3037a(Realm realm) {
                        SearchHelper.m5367i(str, realm);
                    }
                });
                if (G0 == null) {
                    return false;
                }
                G0.close();
                return false;
            } else if (G0 == null) {
                return true;
            } else {
                G0.close();
                return true;
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

    /* renamed from: b */
    public static SearchResponse m5374b(SearchResponse searchResponse, boolean z) {
        Iterator<SearchItem> it = searchResponse.m5356a().iterator();
        while (it.hasNext()) {
            SearchItem next = it.next();
            CallerDetailsData callerDetailsData = next.getCallerDetailsData();
            Contact contact = next.getContact();
            boolean z2 = contact == null || contact.getName() == null || contact.getName().isEmpty();
            if (callerDetailsData != null && z2 && callerDetailsData.getE164Number().length() < 4) {
                it.remove();
            } else if (z && callerDetailsData != null && callerDetailsData.isPrivate()) {
                it.remove();
            }
        }
        if (searchResponse.m5356a().size() > 25) {
            searchResponse.m5356a().subList(25, searchResponse.m5356a().size()).clear();
        }
        return searchResponse;
    }

    /* renamed from: c */
    public static Observable<SearchResponse> m5373c(final String str, final Context context) {
        LogUtil.m5643d("SearchHelper", "querying with text [" + str + "]");
        Observable create = Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.utility.n1
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public final void mo2504a(ObservableEmitter observableEmitter) {
                observableEmitter.onNext(ContactUtils.m5815b(str, context, false));
            }
        });
        final ArrayList<Integer> e = m5371e(str);
        return Observable.zip(create, Observable.create(new ObservableOnSubscribe() { // from class: com.tmobile.services.nameid.utility.o1
            @Override // io.reactivex.ObservableOnSubscribe
            /* renamed from: a */
            public final void mo2504a(ObservableEmitter observableEmitter) {
                SearchHelper.m5365k(str, e, observableEmitter);
            }
        }), new BiFunction() { // from class: com.tmobile.services.nameid.utility.m1
            @Override // io.reactivex.functions.BiFunction
            public final Object apply(Object obj, Object obj2) {
                return SearchHelper.m5364l(str, (List) obj, (Collection) obj2);
            }
        });
    }

    /* renamed from: d */
    public static boolean m5372d(String str) {
        Contact e = ContactLookup.m5824d().m5823e(str);
        return (e == null || e.getName() == null || e.getName().isEmpty()) && !str.contains("0000000000") && !WidgetUtils.m5270C(str);
    }

    /* renamed from: e */
    public static ArrayList<Integer> m5371e(String str) {
        CategorySetting.BucketId[] values;
        ArrayList<Integer> arrayList = new ArrayList<>();
        Context l = MainApplication.m7528l();
        if (l == null) {
            LogUtil.m5643d("SearchHelpergetPossibleBucketStrings", "Context is null, returning");
        } else {
            for (CategorySetting.BucketId bucketId : CategorySetting.BucketId.values()) {
                if (l.getString(bucketId.toStringRes()).toLowerCase().contains(str.toLowerCase())) {
                    LogUtil.m5643d("SearchHelpergetPossibleBucketStrings", "adding " + String.valueOf(bucketId.getValue()));
                    arrayList.add(Integer.valueOf(bucketId.getValue()));
                }
            }
        }
        return arrayList;
    }

    /* renamed from: f */
    public static Observable<SearchResponse> m5370f() {
        return Observable.create(C1943h1.f14537a);
    }

    /* renamed from: g */
    private static Observer<UserPreferenceStatus> m5369g(UserPreference userPreference, String str, int i, Context context) {
        if (userPreference instanceof MessageUserPreference) {
            LogUtil.m5643d("SearchHelper", "new MessagePrefAddApiObserver");
            return new ManageDialog.MessagePrefAddApiObserver(str, i, context);
        }
        LogUtil.m5643d("SearchHelper", "new ResponseAddObserver");
        return new ManageDialog.ResponseAddObserver(str, i, context);
    }

    /* renamed from: h */
    private static boolean m5368h(String str, int i) {
        return (str.matches("([^\\W_]|\\s)") && i != 0) || (str.matches("([^\\W_]|\\+)") && i == 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public static /* synthetic */ void m5367i(String str, Realm realm) {
        Caller caller = new Caller();
        caller.setE164Number(str);
        caller.setDate(new Date());
        caller.setName("");
        caller.setNumberAsInput(str);
        caller.setNameSuppressed(Caller.shouldSuppressName());
        caller.setCategorySuppressed(Caller.shouldSuppressCategory());
        realm.m3045v0(caller, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public static /* synthetic */ void m5365k(String str, ArrayList arrayList, ObservableEmitter observableEmitter) throws Exception {
        Realm G0 = Realm.m3064G0();
        try {
            ArrayList arrayList2 = new ArrayList();
            RealmQuery Q0 = G0.m3053Q0(Caller.class);
            Q0.m2898d("e164Number", str);
            Q0.m2903T();
            Q0.m2897e("name", str, Case.INSENSITIVE);
            RealmQuery Q02 = G0.m3053Q0(ActivityItem.class);
            Q02.m2898d("e164Number", str);
            Q02.m2903T();
            Q02.m2897e("callerName", str, Case.INSENSITIVE);
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                Integer num = (Integer) it.next();
                Q0.m2903T();
                Q0.m2885q("bucketId", num);
                Q02.m2903T();
                Q02.m2885q("bucketId", num);
            }
            arrayList2.addAll(Q02.m2918E().m3089s("date", Sort.DESCENDING));
            arrayList2.addAll(Q0.m2918E().m3089s("date", Sort.DESCENDING));
            observableEmitter.onNext(arrayList2);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public static /* synthetic */ SearchResponse m5364l(String str, List list, Collection collection) throws Exception {
        ArrayList<SearchItem> arrayList = new ArrayList();
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            CallerDetailsData callerDetailsData = (CallerDetailsData) it.next();
            boolean z = false;
            for (SearchItem searchItem : arrayList) {
                CallerDetailsData callerDetailsData2 = searchItem.getCallerDetailsData();
                if (callerDetailsData2 != null && callerDetailsData2.getE164Number().equalsIgnoreCase(callerDetailsData.getE164Number())) {
                    z = true;
                }
            }
            if (!z) {
                SearchItem searchItem2 = new SearchItem();
                searchItem2.setCallerDetailsData(callerDetailsData.copy());
                Iterator it2 = list.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Contact contact = (Contact) it2.next();
                    if (!callerDetailsData.isEmail() || !contact.isEmail() || !callerDetailsData.getE164Number().equalsIgnoreCase(contact.getNumber())) {
                        if (PhoneNumberHelper.m5415d(contact.getNumber()).equals(callerDetailsData.getE164Number())) {
                            list.remove(contact);
                            searchItem2.setContact(contact);
                            break;
                        }
                    } else {
                        list.remove(contact);
                        searchItem2.setContact(contact);
                        break;
                    }
                }
                arrayList.add(searchItem2);
            }
        }
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            Contact contact2 = (Contact) it3.next();
            SearchItem searchItem3 = new SearchItem();
            searchItem3.setContact(contact2);
            arrayList.add(searchItem3);
        }
        SearchResponse searchResponse = new SearchResponse();
        searchResponse.m5353d(str);
        searchResponse.m5354c(arrayList);
        return searchResponse;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public static /* synthetic */ void m5363m(ObservableEmitter observableEmitter) throws Exception {
        ArrayList arrayList = new ArrayList();
        Realm G0 = Realm.m3064G0();
        try {
            Iterator it = G0.m3053Q0(ActivityItem.class).m2918E().m3089s("date", Sort.DESCENDING).iterator();
            while (it.hasNext()) {
                ActivityItem activityItem = (ActivityItem) it.next();
                SearchItem searchItem = new SearchItem();
                searchItem.setCallerDetailsData(activityItem.copy());
                searchItem.setContact(ContactLookup.m5824d().m5823e(activityItem.getE164Number()));
                if (!activityItem.isPrivate()) {
                    arrayList.add(searchItem);
                    if (arrayList.size() >= 25) {
                        break;
                    }
                }
            }
            if (G0 != null) {
                G0.close();
            }
            SearchResponse searchResponse = new SearchResponse();
            searchResponse.m5354c(arrayList);
            searchResponse.m5353d("");
            observableEmitter.onNext(searchResponse);
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: n */
    public static /* synthetic */ void m5362n(UserPreference userPreference, int i, boolean z, Caller caller, Realm realm) {
        userPreference.setAction(i);
        userPreference.setPending(z);
        if (caller != null) {
            userPreference.setCallerId(caller.getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: o */
    public static /* synthetic */ void m5361o(UserPreference userPreference, Realm realm) {
        CallerSetting callerSetting = (CallerSetting) realm.m3046u0((CallerSetting) userPreference, new ImportFlag[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: p */
    public static /* synthetic */ CharSequence m5360p(CharSequence charSequence, int i, int i2, Spanned spanned, int i3, int i4) {
        if (charSequence instanceof SpannableStringBuilder) {
            SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) charSequence;
            while (true) {
                i2--;
                if (i2 < i) {
                    return charSequence;
                }
                if (!m5368h(Character.toString(charSequence.charAt(i2)), i3 + i2)) {
                    spannableStringBuilder.delete(i2, i2 + 1);
                }
            }
        } else {
            StringBuilder sb = new StringBuilder();
            for (int i5 = i; i5 < i2; i5++) {
                String ch = Character.toString(charSequence.charAt(i5));
                if (m5368h(ch, i3 + i5)) {
                    sb.append(ch);
                }
            }
            if (!(charSequence instanceof Spanned)) {
                return sb.toString();
            }
            String sb2 = sb.toString();
            SpannableString spannableString = new SpannableString(sb2);
            TextUtils.copySpansFrom((Spanned) charSequence, i, sb2.length(), null, spannableString, 0);
            return spannableString;
        }
    }

    /* renamed from: q */
    public static void m5359q(String str, CallerSetting.Action action, MessageUserPreference.CommEventType commEventType, AppCompatActivity appCompatActivity, final boolean z, @Nullable final Caller caller) {
        if (!NetworkChecks.f14407b.m5480c(appCompatActivity)) {
            NameIDDialogBuilder.f13943m.m6132l(appCompatActivity).m6160b(appCompatActivity.getSupportFragmentManager());
            return;
        }
        if (commEventType == MessageUserPreference.CommEventType.TEXT) {
            m5358r(str, z, caller, appCompatActivity);
            return;
        }
        if (action.getValue() == CallerSetting.Action.BLOCKED.getValue()) {
            WidgetUtils.m5223l0(appCompatActivity.getSupportFragmentManager(), true, false);
        }
        Realm G0 = Realm.m3064G0();
        try {
            RealmQuery Q0 = G0.m3053Q0(CallerSetting.class);
            Q0.m2882t("e164Number", str);
            final UserPreference userPreference = (UserPreference) Q0.m2916G();
            if (G0 != null) {
                G0.close();
            }
            final int value = action.getValue();
            if (userPreference != null) {
                int action2 = userPreference.getAction();
                if (action == CallerSetting.Action.NONE) {
                    AnalyticsWrapper.m5885C(MainApplication.m7526n(), action2);
                } else if (!PhoneNumberHelper.m5403p(str)) {
                    WidgetUtils.m5247Z(appCompatActivity.getSupportFragmentManager());
                    return;
                } else {
                    AnalyticsWrapper.m5854z(MainApplication.m7526n(), action2, value);
                }
                G0 = Realm.m3064G0();
                try {
                    G0.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.k1
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            SearchHelper.m5362n(UserPreference.this, value, z, caller, realm);
                        }
                    });
                    if (G0 != null) {
                        G0.close();
                    }
                    if (!z) {
                        LogUtil.m5643d("SearchHelpermanageFromSearch", "existing CallerSetting, commEventType = " + userPreference.getCommEventType());
                        ApiWrapper.m6785c(userPreference, m5369g(userPreference, str, action2, appCompatActivity));
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            } else if (!PhoneNumberHelper.m5403p(str)) {
                WidgetUtils.m5247Z(appCompatActivity.getSupportFragmentManager());
            } else {
                AnalyticsWrapper.m5881G(MainApplication.m7526n(), action.getValue());
                final CallerSetting callerSetting = new CallerSetting();
                LogUtil.m5643d("SearchHelpermanageFromSearch", "new CallerSetting, commEventType = " + callerSetting.getCommEventType());
                callerSetting.setAction(value);
                callerSetting.setE164Number(str);
                if (caller == null) {
                    callerSetting.addCallerForSetting(str, null);
                } else {
                    callerSetting.setCallerId(caller.getId());
                }
                callerSetting.setPending(z);
                Realm G02 = Realm.m3064G0();
                try {
                    G02.m3067D0(new Realm.Transaction() { // from class: com.tmobile.services.nameid.utility.i1
                        @Override // io.realm.Realm.Transaction
                        /* renamed from: a */
                        public final void mo3037a(Realm realm) {
                            SearchHelper.m5361o(UserPreference.this, realm);
                        }
                    });
                    if (G02 != null) {
                        G02.close();
                    }
                    if (!z) {
                        ApiWrapper.m6785c(callerSetting, m5369g(callerSetting, str, CallerSetting.Action.NONE.getValue(), appCompatActivity));
                    }
                } finally {
                    try {
                        throw th;
                    } finally {
                    }
                }
            }
        } finally {
            try {
                throw th;
            } finally {
                if (G0 != null) {
                    try {
                        G0.close();
                    } catch (Throwable th) {
                        th.addSuppressed(th);
                    }
                }
            }
        }
    }

    /* renamed from: r */
    private static void m5358r(String str, boolean z, @Nullable Caller caller, AppCompatActivity appCompatActivity) {
        if (!m5357s(str)) {
            MessageUserPreference messageUserPreference = new MessageUserPreference();
            messageUserPreference.setE164Number(str);
            messageUserPreference.setPending(z);
            messageUserPreference.setAction(MessageUserPreference.Action.BLOCKED.getValue());
            if (caller == null) {
                messageUserPreference.addCallerForSetting(str, null);
            } else {
                messageUserPreference.setCallerId(caller.getId());
            }
            ApiUtils.Mode mode = ApiUtils.Mode.ADD;
            ManageDialog.MessagePrefAddApiObserver messagePrefAddApiObserver = new ManageDialog.MessagePrefAddApiObserver(str, MessageUserPreference.Action.NONE.getValue(), MessageUserPreference.Action.BLOCKED.getValue(), appCompatActivity);
            SinglePrefChangeCommand singlePrefChangeCommand = new SinglePrefChangeCommand(messageUserPreference, mode, messagePrefAddApiObserver, null);
            messagePrefAddApiObserver.m5611e(singlePrefChangeCommand);
            messagePrefAddApiObserver.m5610f(ApiUtils.m6824y(messageUserPreference));
            AnalyticsWrapper.m5882F(MainApplication.m7526n());
            if (!WidgetUtils.m5241c0(appCompatActivity, appCompatActivity.getSupportFragmentManager())) {
                singlePrefChangeCommand.execute();
            }
        }
    }

    /* renamed from: s */
    private static boolean m5357s(String str) {
        try {
            Realm G0 = Realm.m3064G0();
            RealmQuery Q0 = G0.m3053Q0(MessageUserPreference.class);
            Q0.m2882t("e164Number", str);
            RealmResults E = Q0.m2918E();
            LogUtil.m5643d("SearchHelpermanageFromSearchForMessage", "Looked for existing user pref's in Realm, and found: " + E.size());
            if (G0 != null) {
                G0.close();
            }
            return !E.isEmpty();
        } catch (Exception e) {
            LogUtil.m5643d("SearchHelpermanageFromSearchForMessage", "Error while looking up user pref in Realm: " + e);
            return false;
        }
    }
}
