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
import androidx.lifecycle.ab;
import androidx.lifecycle.u;
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
public class WhoViewedMyProfileActivity extends BaseNoTitleActivity implements u<List<ProfileViewedData>> {

    /* renamed from: a  reason: collision with root package name */
    private WhoViewedMyProfileAdapter f14003a;

    /* renamed from: b  reason: collision with root package name */
    private WhoViewedMyProfileViewModel f14004b;

    /* renamed from: d  reason: collision with root package name */
    private ProgressBar f14006d;
    private Map<Integer, SectionData> h;

    /* renamed from: c  reason: collision with root package name */
    private List<WhoViewedMyProfileDataItem> f14005c = new ArrayList();
    private boolean e = false;
    private boolean f = false;
    private final ScrollRecyclerStateTracker g = new ScrollRecyclerStateTracker();
    private final InvalidateDataListener j = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$ZYJVGyz1kaxlBfmCZ0zpOO_IbgQ
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public final void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            WhoViewedMyProfileActivity.this.a(callAppDataType);
        }
    };

    private void a() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$1G1plhRsvsIPwd8y4GDcbNaRgjQ
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.c();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(EventBusManager.CallAppDataType callAppDataType) {
        if (callAppDataType == EventBusManager.CallAppDataType.CONTACTS) {
            this.e = true;
            if (this.f) {
                a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if ((!Prefs.cJ.get().booleanValue() || !UserProfileManager.get().getUserPhoneOrFallbackPhone().equals(UserProfileManager.get().getUserVerifiedPhone()) || WhoViewedMyProfileDataManager.g() <= 0) && !Prefs.hE.get().booleanValue()) {
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
            if (this.f14005c.size() > 0) {
                if (this.f14005c.size() == 1) {
                    textView.setText(Activities.a(2131888236, Integer.valueOf(this.f14005c.size())));
                } else {
                    textView.setText(Activities.a(2131888235, Integer.valueOf(this.f14005c.size())));
                }
                textView2.setText(Activities.getString(2131888234));
            } else {
                textView.setText(StringUtils.a(Activities.getString(2131888230), new char[0]));
                textView2.setText(Activities.getString(2131888229));
            }
            if (Prefs.cJ.get().booleanValue()) {
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
                UserProfileManager.get().a(profilePictureView, true);
                textView.setText(Activities.getString(2131888232));
                textView2.setText(Activities.getString(2131888231));
            }
            textView3.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    Intent intent = new Intent(WhoViewedMyProfileActivity.this, PlanPageActivity.class);
                    intent.putExtra("PLAN_PAGE_SOURCE", "whoViewedMyProfile");
                    Activities.b(WhoViewedMyProfileActivity.this, intent);
                }
            });
            textView4.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.3
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PhoneVerifierManager.get();
                    PhoneVerifierManager.a((Activity) WhoViewedMyProfileActivity.this, false);
                }
            });
            frameLayout.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.4
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    PhoneVerifierManager.get();
                    PhoneVerifierManager.a((Activity) WhoViewedMyProfileActivity.this, false);
                }
            });
            return;
        }
        findViewById(2131362967).setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c() {
        List<ProfileViewedData> allViewers = WhoViewedMyProfileDataManager.getAllViewers();
        this.h = WhoViewMyProfileUtils.a(this.f14005c);
        this.f14005c.clear();
        if (CollectionUtils.b(allViewers)) {
            boolean z = Prefs.cJ.get().booleanValue() || Prefs.hE.get().booleanValue();
            for (int i = 0; i < allViewers.size(); i++) {
                this.f14005c.add(new WhoViewedMyProfileDataItem(allViewers.get(i), z));
            }
        }
        if (!Prefs.cJ.get().booleanValue() && !Prefs.hE.get().booleanValue() && !this.f14005c.isEmpty()) {
            List<WhoViewedMyProfileDataItem> list = this.f14005c;
            WhoViewedMyProfileDataItem whoViewedMyProfileDataItem = list.get(list.size() - 1);
            List<WhoViewedMyProfileDataItem> list2 = this.f14005c;
            list2.set(list2.size() - 1, this.f14005c.get(0));
            this.f14005c.set(0, whoViewedMyProfileDataItem);
            this.f14005c.get(0).g = true;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$O_NyoL7G7rs7NPq8813zJu7iVtA
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.d();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.e = false;
        b();
        this.f14006d.setVisibility(8);
        this.f14003a.setData((List) this.f14005c);
        this.f14006d.postDelayed(new Runnable() { // from class: com.callapp.contacts.activity.whoViewedMyProfile._$$Lambda$WhoViewedMyProfileActivity$UNKoIj_kthrVzqePoaZXctDx3vk
            @Override // java.lang.Runnable
            public final void run() {
                WhoViewedMyProfileActivity.this.e();
            }
        }, 750L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        long j = 0;
        for (WhoViewedMyProfileDataItem whoViewedMyProfileDataItem : this.f14005c) {
            if (whoViewedMyProfileDataItem.f14016c > j) {
                j = whoViewedMyProfileDataItem.f14016c;
            }
        }
        Prefs.hD.set(Long.valueOf(j));
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
            if (stringExtra3 != null) {
                PhoneVerifierManager.get().f14919a = new PhoneVerifierManager.PhoneVerifierCallback() { // from class: com.callapp.contacts.activity.whoViewedMyProfile.WhoViewedMyProfileActivity.5
                    @Override // com.callapp.contacts.manager.PhoneVerifierManager.PhoneVerifierCallback
                    public final void a(Phone phone, String str, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES authenticators_types) {
                        WhoViewedMyProfileActivity.this.b();
                    }
                };
                if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                    PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
                } else if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
                    PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
                }
            }
        }
    }

    @Override // androidx.lifecycle.u
    public /* synthetic */ void onChanged(List<ProfileViewedData> list) {
        a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(getIntent() == null || getIntent().getExtras() == null || !getIntent().getBooleanExtra(Constants.WHO_VIEWED_MY_NOTIFICATION_CLICKED, false))) {
            AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfile_notification_open");
        }
        WhoViewedMyProfileDataManager.d();
        AnalyticsManager.get().a(Constants.WHO_VIEWED_MY_PROFILE_CATEGORY, "ViewProfileScreen");
        Prefs.hB.set(0);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363648);
        this.g.setRecyclerView(recyclerView);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(new LinearLayoutManager(this, 1, false));
        WhoViewedMyProfileAdapter whoViewedMyProfileAdapter = this.f14003a;
        if (whoViewedMyProfileAdapter == null) {
            WhoViewedMyProfileAdapter whoViewedMyProfileAdapter2 = new WhoViewedMyProfileAdapter(this.f14005c, this.g);
            this.f14003a = whoViewedMyProfileAdapter2;
            recyclerView.setAdapter(whoViewedMyProfileAdapter2);
        } else {
            whoViewedMyProfileAdapter.setData((List) this.f14005c);
        }
        WhoViewedMyProfileViewModel whoViewedMyProfileViewModel = (WhoViewedMyProfileViewModel) new ab(this).a(WhoViewedMyProfileViewModel.class);
        this.f14004b = whoViewedMyProfileViewModel;
        whoViewedMyProfileViewModel.a(CallAppApplication.get().getObjectBoxStore().d(ProfileViewedData.class)).a(this, this);
        this.f14006d = (ProgressBar) findViewById(2131363575);
        b();
        View findViewById = findViewById(2131364561);
        if (ThemeUtils.isThemeLight()) {
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099921));
        } else {
            findViewById.setBackgroundColor(ThemeUtils.getColor(2131099819));
        }
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.j);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131888228));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        ActionBar supportActionBar = getSupportActionBar();
        Objects.requireNonNull(supportActionBar);
        supportActionBar.b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().a(true);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623943, menu);
        MenuItem findItem = menu.findItem(2131363270);
        if (findItem != null) {
            findItem.setVisible(Prefs.cJ.get().booleanValue());
        }
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.e = false;
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.j);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131363270) {
            return super.onOptionsItemSelected(menuItem);
        }
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
                    WhoViewedMyProfileDataManager.f();
                }
                if (i == 2131887715) {
                    WhoViewedMyProfileActivity.this.startActivity(new Intent(WhoViewedMyProfileActivity.this, SettingsActivity.class).putExtra("notifications_settings", true));
                }
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(this, dialogList);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
        this.f = false;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f = true;
        if (this.e) {
            a();
        }
    }
}
