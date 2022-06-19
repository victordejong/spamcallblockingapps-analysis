package com.callapp.contacts.activity.callappplus.daySummary;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity;
import com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryAdapter;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.IncognitoContactsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.contact.ContactData;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.BaseAdTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.workers.CallAppPlusSummaryDailyWorker;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity.class */
public class CallAppPlusDaySummaryActivity extends BaseAdTransparentActivity implements CallAppPlusSummaryAdapter.onItemClick {

    /* renamed from: a */
    protected RecyclerView f20649a;

    /* renamed from: b */
    protected BaseCallAppAdapter f20650b;

    /* renamed from: c */
    List<CallAppPlusSummaryItem> f20651c = new ArrayList();

    /* renamed from: d */
    private CallAppPlusSummaryItem f20652d;

    /* renamed from: e */
    private LinearLayout f20653e;

    /* renamed from: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity$4 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4.class */
    public class View$OnLongClickListenerC58804 implements View.OnLongClickListener {
        View$OnLongClickListenerC58804() {
            CallAppPlusDaySummaryActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m31379a(Activity activity) {
            ListsUtils.m27481a((Context) CallAppPlusDaySummaryActivity.this, PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhoneAsRaw()), (BaseAdapterItemData) CallAppPlusDaySummaryActivity.this.f20652d, false, (ContactItemViewEvents) null);
        }

        /* renamed from: b */
        public /* synthetic */ void m31378b(Activity activity) {
            ListsUtils.m27481a((Context) CallAppPlusDaySummaryActivity.this, PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhoneAsRaw()), (BaseAdapterItemData) CallAppPlusDaySummaryActivity.this.f20652d, true, (ContactItemViewEvents) null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.m27635a((Activity) CallAppPlusDaySummaryActivity.this);
            if (OptInWithTopImagePopup.m28052b()) {
                OptInWithTopImagePopup.m28051b(CallAppPlusDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$4$F0x4ZbN5hZuLJjQlv19S_KUv4_k
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        CallAppPlusDaySummaryActivity.View$OnLongClickListenerC58804.this.m31378b(activity);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$4$IVTgIq_8RzPmEno4Rv6H628KxC0
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        CallAppPlusDaySummaryActivity.View$OnLongClickListenerC58804.this.m31379a(activity);
                    }
                });
            } else {
                Phone m28239a = PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhone().getRawNumber());
                CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity = CallAppPlusDaySummaryActivity.this;
                ListsUtils.m27481a((Context) callAppPlusDaySummaryActivity, m28239a, (BaseAdapterItemData) callAppPlusDaySummaryActivity.f20652d, true, (ContactItemViewEvents) null);
            }
            CallAppPlusDaySummaryActivity.m31381a(CallAppPlusDaySummaryActivity.this);
            return false;
        }
    }

    /* renamed from: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity$5 */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5.class */
    class View$OnClickListenerC58815 implements View.OnClickListener {
        View$OnClickListenerC58815() {
            CallAppPlusDaySummaryActivity.this = r4;
        }

        /* renamed from: a */
        public static /* synthetic */ void m31377a(Activity activity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            final IncognitoContactsManager incognitoContactsManager = new IncognitoContactsManager();
            final ContactData m28327a = ContactUtils.m28327a(CallAppPlusDaySummaryActivity.this.f20652d.getPhone());
            if (OptInWithTopImagePopup.m28057a()) {
                OptInWithTopImagePopup.m28055a(CallAppPlusDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg_OWlMYNIA2PHJv3o
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        IncognitoContactsManager.this.m28654c(m28327a);
                    }
                }, C5888x1b8f2a61.INSTANCE);
            } else {
                incognitoContactsManager.m28654c(m28327a);
            }
            AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use add incognito");
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m31381a(CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity) {
        callAppPlusDaySummaryActivity.f20653e.setBackgroundColor(ThemeUtils.getColor(2131100145));
        callAppPlusDaySummaryActivity.finish();
    }

    @Override // com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryAdapter.onItemClick
    /* renamed from: a */
    public final void mo31375a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        this.f20652d = callAppPlusSummaryItem;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f25618f;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.f25628p;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getExperimentRemoteConfigName() {
        return "CallAppPlusSummarySmallExperiments";
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558522;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getPreferencesRemoteConfigName() {
        return "CallAppPlusSummaryAdCardPreferences";
    }

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getCallScreenTransparentTheme();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.CALLAPP_PLUS_DAY_SUMMARY_SCREEN);
        this.f20653e = (LinearLayout) findViewById(2131364033);
        findViewById(2131363457).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Close one item clicked");
                CallAppPlusDaySummaryActivity.m31381a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListsUtils.m27481a(CallAppPlusDaySummaryActivity.this, PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhone().getRawNumber()), CallAppPlusDaySummaryActivity.this.f20652d, ContactUtils.m28326a(PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhoneAsRaw()), CallAppPlusDaySummaryActivity.this.f20652d.getContactId()), (ContactItemViewEvents) null);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use call button");
                CallAppPlusDaySummaryActivity.m31381a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131362375).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Close all clicked");
                CallAppPlusDaySummaryActivity.m31381a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnLongClickListener(new View$OnLongClickListenerC58804());
        findViewById(2131363458).setOnClickListener(new View$OnClickListenerC58815());
        findViewById(2131363455).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactData m28327a = ContactUtils.m28327a(PhoneManager.get().m28239a(CallAppPlusDaySummaryActivity.this.f20652d.getPhone().getRawNumber()));
                AndroidUtils.m27630a(view, 1);
                AnalyticsManager.get().m28450a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use add contact");
                CallAppPlusDaySummaryActivity.this.startActivity(ContactUtils.m28328a(m28327a, true));
            }
        });
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(CallAppPlusSummaryDailyWorker.f29579a.getYESTERDAY_CALLAPP_PLUS_LIST());
        this.f20651c = parcelableArrayListExtra;
        if (CollectionUtils.m26068b(parcelableArrayListExtra)) {
            this.f20652d = this.f20651c.get(0);
            RecyclerView recyclerView = (RecyclerView) findViewById(2131362242);
            this.f20649a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
            this.f20649a.setHasFixedSize(true);
            TextView textView = (TextView) findViewById(2131364130);
            textView.setText(Activities.getString(2131886478));
            textView.setAllCaps(true);
            textView.setTextColor(ThemeUtils.getColor(2131099784));
            TextView textView2 = (TextView) findViewById(2131364013);
            textView2.setText(Activities.getString(2131886474));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            LinearLayout linearLayout = (LinearLayout) findViewById(2131364536);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(2131363162);
            LinearLayout linearLayout3 = (LinearLayout) findViewById(2131362521);
            if (ThemeUtils.isThemeLight()) {
                ViewUtils.m27294c(linearLayout, 2131232241, ThemeUtils.getColor(2131100228));
                ViewUtils.m27294c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099921));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131100228));
            } else {
                ViewUtils.m27294c(linearLayout, 2131232241, ThemeUtils.getColor(2131099918));
                ViewUtils.m27294c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099819));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131099918));
            }
            TextView textView3 = (TextView) findViewById(2131363464);
            textView3.setText(Activities.getString(2131887199));
            textView3.setTextColor(ThemeUtils.getColor(2131100140));
            BaseCallAppAdapter baseCallAppAdapter = this.f20650b;
            if (baseCallAppAdapter == null) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Activities.m27696a((Activity) CallAppPlusDaySummaryActivity.this)) {
                            CLog.m27606a(BaseCallAppFragment.class.getSimpleName());
                            return;
                        }
                        CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity = CallAppPlusDaySummaryActivity.this;
                        callAppPlusDaySummaryActivity.f20650b = new CallAppPlusSummaryAdapter(null, callAppPlusDaySummaryActivity.f20651c, CallAppPlusDaySummaryActivity.this);
                        CallAppPlusDaySummaryActivity.this.f20649a.setAdapter(CallAppPlusDaySummaryActivity.this.f20650b);
                    }
                });
            } else {
                baseCallAppAdapter.setData(this.f20651c);
            }
        } else {
            finish();
        }
        initAd();
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALLAPP_PLUS_DAY_SUMMARY_SCREEN);
    }
}
