package com.callapp.contacts.activity.analytics.p236ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import androidx.fragment.app.AbstractC1119q;
import androidx.fragment.app.AbstractC1121s;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentManager;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.common.authenticators.config.AuthenticatorsConfiguration;
import com.callapp.contacts.activity.analytics.cards.FirstTimeDialog;
import com.callapp.contacts.activity.analytics.data.AnalyticsDataManager;
import com.callapp.contacts.activity.analytics.data.UpdateAnalyticsCardEvent;
import com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment;
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
/* renamed from: com.callapp.contacts.activity.analytics.ui.InsightActivity */
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/analytics/ui/InsightActivity.class */
public class InsightActivity extends BaseSwipeableActivity implements BaseInsightsFragment.CardLoaded, OnNewTabSelected, TabLayout.AbstractC14773c {

    /* renamed from: a */
    String f20220a;

    /* renamed from: d */
    private final EventBus f20221d = new EventBus();

    /* renamed from: e */
    private int f20222e = 0;

    /* renamed from: f */
    private boolean f20223f;

    @Override // com.callapp.contacts.activity.analytics.p236ui.BaseInsightsFragment.CardLoaded
    /* renamed from: a */
    public final void mo31521a() {
        if (this.f20222e != 0) {
            this.f20221d.m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.INSIGHTS, false);
            return;
        }
        if (Prefs.f26551gJ.get().booleanValue()) {
            Prefs.f26551gJ.set(Boolean.FALSE);
            PopupManager.get().m28209a(this, new FirstTimeDialog());
        }
        this.f20221d.m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.STATISTICS, false);
    }

    @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
    /* renamed from: a */
    public final void mo10080a(TabLayout.C14778f c14778f) {
        int i;
        int i2;
        if (Prefs.f26558gQ.get().booleanValue()) {
            i2 = ThemeUtils.getColor(2131100228);
            i = ThemeUtils.getColor(2131100228);
            Prefs.f26558gQ.set(Boolean.FALSE);
        } else {
            i2 = ThemeUtils.getColor(2131099786);
            i = ThemeUtils.getColor(2131100228);
        }
        this.f20381a_.setTabTextColors(i2, i);
        this.f20222e = c14778f.f53960e;
        this.f20221d.m29046a((EventType<L, EventType<OnNewTabSelected, Object>>) OnNewTabSelected.f20228b, (EventType<OnNewTabSelected, Object>) null, false);
        mo31521a();
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: a */
    public final void mo26640a(String str) {
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: b */
    public final void mo26639b() {
        m31468d();
    }

    @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
    /* renamed from: b */
    public final void mo10079b(TabLayout.C14778f c14778f) {
    }

    @Override // com.callapp.contacts.widget.SearchAnimationToolbar.OnSearchQueryChangedListener
    /* renamed from: c */
    public final void mo26638c() {
        m31469a((AnimationListenerAdapter) null);
    }

    @Override // com.google.android.material.tabs.TabLayout.AbstractC14772b
    /* renamed from: c */
    public final void mo10078c(TabLayout.C14778f c14778f) {
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
        return this.f20221d;
    }

    public AbstractC1119q getViewPagerAdapter() {
        return new InsightsPagerAdapter(getSupportFragmentManager(), this.f20223f, this.f20220a);
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity
    public TabLayout.AbstractC14773c getViewPagerOnTabSelectedListener() {
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
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.SINCH);
            } else if (!stringExtra3.equals(AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP.name())) {
            } else {
                PhoneVerifierManager.get().m28519a(stringExtra, stringExtra2, AuthenticatorsConfiguration.AUTHENTICATORS_TYPES.CALLAPP);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.swipeable.BaseSwipeableActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.INSIGHT_SCREEN);
        this.f20223f = getIntent().getBooleanExtra(Constants.ENTER_FROM_BOTTOM_BAR, true);
        this.f20220a = getIntent().getStringExtra(Payload.SOURCE);
        if (!this.f20223f) {
            AnalyticsManager.get().mo28444a(Constants.INSIGHTS, "ViewInsightsStatsTab", "contactPriority: ".concat(String.valueOf(getIntent().getIntExtra(Constants.CARD_PRIORITY, 0))), 0.0d, Payload.SOURCE, this.f20220a);
        }
        m31470a(getViewPagerAdapter());
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        getMenuInflater().inflate(2131623942, menu);
        return super.onCreateOptionsMenu(menu);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        this.f20221d.m29046a((EventType<L, EventType<DestroyListener, Object>>) DestroyListener.f25148d, (EventType<DestroyListener, Object>) null, false);
        this.f20221d.m29050a();
        AnalyticsManager.get().mo28444a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.INSIGHT_SCREEN, 0.0d, Payload.SOURCE, this.f20220a);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.analytics.p236ui.OnNewTabSelected
    public void onNewSelected() {
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, android.app.Activity
    public boolean onOptionsItemSelected(MenuItem menuItem) {
        if (menuItem.getItemId() == 2131363270) {
            final DialogList dialogList = new DialogList(null);
            ArrayList arrayList = new ArrayList();
            arrayList.add(new AdapterIconAndText.ItemIconAndText(2131231410, 2131886558));
            AdapterIconAndText adapterIconAndText = new AdapterIconAndText(this, 2131558570, arrayList);
            adapterIconAndText.setListener(new AdapterText.AdapterEvents() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1
                @Override // com.callapp.contacts.popup.contact.AdapterText.AdapterEvents
                public void onRowClicked(int i) {
                    dialogList.dismiss();
                    if (i != 2131886558) {
                        return;
                    }
                    PopupManager.get().m28209a(InsightActivity.this, new DialogSimpleMessage(Activities.getString(2131886558), Activities.getString(2131886559), Activities.getString(2131888248), Activities.getString(2131887301), new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1.1
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                            AnalyticsDataManager.m31620f();
                            if (InsightActivity.this.f20221d != null) {
                                if (InsightActivity.this.f20222e == 0) {
                                    InsightActivity.this.f20221d.m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.STATISTICS, false);
                                } else {
                                    InsightActivity.this.f20221d.m29046a((EventType<L, EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>>) UpdateAnalyticsCardEvent.f19922a, (EventType<UpdateAnalyticsCardEvent, PresentersContainer.MODE>) PresentersContainer.MODE.INSIGHTS, false);
                                }
                            }
                        }
                    }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.analytics.ui.InsightActivity.1.2
                        @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                        public void onClickListener(Activity activity) {
                        }
                    }));
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
        this.f20221d.m29046a((EventType<L, EventType<PauseListener, Object>>) PauseListener.f25149a, (EventType<PauseListener, Object>) null, false);
        super.onPause();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f20221d.m29046a((EventType<L, EventType<ResumeListener, Object>>) ResumeListener.f25150d, (EventType<ResumeListener, Object>) null, false);
    }

    @Override // android.app.Activity
    public void recreate() {
        FragmentManager supportFragmentManager = getSupportFragmentManager();
        List<Fragment> m43544f = supportFragmentManager.f4210b.m43544f();
        if (CollectionUtils.m26068b(m43544f)) {
            AbstractC1121s m43765a = supportFragmentManager.m43765a();
            for (Fragment fragment : m43544f) {
                if (StringUtils.m26025g(fragment.getTag(), "analytics_graph")) {
                    m43765a.mo43539a(fragment);
                }
            }
            m43765a.mo43530d();
        }
        super.recreate();
    }
}
