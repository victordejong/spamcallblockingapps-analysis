package com.callapp.contacts.activity.select;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseIntArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.TextView;
import com.callapp.common.model.json.JSONFBEntity;
import com.callapp.common.util.RegexUtils;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.chooseContact.BaseListTopBarWithSearchActivity;
import com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity;
import com.callapp.contacts.activity.contact.list.search.T9Helper;
import com.callapp.contacts.activity.select.BasePersonAdapter;
import com.callapp.contacts.activity.select.ConfirmPersonAdapter;
import com.callapp.contacts.api.helper.common.RemoteAccountHelper;
import com.callapp.contacts.api.helper.common.SocialNetworksSearchUtil;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.p237vk.VKHelper;
import com.callapp.contacts.api.helper.p237vk.VKUser;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.loader.social.QuotaReachedException;
import com.callapp.contacts.loader.social.SearchIsNotAvailableExecption;
import com.callapp.contacts.loader.social.UnauthorizedAccessErrorException;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.cache.CacheManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.model.contact.SocialSearchResults;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.popup.contact.SimpleProgressDialog;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.DefaultInterfaceImplUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.contacts.widget.SimpleSearchBarFragment;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.twitter.sdk.android.core.models.User;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity.class */
public class PersonSelectActivity extends BaseListTopBarWithSearchActivity {

    /* renamed from: b */
    public String f24069b;

    /* renamed from: d */
    private int f24071d;

    /* renamed from: e */
    private BasePersonAdapter.ItemSelectListener f24072e;

    /* renamed from: f */
    private String f24073f;

    /* renamed from: g */
    private String f24074g;

    /* renamed from: h */
    private CheckBox f24075h;

    /* renamed from: j */
    private boolean f24076j;

    /* renamed from: k */
    private RemoteAccountHelper f24077k;

    /* renamed from: m */
    private Task f24079m;

    /* renamed from: n */
    private SimpleProgressDialog f24080n;

    /* renamed from: o */
    private LinkButtonOnClickListenerImpl f24081o;

    /* renamed from: c */
    private final int f24070c = ThemeUtils.getColor(2131099784);

    /* renamed from: l */
    private boolean f24078l = false;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl.class */
    public class LinkButtonOnClickListenerImpl implements ConfirmPersonAdapter.LinkButtonOnClickListener {

        /* renamed from: a */
        SimpleProgressDialog f24111a;

        private LinkButtonOnClickListenerImpl() {
            PersonSelectActivity.this = r4;
        }

        @Override // com.callapp.contacts.activity.select.ConfirmPersonAdapter.LinkButtonOnClickListener
        /* renamed from: a */
        public final void mo29672a(final PersonData personData) {
            AndroidUtils.m27635a((Activity) PersonSelectActivity.this);
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f24111a = simpleProgressDialog;
            simpleProgressDialog.setIndeterminate(true);
            this.f24111a.setCancelable(false);
            this.f24111a.setMessage(Activities.getString(2131887415));
            PopupManager.get().m28209a(PersonSelectActivity.this, this.f24111a);
            new Task() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.LinkButtonOnClickListenerImpl.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    PersonData personData2 = personData;
                    String id = personData2.getId();
                    if (StringUtils.m26045b((CharSequence) id)) {
                        Intent intent = new Intent();
                        intent.putExtra("PERSON_SELECT_SELECTED_USER_ID", id);
                        intent.putExtra("PERSON_SELECT_NET_ID", PersonSelectActivity.this.f24071d);
                        intent.putExtra("PERSON_SELECT_PERSON_DATA", (Parcelable) personData2);
                        PersonSelectActivity.this.setResult(-1, intent);
                    } else {
                        PersonSelectActivity.this.setResult(0, null);
                    }
                    SimpleProgressDialog.m27939a(LinkButtonOnClickListenerImpl.this.f24111a);
                    PersonSelectActivity.this.finish();
                }
            }.execute();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener.class */
    public static class PersonSelectDialogSimpleListener extends DefaultInterfaceImplUtils.OnDialogSimpleListener {

        /* renamed from: a */
        private final Thread f24115a;

        private PersonSelectDialogSimpleListener(Thread thread) {
            this.f24115a = thread;
        }

        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnDialogSimpleListener, com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        /* renamed from: b */
        public final void mo26208b(DialogPopup dialogPopup) {
            Thread thread = this.f24115a;
            if (thread == null || !thread.isAlive()) {
                return;
            }
            this.f24115a.interrupt();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener.class */
    public static class SearchExceptionDialogSimpleListener implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a */
        private final boolean f24116a;

        private SearchExceptionDialogSimpleListener(boolean z) {
            this.f24116a = z;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            if (this.f24116a) {
                activity.finish();
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ List m29694a(PersonSelectActivity personSelectActivity, String str) {
        List<PersonData> socialNetworkFriends = personSelectActivity.getSocialNetworkFriends();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(socialNetworkFriends)) {
            String m31889l = RegexUtils.m31889l(str.toLowerCase());
            for (PersonData personData : socialNetworkFriends) {
                String unAccanetName = personData.getUnAccanetName();
                if (StringUtils.m26045b((CharSequence) unAccanetName) && T9Helper.m30357a(unAccanetName.toLowerCase(), new SparseIntArray(0), m31889l, org.apache.commons.lang3.StringUtils.SPACE)) {
                    arrayList.add(personData);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static void m29699a(Activity activity, ContactData contactData, Integer num, String str, String str2) {
        Intent putExtra = new Intent(CallAppApplication.get(), PersonSelectActivity.class).putExtra("PERSON_SELECT_NET_ID", num).putExtra("PERSON_SELECT_CONTACTS_FULL_NAME", str).putExtra("INTENT_EXTRA_FQL_TYPE", str2).putExtra("PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT", false);
        SocialSearchResults m29232a = SocialNetworksSearchUtil.m29232a(contactData, num.intValue());
        if (m29232a == null || num.intValue() == FoursquareHelper.get().getApiConstantNetworkId()) {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", false);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", str);
        } else {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", true);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", m29232a.term);
        }
        activity.startActivityForResult(putExtra, 996);
    }

    /* renamed from: a */
    static /* synthetic */ void m29697a(PersonSelectActivity personSelectActivity, Activity activity, PersonData personData) {
        int type = personData.getType();
        if (type == 1) {
            FacebookHelper.get().m29229a(activity, personData.getId(), (Runnable) null, (OutcomeListener) null, personSelectActivity.f24069b);
        } else if (type == 4) {
            TwitterHelper.m29161a(activity, personData.getId(), (Runnable) null);
        } else if (type == 6) {
            FoursquareHelper.m29193a(activity, personData.getId(), (Runnable) null);
        } else if (type == 7) {
            InstagramHelper.get().m29176a(activity, personData.getUserName(), (Runnable) null);
        } else if (type == 9) {
            PinterestHelper.m29164a(activity, personData.getUserName(), (Runnable) null);
        } else if (type != 10) {
        } else {
            VKHelper.m29112a(activity, personData.getId(), (Runnable) null);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m29695a(PersonSelectActivity personSelectActivity, Exception exc, boolean z) {
        personSelectActivity.m29692a(exc, Activities.getString(2131888108), z);
    }

    /* renamed from: a */
    static /* synthetic */ void m29693a(PersonSelectActivity personSelectActivity, List list, int i) {
        ConfirmPersonAdapter confirmPersonAdapter = (ConfirmPersonAdapter) personSelectActivity.getBaseListFunctions().getListAdapter();
        if (confirmPersonAdapter == null) {
            personSelectActivity.f24081o = new LinkButtonOnClickListenerImpl();
            personSelectActivity.getBaseListFunctions().setListAdapter(new ConfirmPersonAdapter(list, personSelectActivity.f24072e, personSelectActivity.f24081o, i));
            return;
        }
        list.add(i, new PersonData(0, null, null, null, null));
        confirmPersonAdapter.setSeperatorPosition(i);
        Activities.m27667a(confirmPersonAdapter, list);
    }

    /* renamed from: a */
    public void m29692a(Exception exc, String str, boolean z) {
        CLog.m27609a(PersonSelectActivity.class, exc);
        PopupManager.get().m28209a(this, new DialogSimpleMessage(null, str, Activities.getString(2131887338), null, new SearchExceptionDialogSimpleListener(z), null));
    }

    /* renamed from: a */
    private void m29691a(final Runnable runnable, boolean z, boolean z2) {
        final Thread thread = new Thread() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    try {
                        try {
                            PersonSelectActivity.this.f24077k.getHostToCheck();
                            if (!HttpUtils.m26967c()) {
                                FeedbackManager.m28675a(PersonSelectActivity.this);
                            } else {
                                runnable.run();
                            }
                        } catch (SearchIsNotAvailableExecption e) {
                            PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                            personSelectActivity.m29692a((Exception) e, Activities.m27697a(2131887614, personSelectActivity.f24073f), false);
                        } catch (RuntimeException e2) {
                            PersonSelectActivity.m29695a(PersonSelectActivity.this, (Exception) e2, false);
                            AnalyticsManager.get().m28450a(Constants.FAILED, "Person Select Search Failed");
                        }
                    } catch (QuotaReachedException e3) {
                        PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PersonSelectActivity.this.m29686c();
                                FeedbackManager.get().m28664b(Activities.m27697a(2131887905, PersonSelectActivity.this.f24073f), (Integer) 17);
                            }
                        });
                    } catch (UnauthorizedAccessErrorException e4) {
                        PersonSelectActivity.m29695a(PersonSelectActivity.this, (Exception) e4, true);
                    }
                } finally {
                    SimpleProgressDialog.m27939a(PersonSelectActivity.this.f24080n);
                }
            }
        };
        if (z) {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f24080n = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887616));
            this.f24080n.setCancelable(true);
            this.f24080n.setDialogCustomListener(new PersonSelectDialogSimpleListener(thread));
            PopupManager.get().m28209a(this, this.f24080n);
        } else {
            this.f24080n = null;
        }
        thread.setDaemon(true);
        thread.start();
        if (z2) {
            this.f24079m = new Task() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (!thread.isAlive() || thread.isInterrupted()) {
                        return;
                    }
                    thread.interrupt();
                    FeedbackManager.get().m28664b(Activities.getString(2131888108), (Integer) 17);
                    SimpleProgressDialog.m27939a(PersonSelectActivity.this.f24080n);
                    PersonSelectActivity.m29684c(PersonSelectActivity.this, "");
                }
            }.schedule(15000);
        }
    }

    /* renamed from: a */
    public void m29690a(final String str, final boolean z, boolean z2) throws SearchIsNotAvailableExecption {
        m29691a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.1
            @Override // java.lang.Runnable
            public void run() {
                List<PersonData> list;
                boolean z3;
                int i;
                ArrayList arrayList;
                try {
                    list = Singletons.get().getRemoteAccountHelper(PersonSelectActivity.this.f24071d).m29238b(str, true);
                } catch (SearchIsNotAvailableExecption e) {
                    if (!z) {
                        throw e;
                    }
                    list = null;
                }
                if (Thread.interrupted()) {
                    return;
                }
                List m29694a = PersonSelectActivity.m29694a(PersonSelectActivity.this, str);
                if (!z || !CollectionUtils.m26076a(list) || !CollectionUtils.m26076a(m29694a)) {
                    ArrayList arrayList2 = new ArrayList();
                    LinkedHashSet linkedHashSet = new LinkedHashSet();
                    if (CollectionUtils.m26068b(m29694a)) {
                        linkedHashSet.addAll(m29694a);
                    } else if (z) {
                        linkedHashSet.addAll(PersonSelectActivity.this.getFriendsThatContainsName());
                    }
                    arrayList2.addAll(linkedHashSet);
                    LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                    if (CollectionUtils.m26068b(list)) {
                        List socialNetworkFriends = PersonSelectActivity.this.getSocialNetworkFriends();
                        linkedHashSet2.addAll(socialNetworkFriends);
                        socialNetworkFriends.clear();
                        for (PersonData personData : list) {
                            if (linkedHashSet2.contains(personData) && !linkedHashSet.contains(personData)) {
                                socialNetworkFriends.add(personData);
                            }
                        }
                        PersonSelectActivity.m29689a(socialNetworkFriends, str);
                        arrayList2.addAll(socialNetworkFriends);
                    }
                    i = arrayList2.size();
                    if (CollectionUtils.m26068b(list)) {
                        list.removeAll(linkedHashSet);
                        list.removeAll(linkedHashSet2);
                        linkedHashSet.clear();
                        PersonSelectActivity.m29689a(list, str);
                        linkedHashSet.addAll(list);
                        arrayList2.addAll(linkedHashSet);
                    }
                    arrayList = arrayList2;
                    z3 = false;
                } else {
                    arrayList = PersonSelectActivity.this.getSocialNetworkFriends();
                    i = arrayList.size();
                    z3 = true;
                }
                final List friendsThatContainsName = PersonSelectActivity.this.getFriendsThatContainsName();
                if (Thread.interrupted()) {
                    return;
                }
                final boolean z4 = z3;
                final List list2 = arrayList;
                final int i2 = i;
                PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!z || !z4) {
                            if (CollectionUtils.m26076a(list2)) {
                                FeedbackManager.get().m28664b(PersonSelectActivity.this.getString(2131887312), (Integer) 17);
                            }
                            PersonSelectActivity.m29693a(PersonSelectActivity.this, list2, i2);
                            if (PersonSelectActivity.this.f24076j && PersonSelectActivity.this.getBaseListFunctions().getListAdapter().getCount() == 1) {
                                PersonSelectActivity.this.f24076j = false;
                                PersonSelectActivity.this.f24072e.mo29673a((PersonData) PersonSelectActivity.this.getBaseListFunctions().getListAdapter().getItem(0));
                            }
                            PersonSelectActivity.this.setScreenAccordingToSearchText(PersonSelectActivity.this.getSearchText());
                        } else if (!StringUtils.m26045b((CharSequence) PersonSelectActivity.this.f24074g)) {
                            PersonSelectActivity.this.f24075h.setChecked(true);
                            PersonSelectActivity.this.f24075h.setVisibility(8);
                            PersonSelectActivity.this.setSearchText(null);
                        } else if (CollectionUtils.m26068b(friendsThatContainsName)) {
                            PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                            List list3 = friendsThatContainsName;
                            PersonSelectActivity.m29693a(personSelectActivity, list3, list3.size());
                        } else {
                            PersonSelectActivity.this.f24075h.setChecked(true);
                            PersonSelectActivity.this.f24075h.setVisibility(8);
                            PersonSelectActivity.this.setSearchText(null);
                        }
                    }
                });
            }
        }, !this.f24078l, z2);
    }

    /* renamed from: a */
    static /* synthetic */ void m29689a(List list, String str) {
        Collections.sort(list);
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            PersonData personData = (PersonData) it2.next();
            if (personData.getName().equals(str)) {
                arrayList.add(personData);
            }
        }
        list.removeAll(arrayList);
        list.addAll(0, arrayList);
    }

    /* renamed from: c */
    public void m29686c() {
        m29691a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.9
            @Override // java.lang.Runnable
            public void run() {
                final List socialNetworkFriends = PersonSelectActivity.this.getSocialNetworkFriends();
                PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                        List list = socialNetworkFriends;
                        PersonSelectActivity.m29693a(personSelectActivity, list, list.size());
                        PersonSelectActivity.this.f24075h.setChecked(true);
                        PersonSelectActivity.this.f24075h.setVisibility(8);
                    }
                });
            }
        }, true, false);
    }

    /* renamed from: c */
    static /* synthetic */ void m29684c(PersonSelectActivity personSelectActivity, final String str) {
        personSelectActivity.m29691a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.10
            @Override // java.lang.Runnable
            public void run() {
                final List m29694a = PersonSelectActivity.m29694a(PersonSelectActivity.this, str);
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PersonSelectActivity personSelectActivity2 = PersonSelectActivity.this;
                        List list = m29694a;
                        PersonSelectActivity.m29693a(personSelectActivity2, list, list.size());
                    }
                });
            }
        }, false, false);
    }

    private static List<PersonData> getFacebookFriends() {
        List<JSONFBEntity> friends = FacebookHelper.get().getFriends();
        ArrayList arrayList = new ArrayList();
        if (friends != null) {
            for (JSONFBEntity jSONFBEntity : friends) {
                PersonData personData = new PersonData(jSONFBEntity);
                personData.setUnAccanetName(RegexUtils.m31889l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    public List<PersonData> getFriendsThatContainsName() {
        ArrayList arrayList = new ArrayList();
        if (StringUtils.m26045b((CharSequence) this.f24074g)) {
            String m31889l = RegexUtils.m31889l(this.f24074g.split(org.apache.commons.lang3.StringUtils.SPACE)[0]);
            List<PersonData> socialNetworkFriends = getSocialNetworkFriends();
            if (CollectionUtils.m26068b(socialNetworkFriends)) {
                for (PersonData personData : socialNetworkFriends) {
                    String unAccanetName = personData.getUnAccanetName();
                    if (StringUtils.m26045b((CharSequence) unAccanetName) && unAccanetName.contains(m31889l)) {
                        arrayList.add(personData);
                    }
                }
            }
        }
        return arrayList;
    }

    public List<PersonData> getSocialNetworkFriends() {
        String str = "social_network_friends_" + this.f24071d;
        ArrayList arrayList = (List) CacheManager.get().m28378b(List.class, str, false);
        if (CollectionUtils.m26068b(arrayList)) {
            return new ArrayList(arrayList);
        }
        try {
            int i = this.f24071d;
            if (i == 1) {
                arrayList = getFacebookFriends();
            } else if (i == 4) {
                arrayList = getTwitterFriends();
            } else if (i == 10) {
                arrayList = getVKFriends();
            }
        } catch (QuotaReachedException e) {
        }
        if (CollectionUtils.m26076a(arrayList)) {
            arrayList = new ArrayList();
        } else {
            Collections.sort(arrayList);
            CacheManager.get().m28388a(List.class, str, arrayList, 2131427358);
        }
        return arrayList;
    }

    private static List<PersonData> getTwitterFriends() {
        ArrayList arrayList = new ArrayList();
        List<User> m29142b = TwitterHelper.get().m29142b(false, false);
        if (CollectionUtils.m26068b(m29142b)) {
            for (User user : m29142b) {
                PersonData personData = new PersonData(user);
                personData.setUnAccanetName(RegexUtils.m31889l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    private static List<PersonData> getVKFriends() {
        List<VKUser> friends = VKHelper.get().getFriends();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.m26068b(friends)) {
            for (VKUser vKUser : friends) {
                PersonData personData = new PersonData(vKUser);
                personData.setUnAccanetName(RegexUtils.m31889l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    public void setScreenAccordingToSearchText(String str) {
        boolean m26059a = StringUtils.m26059a((CharSequence) str);
        this.f24075h.setChecked(m26059a);
        this.f24075h.setVisibility(m26059a ? 8 : 0);
    }

    private void setupSearchEditbox(String str) {
        setScreenAccordingToSearchText(str);
        setHintText(Activities.m27697a(2131887389, this.f24074g.split(org.apache.commons.lang3.StringUtils.SPACE)[0], this.f24073f));
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558457;
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    public SimpleSearchBarFragment.SearchBarEvents getSearchBarEvents() {
        return new TopBarWithSearchActivity.searchBarEventsImpl() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.4
            @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
            /* renamed from: a */
            public final void mo26316a(CharSequence charSequence, int i) {
                String charSequence2 = charSequence != null ? charSequence.toString() : "";
                PersonSelectActivity.m29684c(PersonSelectActivity.this, charSequence2);
                PersonSelectActivity.this.setScreenAccordingToSearchText(charSequence2);
            }

            @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity.searchBarEventsImpl, com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
            /* renamed from: b */
            public final void mo26314b() {
                PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                personSelectActivity.m29690a(personSelectActivity.getSearchText(), false, true);
            }
        };
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("PERSON_SELECT_NET_ID", this.f24071d);
        setResult(0, intent);
        super.onBackPressed();
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity, com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent == null || intent.getExtras() == null) {
            finish();
            return;
        }
        setKeyguardDismissAndScreenWindowFlags();
        super.onCreate(bundle);
        getSupportActionBar().mo46237a(true);
        Bundle extras = intent.getExtras();
        this.f24071d = extras.getInt("PERSON_SELECT_NET_ID");
        this.f24077k = Singletons.get().getRemoteAccountHelper(this.f24071d);
        this.f24073f = SocialNetworksSearchUtil.getSocialNetworkName(this.f24071d);
        this.f24074g = StringUtils.m26020j(extras.getString("PERSON_SELECT_CONTACTS_FULL_NAME"));
        this.f24069b = extras.getString("INTENT_EXTRA_FQL_TYPE");
        this.f24076j = extras.getBoolean("PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT");
        setTitle(Activities.m27697a(2131887390, this.f24074g, this.f24073f));
        if (StringUtils.m26059a((CharSequence) this.f24074g)) {
            this.f24074g = Activities.getString(2131887109);
        }
        this.f24078l = intent.getBooleanExtra("PERSON_SELECT_HAS_RESULT", false);
        View inflate = getLayoutInflater().inflate(2131558675, (ViewGroup) null);
        inflate.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        TextView textView = (TextView) inflate.findViewById(2131362876);
        textView.setText(Activities.getString(2131886924));
        textView.setTextColor(this.f24070c);
        getBaseListFunctions().getListView().addHeaderView(inflate);
        findViewById(2131363764).setVisibility(0);
        CheckBox checkBox = (CheckBox) inflate.findViewById(2131363859);
        this.f24075h = checkBox;
        checkBox.setText(Activities.getString(2131886925));
        this.f24075h.setTextColor(this.f24070c);
        this.f24075h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.m27630a(view, 1);
                if (PersonSelectActivity.this.f24075h.isChecked()) {
                    PersonSelectActivity.this.setSearchText(null);
                    PersonSelectActivity.this.f24075h.setVisibility(8);
                }
            }
        });
        this.f24072e = new BasePersonAdapter.ItemSelectListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.8
            @Override // com.callapp.contacts.activity.select.BasePersonAdapter.ItemSelectListener
            /* renamed from: a */
            public final void mo29673a(PersonData personData) {
                if (personData != null) {
                    PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                    PersonSelectActivity.m29697a(personSelectActivity, personSelectActivity, personData);
                }
            }
        };
        getBaseListFunctions().getListView().setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ((TopBarWithSearchActivity) PersonSelectActivity.this).f20887a.m26616c();
                return false;
            }
        });
        final ArrayList parcelableArrayList = extras.getParcelableArrayList("PERSON_SELECT_LIST_KEY");
        String initialSearchText = getInitialSearchText();
        setupSearchEditbox(initialSearchText);
        if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
            m29691a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    final List friendsThatContainsName = PersonSelectActivity.this.getFriendsThatContainsName();
                    final ArrayList arrayList = new ArrayList();
                    arrayList.addAll(friendsThatContainsName);
                    arrayList.addAll(parcelableArrayList);
                    PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PersonSelectActivity.m29693a(PersonSelectActivity.this, arrayList, friendsThatContainsName.size());
                        }
                    });
                }
            }, false, false);
        } else if (StringUtils.m26045b((CharSequence) initialSearchText)) {
            m29690a(initialSearchText, true, false);
        } else {
            m29686c();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getBaseListFunctions().setListAdapter(null);
        Task task = this.f24079m;
        if (task != null) {
            task.cancel();
        }
        SimpleProgressDialog simpleProgressDialog = this.f24080n;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.setDialogCustomListener(null);
        }
        SimpleProgressDialog.m27939a(this.f24080n);
        LinkButtonOnClickListenerImpl linkButtonOnClickListenerImpl = this.f24081o;
        if (linkButtonOnClickListenerImpl != null) {
            SimpleProgressDialog.m27939a(linkButtonOnClickListenerImpl.f24111a);
        }
        super.onDestroy();
    }
}
