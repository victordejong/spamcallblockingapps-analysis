package com.callapp.contacts.activity.analytics.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import androidx.fragment.app.q;
import androidx.fragment.app.s;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.analytics.cards.FirstTimeDialog;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment;
import com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity;
import com.callapp.contacts.activity.contact.details.PresentersContainer;
import com.callapp.contacts.event.bus.EventBus;
import com.callapp.contacts.event.bus.EventType;
import com.callapp.contacts.event.listener.DestroyListener;
import com.callapp.contacts.event.listener.PauseListener;
import com.callapp.contacts.event.listener.ResumeListener;
import com.callapp.contacts.manager.PhoneVerifierManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.manager.popup.PopupManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.popup.contact.AdapterIconAndText;
import com.callapp.contacts.popup.contact.AdapterText;
import com.callapp.contacts.popup.contact.DialogList;
import com.callapp.contacts.popup.contact.DialogSimpleMessage;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.tabs.TabLayout;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/InsightActivity.class */
public class InsightActivity extends BaseSwipeableActivity implements BaseInsightsFragment.CardLoaded, OnNewTabSelected, TabLayout.c {

    /* renamed from: a  reason: collision with root package name */
    String f11052a;

    /* renamed from: d  reason: collision with root package name */
    private final EventBus f11053d = new EventBus();
    private int e = 0;
    private boolean f;

    @Override // com.callapp.contacts.activity.analytics.ui.BaseInsightsFragment.CardLoaded
    public final void a() {
        if (this.e == 0) {
            if (Prefs.gJ.get().booleanValue()) {
                Prefs.gJ.set(Boolean.FALSE);
                PopupManager.get().a(this, new FirstTimeDialog());
            }
            this.f11053d.a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f10898a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.STATISTICS, false);
            return;
        }
        this.f11053d.a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f10898a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.INSIGHTS, false);
    }

    @Override // com.google.android.material.tabs.TabLayout.b
    public final void a(TabLayout.f fVar) {
        int i;
        int i2;
        if (Prefs.gQ.get().booleanValue()) {
            i2 = ThemeUtils.getColor(2131100228);
            i = ThemeUtils.getColor(2131100228);
            Prefs.gQ.set(Boolean.FALSE);
        } else {
            i2 = ThemeUtils.getColor(2131099786);
            i = ThemeUtils.getColor(2131100228);
        }
        this.a_.setTabTextColors(i2, i);
        this.e = fVar.e;
        this.f11053d.a((EventType<L, EventType<OnNewTabSelected, Object>>) OnNewTabSelected.f11058b, (EventType<OnNewTabSelected, Object>) null, false);
        a();
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void a(String str) {
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void b() {
        d();
    }

    @Override // com.google.android.material.tabs.TabLayout.b
    public final void b(TabLayout.f fVar) {
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    public final void c() {
        a((AnimationListenerAdapter) null);
    }

    @Override // com.google.android.material.tabs.TabLayout.b
    public final void c(TabLayout.f fVar) {
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public int getActivityTitleResource() {
        return 2131887057;
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public String getAnalyticsCategory() {
        return Constants.INSIGHTS;
    }

    public BaseInsightsFragment.CardLoaded getCardLoadedListener() {
        return this;
    }

    public EventBus getEventBus() {
        return this.f11053d;
    }

    public q getViewPagerAdapter() {
        return new InsightsPagerAdapter(getSupportFragmentManager(), this.f, this.f11052a);
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.c getViewPagerOnTabSelectedListener() {
        return this;
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
            if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH.name())) {
                PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
            } else if (stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
                PhoneVerifierManager.get().a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.INSIGHT_SCREEN);
        this.f = getIntent().getBooleanExtra(Constants.ENTER_FROM_BOTTOM_BAR, true);
        this.f11052a = getIntent().getStringExtra(Payload.SOURCE);
        if (!this.f) {
            AnalyticsManager.get().a(Constants.INSIGHTS, "ViewInsightsStatsTab", "contactPriority: ".concat(String.valueOf(getIntent().getIntExtra(Constants.CARD_PRIORITY, 0))), 0.0d, Payload.SOURCE, this.f11052a);
        }
        a(getViewPagerAdapter());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623942, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f11053d.a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f14378d, (EventType<DestroyListener, Object>) null, false);
        this.f11053d.a();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INSIGHT_SCREEN, 0.0d, Payload.SOURCE, this.f11052a);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.analytics.ui.OnNewTabSelected
    public void onNewSelected() {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() != 2131363270) {
            return super.onOptionsItemSelected(menuItem);
        }
        final DialogList dialogList = new DialogList(null);
        ArrayList arrayList = new ArrayList();
        arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231410, 2131886558));
        AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
        adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1
            @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
            public void onRowClicked(int i) {
                dialogList.dismiss();
                if (i == 2131886558) {
                    PopupManager.get().a(InsightActivity.this, new DialogSimpleMessage(Activities.getString(2131886558), Activities.getString(2131886559), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            AnalyticsDataManager.f();
                            if (InsightActivity.this.f11053d == null) {
                                return;
                            }
                            if (InsightActivity.this.e == 0) {
                                InsightActivity.this.f11053d.a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f10898a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.STATISTICS, false);
                            } else {
                                InsightActivity.this.f11053d.a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f10898a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.INSIGHTS, false);
                            }
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }));
                }
            }
        });
        dialogList.setAdapter(adapterIconAndText);
        PopupManager.get().a(this, dialogList);
        return true;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        this.f11053d.a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f14379a, (EventType<PauseListener, Object>) null, false);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f11053d.a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f14380d, (EventType<ResumeListener, Object>) null, false);
    }

    @Override // android.app.Activity
    public void recreate() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        List<Fragment> f = supportFragmentManager.f2186b.f();
        if (CollectionUtils.b(f)) {
            s a2 = supportFragmentManager.a();
            for (Fragment fragment : f) {
                if (StringUtils.g(fragment.getTag(), "analytics_graph")) {
                    a2.a(fragment);
                }
            }
            a2.d();
        }
        super.recreate();
    }
}
