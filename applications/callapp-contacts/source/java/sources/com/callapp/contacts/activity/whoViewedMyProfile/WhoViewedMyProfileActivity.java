package com.callapp.contacts.activity.whoViewedMyProfile;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.AbstractC1268u;
import androidx.lifecycle.C1232ab;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.marketplace.planPage.PlanPageActivity;
import com.callapp.contacts.activity.settings.SettingsActivity;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.UserProfileManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.SectionData;
import com.callapp.contacts.model.objectbox.ProfileViewedData;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.ProfilePictureView;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/whoViewedMyProfile/WhoViewedMyProfileActivity.class */
public class WhoViewedMyProfileActivity extends BaseNoTitleActivity implements AbstractC1268u<List<ProfileViewedData>> {

    /* renamed from: a */
    private WhoViewedMyProfileAdapter f24619a;

    /* renamed from: b */
    private WhoViewedMyProfileViewModel f24620b;

    /* renamed from: d */
    private ProgressBar f24622d;

    /* renamed from: h */
    private Map<Integer, SectionData> f24626h;

    /* renamed from: c */
    private List<WhoViewedMyProfileDataItem> f24621c = new ArrayList();

    /* renamed from: e */
    private boolean f24623e = false;

    /* renamed from: f */
    private boolean f24624f = false;

    /* renamed from: g */
    private final ScrollRecyclerStateTracker f24625g = new ScrollRecyclerStateTracker();

    /* renamed from: j */
    private final InvalidateDataListener f24627j = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$ZYJVGyz1kaxlBfmCZ0zpOO_IbgQ
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public final void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            WhoViewedMyProfileActivity.this.m29367a(callAppDataType);
        }
    };

    /* renamed from: a */
    private void m29369a() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$1G1plhRsvsIPwd8y4GDcbNaRgjQ
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.m29365c();
            }
        });
    }

    /* renamed from: a */
    public /* synthetic */ void m29367a(EventBusManager.CallAppDataType callAppDataType) {
        if (callAppDataType == EventBusManager.CallAppDataType.CONTACTS) {
            this.f24623e = true;
            if (!this.f24624f) {
                return;
            }
            m29369a();
        }
    }

    /* renamed from: b */
    public void m29366b() {
        if ((Prefs.f26339cJ.get().booleanValue() && UserProfileManager.get().getUserPhoneOrFallbackPhone().equals(UserProfileManager.get().getUserVerifiedPhone()) && WhoViewedMyProfileDataManager.m29349g() > 0) || Prefs.f26599hE.get().booleanValue()) {
            findViewById(2131362967).setVisibility(8);
            return;
        }
        findViewById(2131362967).setVisibility(0);
        ConstraintLayout constraintLayout = (ConstraintLayout) findViewById(2131362967);
        if (ThemeUtils.isThemeLight()) {
            constraintLayout.setBackgroundColor(ThemeUtils.getColor(2131100144));
        } else {
            constraintLayout.setBackgroundColor(ThemeUtils.getColor(2131100143));
        }
        TextView textView = (TextView) findViewById(2131364533);
        TextView textView2 = (TextView) findViewById(2131364532);
        FrameLayout frameLayout = (FrameLayout) findViewById(2131364504);
        ProfilePictureView profilePictureView = (ProfilePictureView) findViewById(2131364494);
        TextView textView3 = (TextView) findViewById(2131363550);
        TextView textView4 = (TextView) findViewById(2131364503);
        textView2.setTextColor(ThemeUtils.getColor(2131100108));
        textView.setTextColor(ThemeUtils.getColor(2131100140));
        textView3.setText(Activities.getString(2131888233));
        textView4.setText(Activities.getString(2131888237));
        if (this.f24621c.size() > 0) {
            if (this.f24621c.size() == 1) {
                textView.setText(Activities.m27697a(2131888236, Integer.valueOf(this.f24621c.size())));
            } else {
                textView.setText(Activities.m27697a(2131888235, Integer.valueOf(this.f24621c.size())));
            }
            textView2.setText(Activities.getString(2131888234));
        } else {
            textView.setText(StringUtils.m26049a(Activities.getString(2131888230), new char[0]));
            textView2.setText(Activities.getString(2131888229));
        }
        if (Prefs.f26339cJ.get().booleanValue()) {
            textView3.setVisibility(8);
        } else {
            textView3.setVisibility(0);
        }
        if (UserProfileManager.get().getUserPhoneOrFallbackPhone().equals(UserProfileManager.get().getUserVerifiedPhone())) {
            frameLayout.setVisibility(8);
            textView4.setVisibility(8);
        } else {
            frameLayout.setVisibility(0);
            textView4.setVisibility(0);
            UserProfileManager.get().m28463a(profilePictureView, true);
            textView.setText(Activities.getString(2131888232));
            textView2.setText(Activities.getString(2131888231));
        }
        textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent(WhoViewedMyProfileActivity.this, PlanPageActivity.class);
                intent.putExtra("PLAN_PAGE_SOURCE", "whoViewedMyProfile");
                Activities.m27656b(WhoViewedMyProfileActivity.this, intent);
            }
        });
        textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneVerifierManager.get();
                PhoneVerifierManager.m28522a((Activity) WhoViewedMyProfileActivity.this, false);
            }
        });
        frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                PhoneVerifierManager.get();
                PhoneVerifierManager.m28522a((Activity) WhoViewedMyProfileActivity.this, false);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ void m29365c() {
        List<ProfileViewedData> allViewers = WhoViewedMyProfileDataManager.getAllViewers();
        this.f24626h = WhoViewMyProfileUtils.m29371a(this.f24621c);
        this.f24621c.clear();
        if (CollectionUtils.m26068b(allViewers)) {
            boolean z = Prefs.f26339cJ.get().booleanValue() || Prefs.f26599hE.get().booleanValue();
            for (int i = 0; i < allViewers.size(); i++) {
                this.f24621c.add(new WhoViewedMyProfileDataItem(allViewers.get(i), z));
            }
        }
        if (!Prefs.f26339cJ.get().booleanValue() && !Prefs.f26599hE.get().booleanValue() && !this.f24621c.isEmpty()) {
            List<WhoViewedMyProfileDataItem> list = this.f24621c;
            WhoViewedMyProfileDataItem whoViewedMyProfileDataItem = list.get(list.size() - 1);
            List<WhoViewedMyProfileDataItem> list2 = this.f24621c;
            list2.set(list2.size() - 1, this.f24621c.get(0));
            this.f24621c.set(0, whoViewedMyProfileDataItem);
            this.f24621c.get(0).f24641g = true;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$O_NyoL7G7rs7NPq8813zJu7iVtA
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.m29364d();
            }
        });
    }

    /* renamed from: d */
    public /* synthetic */ void m29364d() {
        this.f24623e = false;
        m29366b();
        this.f24622d.setVisibility(8);
        this.f24619a.setData((List) this.f24621c);
        this.f24622d.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$UNKoIj_kthrVzqePoaZXctDx3vk
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.m29363e();
            }
        }, 750L);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* renamed from: e */
    public /* synthetic */ void m29363e() {
        char c = 0;
        for (WhoViewedMyProfileDataItem whoViewedMyProfileDataItem : this.f24621c) {
            if (whoViewedMyProfileDataItem.f24637c > c) {
                c = whoViewedMyProfileDataItem.f24637c;
            }
        }
        Prefs.f26598hD.set(Long.valueOf(c));
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558862;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i == 7453 && i2 == -1) {
            String stringExtra = intent.getStringExtra("RESULT_USER_PHONE_NUMBER");
            String stringExtra2 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN");
            String stringExtra3 = intent.getStringExtra("RESULT_USER_CALLAPP_TOKEN_TYPE");
            if (stringExtra3 == null) {
                return;
            }
            PhoneVerifierManager.get().f25760a = new PhoneVerifierManager.PhoneVerifierCallback() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.5
                @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
                /* renamed from: a */
                public final void mo26376a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
                    WhoViewedMyProfileActivity.this.m29366b();
                }
            };
            if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
            } else if (!stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
            } else {
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
            }
        }
    }

    @Override // androidx.lifecycle.AbstractC1268u
    public /* synthetic */ void onChanged(List<ProfileViewedData> list) {
        m29369a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (getIntent() != null && getIntent().getExtras() != null && getIntent().getBooleanExtra(Constants.WHO_VIEWED_MY_NOTIFICATION_CLICKED, false)) {
            AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfile_notification_open");
        }
        WhoViewedMyProfileDataManager.m29352d();
        AnalyticsManager.get().m28450a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfileScreen");
        Prefs.f26596hB.set(0);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363648);
        this.f24625g.setRecyclerView(recyclerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        WhoViewedMyProfileAdapter whoViewedMyProfileAdapter = this.f24619a;
        if (whoViewedMyProfileAdapter == null) {
            WhoViewedMyProfileAdapter whoViewedMyProfileAdapter2 = new WhoViewedMyProfileAdapter(this.f24621c, this.f24625g);
            this.f24619a = whoViewedMyProfileAdapter2;
            recyclerView.setAdapter(whoViewedMyProfileAdapter2);
        } else {
            whoViewedMyProfileAdapter.setData((List) this.f24621c);
        }
        WhoViewedMyProfileViewModel whoViewedMyProfileViewModel = (WhoViewedMyProfileViewModel) new C1232ab(this).m43312a(WhoViewedMyProfileViewModel.class);
        this.f24620b = whoViewedMyProfileViewModel;
        whoViewedMyProfileViewModel.m29325a(CallAppApplication.get().getObjectBoxStore().m4727d(ProfileViewedData.class)).m43334a(this, this);
        this.f24622d = (ProgressBar) findViewById(2131363575);
        m29366b();
        View findViewById = findViewById(2131364561);
        if (ThemeUtils.isThemeLight()) {
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099921));
        } else {
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.f24627j);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131888228));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        Objects.requireNonNull(supportActionBar);
        supportActionBar.mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623943, menu);
        MenuItem findItem = menu.findItem(2131363270);
        if (findItem != null) {
            findItem.setVisible(Prefs.f26339cJ.get().booleanValue());
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.f24623e = false;
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.f24627j);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131363270) {
            final DialogList dialogList = new DialogList(null);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231593, 2131888215));
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231878, 2131887715));
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
            adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    dialogList.dismiss();
                    if (i == 2131888215) {
                        WhoViewedMyProfileDataManager.m29350f();
                    }
                    if (i == 2131887715) {
                        WhoViewedMyProfileActivity.this.startActivity(new Intent(WhoViewedMyProfileActivity.this, SettingsActivity.class).putExtra("notifications_settings", true));
                    }
                }
            });
            dialogList.setAdapter(adapterIconAndText);
            PopupManager.get().m28209a(this, dialogList);
            return true;
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f24624f = false;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f24624f = true;
        if (this.f24623e) {
            m29369a();
        }
    }
}
