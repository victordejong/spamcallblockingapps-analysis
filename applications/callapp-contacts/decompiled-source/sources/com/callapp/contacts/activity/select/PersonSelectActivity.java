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
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.api.helper.vk.VKUser;
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

    /* renamed from: b  reason: collision with root package name */
    public String f13563b;

    /* renamed from: d  reason: collision with root package name */
    private int f13565d;
    private BasePersonAdapter.ItemSelectListener e;
    private String f;
    private String g;
    private CheckBox h;
    private boolean j;
    private RemoteAccountHelper k;
    private Task m;
    private SimpleProgressDialog n;
    private LinkButtonOnClickListenerImpl o;

    /* renamed from: c  reason: collision with root package name */
    private final int f13564c = ThemeUtils.getColor(2131099784);
    private boolean l = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$LinkButtonOnClickListenerImpl.class */
    public class LinkButtonOnClickListenerImpl implements ConfirmPersonAdapter.LinkButtonOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        SimpleProgressDialog f13594a;

        private LinkButtonOnClickListenerImpl() {
        }

        @Override // com.callapp.contacts.activity.select.ConfirmPersonAdapter.LinkButtonOnClickListener
        public final void a(final PersonData personData) {
            AndroidUtils.a((Activity) PersonSelectActivity.this);
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.f13594a = simpleProgressDialog;
            simpleProgressDialog.setIndeterminate(true);
            this.f13594a.setCancelable(false);
            this.f13594a.setMessage(Activities.getString(2131887415));
            PopupManager.get().a(PersonSelectActivity.this, this.f13594a);
            new Task() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.LinkButtonOnClickListenerImpl.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    PersonData personData2 = personData;
                    String id = personData2.getId();
                    if (StringUtils.b((CharSequence) id)) {
                        Intent intent = new Intent();
                        intent.putExtra("PERSON_SELECT_SELECTED_USER_ID", id);
                        intent.putExtra("PERSON_SELECT_NET_ID", PersonSelectActivity.this.f13565d);
                        intent.putExtra("PERSON_SELECT_PERSON_DATA", (Parcelable) personData2);
                        PersonSelectActivity.this.setResult(-1, intent);
                    } else {
                        PersonSelectActivity.this.setResult(0, null);
                    }
                    SimpleProgressDialog.a(LinkButtonOnClickListenerImpl.this.f13594a);
                    PersonSelectActivity.this.finish();
                }
            }.execute();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$PersonSelectDialogSimpleListener.class */
    public static class PersonSelectDialogSimpleListener extends DefaultInterfaceImplUtils.OnDialogSimpleListener {

        /* renamed from: a  reason: collision with root package name */
        private final Thread f13598a;

        private PersonSelectDialogSimpleListener(Thread thread) {
            this.f13598a = thread;
        }

        @Override // com.callapp.contacts.util.DefaultInterfaceImplUtils.OnDialogSimpleListener, com.callapp.contacts.manager.popup.DialogPopup.IDialogSimpleListener
        public final void b(DialogPopup dialogPopup) {
            Thread thread = this.f13598a;
            if (thread != null && thread.isAlive()) {
                this.f13598a.interrupt();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/PersonSelectActivity$SearchExceptionDialogSimpleListener.class */
    public static class SearchExceptionDialogSimpleListener implements DialogPopup.IDialogOnClickListener {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f13599a;

        private SearchExceptionDialogSimpleListener(boolean z) {
            this.f13599a = z;
        }

        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
        public void onClickListener(Activity activity) {
            if (this.f13599a) {
                activity.finish();
            }
        }
    }

    static /* synthetic */ List a(PersonSelectActivity personSelectActivity, String str) {
        List<PersonData> socialNetworkFriends = personSelectActivity.getSocialNetworkFriends();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(socialNetworkFriends)) {
            String l = RegexUtils.l(str.toLowerCase());
            for (PersonData personData : socialNetworkFriends) {
                String unAccanetName = personData.getUnAccanetName();
                if (StringUtils.b((CharSequence) unAccanetName) && T9Helper.a(unAccanetName.toLowerCase(), new SparseIntArray(0), l, org.apache.commons.lang3.StringUtils.SPACE)) {
                    arrayList.add(personData);
                }
            }
        }
        return arrayList;
    }

    public static void a(Activity activity, ContactData contactData, Integer num, String str, String str2) {
        Intent putExtra = new Intent(CallAppApplication.get(), PersonSelectActivity.class).putExtra("PERSON_SELECT_NET_ID", num).putExtra("PERSON_SELECT_CONTACTS_FULL_NAME", str).putExtra("INTENT_EXTRA_FQL_TYPE", str2).putExtra("PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT", false);
        SocialSearchResults a2 = SocialNetworksSearchUtil.a(contactData, num.intValue());
        if (a2 == null || num.intValue() == FoursquareHelper.get().getApiConstantNetworkId()) {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", false);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", str);
        } else {
            putExtra.putExtra("PERSON_SELECT_HAS_RESULT", true);
            putExtra.putExtra("PERSON_SELECT_AUTO_SEARCH_TEXT", a2.term);
        }
        activity.startActivityForResult(putExtra, 996);
    }

    static /* synthetic */ void a(PersonSelectActivity personSelectActivity, Activity activity, PersonData personData) {
        int type = personData.getType();
        if (type == 1) {
            FacebookHelper.get().a(activity, personData.getId(), (Runnable) null, (OutcomeListener) null, personSelectActivity.f13563b);
        } else if (type == 4) {
            TwitterHelper.a(activity, personData.getId(), (Runnable) null);
        } else if (type == 6) {
            FoursquareHelper.a(activity, personData.getId(), (Runnable) null);
        } else if (type == 7) {
            InstagramHelper.get().a(activity, personData.getUserName(), (Runnable) null);
        } else if (type == 9) {
            PinterestHelper.a(activity, personData.getUserName(), (Runnable) null);
        } else if (type == 10) {
            VKHelper.a(activity, personData.getId(), (Runnable) null);
        }
    }

    static /* synthetic */ void a(PersonSelectActivity personSelectActivity, Exception exc, boolean z) {
        personSelectActivity.a(exc, Activities.getString(2131888108), z);
    }

    static /* synthetic */ void a(PersonSelectActivity personSelectActivity, List list, int i) {
        ConfirmPersonAdapter confirmPersonAdapter = (ConfirmPersonAdapter) personSelectActivity.getBaseListFunctions().getListAdapter();
        if (confirmPersonAdapter == null) {
            personSelectActivity.o = new LinkButtonOnClickListenerImpl();
            personSelectActivity.getBaseListFunctions().setListAdapter(new ConfirmPersonAdapter(list, personSelectActivity.e, personSelectActivity.o, i));
            return;
        }
        list.add(i, new PersonData(0, null, null, null, null));
        confirmPersonAdapter.setSeperatorPosition(i);
        Activities.a(confirmPersonAdapter, list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Exception exc, String str, boolean z) {
        CLog.a(PersonSelectActivity.class, exc);
        PopupManager.get().a(this, new DialogSimpleMessage(null, str, Activities.getString(2131887338), null, new SearchExceptionDialogSimpleListener(z), null));
    }

    private void a(final Runnable runnable, boolean z, boolean z2) {
        final Thread thread = new Thread() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                try {
                    try {
                        try {
                            PersonSelectActivity.this.k.getHostToCheck();
                            if (!HttpUtils.c()) {
                                FeedbackManager.a(PersonSelectActivity.this);
                            } else {
                                runnable.run();
                            }
                        } catch (SearchIsNotAvailableExecption e) {
                            PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                            personSelectActivity.a((Exception) e, Activities.a(2131887614, personSelectActivity.f), false);
                        } catch (RuntimeException e2) {
                            PersonSelectActivity.a(PersonSelectActivity.this, (Exception) e2, false);
                            AnalyticsManager.get().a(Constants.FAILED, "Person Select Search Failed");
                        }
                    } catch (QuotaReachedException e3) {
                        PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.2.1
                            @Override // java.lang.Runnable
                            public void run() {
                                PersonSelectActivity.this.c();
                                FeedbackManager.get().b(Activities.a(2131887905, PersonSelectActivity.this.f), (Integer) 17);
                            }
                        });
                    } catch (UnauthorizedAccessErrorException e4) {
                        PersonSelectActivity.a(PersonSelectActivity.this, (Exception) e4, true);
                    }
                } finally {
                    SimpleProgressDialog.a(PersonSelectActivity.this.n);
                }
            }
        };
        if (z) {
            SimpleProgressDialog simpleProgressDialog = new SimpleProgressDialog();
            this.n = simpleProgressDialog;
            simpleProgressDialog.setMessage(Activities.getString(2131887616));
            this.n.setCancelable(true);
            this.n.setDialogCustomListener(new PersonSelectDialogSimpleListener(thread));
            PopupManager.get().a(this, this.n);
        } else {
            this.n = null;
        }
        thread.setDaemon(true);
        thread.start();
        if (z2) {
            this.m = new Task() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.3
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (thread.isAlive() && !thread.isInterrupted()) {
                        thread.interrupt();
                        FeedbackManager.get().b(Activities.getString(2131888108), (Integer) 17);
                        SimpleProgressDialog.a(PersonSelectActivity.this.n);
                        PersonSelectActivity.c(PersonSelectActivity.this, "");
                    }
                }
            }.schedule(15000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final boolean z, boolean z2) throws SearchIsNotAvailableExecption {
        a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.1
            @Override // java.lang.Runnable
            public void run() {
                List<PersonData> list;
                final boolean z3;
                final int i;
                final List list2;
                try {
                    list = Singletons.get().getRemoteAccountHelper(PersonSelectActivity.this.f13565d).b(str, true);
                } catch (SearchIsNotAvailableExecption e) {
                    if (z) {
                        list = null;
                    } else {
                        throw e;
                    }
                }
                if (!Thread.interrupted()) {
                    List a2 = PersonSelectActivity.a(PersonSelectActivity.this, str);
                    if (!z || !CollectionUtils.a(list) || !CollectionUtils.a(a2)) {
                        ArrayList arrayList = new ArrayList();
                        LinkedHashSet linkedHashSet = new LinkedHashSet();
                        if (CollectionUtils.b(a2)) {
                            linkedHashSet.addAll(a2);
                        } else if (z) {
                            linkedHashSet.addAll(PersonSelectActivity.this.getFriendsThatContainsName());
                        }
                        arrayList.addAll(linkedHashSet);
                        LinkedHashSet linkedHashSet2 = new LinkedHashSet();
                        if (CollectionUtils.b(list)) {
                            List socialNetworkFriends = PersonSelectActivity.this.getSocialNetworkFriends();
                            linkedHashSet2.addAll(socialNetworkFriends);
                            socialNetworkFriends.clear();
                            for (PersonData personData : list) {
                                if (linkedHashSet2.contains(personData) && !linkedHashSet.contains(personData)) {
                                    socialNetworkFriends.add(personData);
                                }
                            }
                            PersonSelectActivity.a(socialNetworkFriends, str);
                            arrayList.addAll(socialNetworkFriends);
                        }
                        i = arrayList.size();
                        if (CollectionUtils.b(list)) {
                            list.removeAll(linkedHashSet);
                            list.removeAll(linkedHashSet2);
                            linkedHashSet.clear();
                            PersonSelectActivity.a(list, str);
                            linkedHashSet.addAll(list);
                            arrayList.addAll(linkedHashSet);
                        }
                        list2 = arrayList;
                        z3 = false;
                    } else {
                        list2 = PersonSelectActivity.this.getSocialNetworkFriends();
                        i = list2.size();
                        z3 = true;
                    }
                    final List friendsThatContainsName = PersonSelectActivity.this.getFriendsThatContainsName();
                    if (!Thread.interrupted()) {
                        PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (!z || !z3) {
                                    if (CollectionUtils.a(list2)) {
                                        FeedbackManager.get().b(PersonSelectActivity.this.getString(2131887312), (Integer) 17);
                                    }
                                    PersonSelectActivity.a(PersonSelectActivity.this, list2, i);
                                    if (PersonSelectActivity.this.j && PersonSelectActivity.this.getBaseListFunctions().getListAdapter().getCount() == 1) {
                                        PersonSelectActivity.this.j = false;
                                        PersonSelectActivity.this.e.a((PersonData) PersonSelectActivity.this.getBaseListFunctions().getListAdapter().getItem(0));
                                    }
                                    PersonSelectActivity.this.setScreenAccordingToSearchText(PersonSelectActivity.this.getSearchText());
                                } else if (!StringUtils.b((CharSequence) PersonSelectActivity.this.g)) {
                                    PersonSelectActivity.this.h.setChecked(true);
                                    PersonSelectActivity.this.h.setVisibility(8);
                                    PersonSelectActivity.this.setSearchText(null);
                                } else if (CollectionUtils.b(friendsThatContainsName)) {
                                    PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                                    List list3 = friendsThatContainsName;
                                    PersonSelectActivity.a(personSelectActivity, list3, list3.size());
                                } else {
                                    PersonSelectActivity.this.h.setChecked(true);
                                    PersonSelectActivity.this.h.setVisibility(8);
                                    PersonSelectActivity.this.setSearchText(null);
                                }
                            }
                        });
                    }
                }
            }
        }, !this.l, z2);
    }

    static /* synthetic */ void a(List list, String str) {
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

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.9
            @Override // java.lang.Runnable
            public void run() {
                final List socialNetworkFriends = PersonSelectActivity.this.getSocialNetworkFriends();
                PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.9.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                        List list = socialNetworkFriends;
                        PersonSelectActivity.a(personSelectActivity, list, list.size());
                        PersonSelectActivity.this.h.setChecked(true);
                        PersonSelectActivity.this.h.setVisibility(8);
                    }
                });
            }
        }, true, false);
    }

    static /* synthetic */ void c(PersonSelectActivity personSelectActivity, final String str) {
        personSelectActivity.a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.10
            @Override // java.lang.Runnable
            public void run() {
                final List a2 = PersonSelectActivity.a(PersonSelectActivity.this, str);
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.10.1
                    @Override // java.lang.Runnable
                    public void run() {
                        PersonSelectActivity personSelectActivity2 = PersonSelectActivity.this;
                        List list = a2;
                        PersonSelectActivity.a(personSelectActivity2, list, list.size());
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
                personData.setUnAccanetName(RegexUtils.l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<PersonData> getFriendsThatContainsName() {
        ArrayList arrayList = new ArrayList();
        if (StringUtils.b((CharSequence) this.g)) {
            String l = RegexUtils.l(this.g.split(org.apache.commons.lang3.StringUtils.SPACE)[0]);
            List<PersonData> socialNetworkFriends = getSocialNetworkFriends();
            if (CollectionUtils.b(socialNetworkFriends)) {
                for (PersonData personData : socialNetworkFriends) {
                    String unAccanetName = personData.getUnAccanetName();
                    if (StringUtils.b((CharSequence) unAccanetName) && unAccanetName.contains(l)) {
                        arrayList.add(personData);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<PersonData> getSocialNetworkFriends() {
        String str = "social_network_friends_" + this.f13565d;
        List<PersonData> list = (List) CacheManager.get().b(List.class, str, false);
        if (CollectionUtils.b(list)) {
            return new ArrayList(list);
        }
        try {
            int i = this.f13565d;
            if (i == 1) {
                list = getFacebookFriends();
            } else if (i == 4) {
                list = getTwitterFriends();
            } else if (i == 10) {
                list = getVKFriends();
            }
        } catch (QuotaReachedException e) {
        }
        if (CollectionUtils.a(list)) {
            list = new ArrayList<>();
        } else {
            Collections.sort(list);
            CacheManager.get().a(List.class, str, list, 2131427358);
        }
        return list;
    }

    private static List<PersonData> getTwitterFriends() {
        ArrayList arrayList = new ArrayList();
        List<User> b2 = TwitterHelper.get().b(false, false);
        if (CollectionUtils.b(b2)) {
            for (User user : b2) {
                PersonData personData = new PersonData(user);
                personData.setUnAccanetName(RegexUtils.l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    private static List<PersonData> getVKFriends() {
        List<VKUser> friends = VKHelper.get().getFriends();
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(friends)) {
            for (VKUser vKUser : friends) {
                PersonData personData = new PersonData(vKUser);
                personData.setUnAccanetName(RegexUtils.l(personData.getName()));
                arrayList.add(personData);
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setScreenAccordingToSearchText(String str) {
        boolean a2 = StringUtils.a((CharSequence) str);
        this.h.setChecked(a2);
        this.h.setVisibility(a2 ? 8 : 0);
    }

    private void setupSearchEditbox(String str) {
        setScreenAccordingToSearchText(str);
        setHintText(Activities.a(2131887389, this.g.split(org.apache.commons.lang3.StringUtils.SPACE)[0], this.f));
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558457;
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity
    public SimpleSearchBarFragment.SearchBarEvents getSearchBarEvents() {
        return new TopBarWithSearchActivity.searchBarEventsImpl() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.4
            @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
            public final void a(CharSequence charSequence, int i) {
                String charSequence2 = charSequence != null ? charSequence.toString() : "";
                PersonSelectActivity.c(PersonSelectActivity.this, charSequence2);
                PersonSelectActivity.this.setScreenAccordingToSearchText(charSequence2);
            }

            @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity.searchBarEventsImpl, com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
            public final void b() {
                PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                personSelectActivity.a(personSelectActivity.getSearchText(), false, true);
            }
        };
    }

    @Override // com.callapp.contacts.activity.chooseContact.TopBarWithSearchActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Intent intent = new Intent();
        intent.putExtra("PERSON_SELECT_NET_ID", this.f13565d);
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
        getSupportActionBar().a(true);
        Bundle extras = intent.getExtras();
        this.f13565d = extras.getInt("PERSON_SELECT_NET_ID");
        this.k = Singletons.get().getRemoteAccountHelper(this.f13565d);
        this.f = SocialNetworksSearchUtil.getSocialNetworkName(this.f13565d);
        this.g = StringUtils.j(extras.getString("PERSON_SELECT_CONTACTS_FULL_NAME"));
        this.f13563b = extras.getString("INTENT_EXTRA_FQL_TYPE");
        this.j = extras.getBoolean("PERSON_SELECT_OPEN_PROFILE_IF_SINGLE_RESULT");
        setTitle(Activities.a(2131887390, this.g, this.f));
        if (StringUtils.a((CharSequence) this.g)) {
            this.g = Activities.getString(2131887109);
        }
        this.l = intent.getBooleanExtra("PERSON_SELECT_HAS_RESULT", false);
        View inflate = getLayoutInflater().inflate(2131558675, (ViewGroup) null);
        inflate.findViewById(2131362611).setBackgroundColor(ThemeUtils.getColor(2131099891));
        TextView textView = (TextView) inflate.findViewById(2131362876);
        textView.setText(Activities.getString(2131886924));
        textView.setTextColor(this.f13564c);
        getBaseListFunctions().getListView().addHeaderView(inflate);
        findViewById(2131363764).setVisibility(0);
        CheckBox checkBox = (CheckBox) inflate.findViewById(2131363859);
        this.h = checkBox;
        checkBox.setText(Activities.getString(2131886925));
        this.h.setTextColor(this.f13564c);
        this.h.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AndroidUtils.a(view, 1);
                if (PersonSelectActivity.this.h.isChecked()) {
                    PersonSelectActivity.this.setSearchText(null);
                    PersonSelectActivity.this.h.setVisibility(8);
                }
            }
        });
        this.e = new BasePersonAdapter.ItemSelectListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.8
            @Override // com.callapp.contacts.activity.select.BasePersonAdapter.ItemSelectListener
            public final void a(PersonData personData) {
                if (personData != null) {
                    PersonSelectActivity personSelectActivity = PersonSelectActivity.this;
                    PersonSelectActivity.a(personSelectActivity, personSelectActivity, personData);
                }
            }
        };
        getBaseListFunctions().getListView().setOnTouchListener(new View.OnTouchListener() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.6
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                ((TopBarWithSearchActivity) PersonSelectActivity.this).f11494a.c();
                return false;
            }
        });
        final ArrayList parcelableArrayList = extras.getParcelableArrayList("PERSON_SELECT_LIST_KEY");
        String initialSearchText = getInitialSearchText();
        setupSearchEditbox(initialSearchText);
        if (parcelableArrayList != null && !parcelableArrayList.isEmpty()) {
            a(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.7
                @Override // java.lang.Runnable
                public void run() {
                    final List friendsThatContainsName = PersonSelectActivity.this.getFriendsThatContainsName();
                    final ArrayList arrayList = new ArrayList();
                    arrayList.addAll(friendsThatContainsName);
                    arrayList.addAll(parcelableArrayList);
                    PersonSelectActivity.this.safeRunOnUIThread(new Runnable() { // from class: com.callapp.contacts.activity.select.PersonSelectActivity.7.1
                        @Override // java.lang.Runnable
                        public void run() {
                            PersonSelectActivity.a(PersonSelectActivity.this, arrayList, friendsThatContainsName.size());
                        }
                    });
                }
            }, false, false);
        } else if (StringUtils.b((CharSequence) initialSearchText)) {
            a(initialSearchText, true, false);
        } else {
            c();
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        getBaseListFunctions().setListAdapter(null);
        Task task = this.m;
        if (task != null) {
            task.cancel();
        }
        SimpleProgressDialog simpleProgressDialog = this.n;
        if (simpleProgressDialog != null) {
            simpleProgressDialog.setDialogCustomListener(null);
        }
        SimpleProgressDialog.a(this.n);
        LinkButtonOnClickListenerImpl linkButtonOnClickListenerImpl = this.o;
        if (linkButtonOnClickListenerImpl != null) {
            SimpleProgressDialog.a(linkButtonOnClickListenerImpl.f13594a);
        }
        super.onDestroy();
    }
}
