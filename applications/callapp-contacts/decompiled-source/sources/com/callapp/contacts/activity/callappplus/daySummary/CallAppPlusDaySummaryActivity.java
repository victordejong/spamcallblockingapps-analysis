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

    /* renamed from: a  reason: collision with root package name */
    protected RecyclerView f11343a;

    /* renamed from: b  reason: collision with root package name */
    protected BaseCallAppAdapter f11344b;

    /* renamed from: c  reason: collision with root package name */
    List<CallAppPlusSummaryItem> f11345c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private CallAppPlusSummaryItem f11346d;
    private LinearLayout e;

    /* renamed from: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity$4  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$4.class */
    class AnonymousClass4 implements View.OnLongClickListener {
        AnonymousClass4() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Activity activity) {
            ListsUtils.a((Context) CallAppPlusDaySummaryActivity.this, PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhoneAsRaw()), (BaseAdapterItemData) CallAppPlusDaySummaryActivity.this.f11346d, false, (ContactItemViewEvents) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Activity activity) {
            ListsUtils.a((Context) CallAppPlusDaySummaryActivity.this, PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhoneAsRaw()), (BaseAdapterItemData) CallAppPlusDaySummaryActivity.this.f11346d, true, (ContactItemViewEvents) null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.a((Activity) CallAppPlusDaySummaryActivity.this);
            if (OptInWithTopImagePopup.b()) {
                OptInWithTopImagePopup.b(CallAppPlusDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$4$F0x4ZbN5hZuLJjQlv19S_KUv4_k
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        CallAppPlusDaySummaryActivity.AnonymousClass4.this.b(activity);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$4$IVTgIq_8RzPmEno4Rv6H628KxC0
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        CallAppPlusDaySummaryActivity.AnonymousClass4.this.a(activity);
                    }
                });
            } else {
                Phone a2 = PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhone().getRawNumber());
                CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity = CallAppPlusDaySummaryActivity.this;
                ListsUtils.a((Context) callAppPlusDaySummaryActivity, a2, (BaseAdapterItemData) callAppPlusDaySummaryActivity.f11346d, true, (ContactItemViewEvents) null);
            }
            CallAppPlusDaySummaryActivity.a(CallAppPlusDaySummaryActivity.this);
            return false;
        }
    }

    /* renamed from: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity$5  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callappplus/daySummary/CallAppPlusDaySummaryActivity$5.class */
    class AnonymousClass5 implements View.OnClickListener {
        AnonymousClass5() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Activity activity) {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            final IncognitoContactsManager incognitoContactsManager = new IncognitoContactsManager();
            final ContactData a2 = ContactUtils.a(CallAppPlusDaySummaryActivity.this.f11346d.getPhone());
            if (OptInWithTopImagePopup.a()) {
                OptInWithTopImagePopup.a(CallAppPlusDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary._$$Lambda$CallAppPlusDaySummaryActivity$5$plE6AsynFpg_OWlMYNIA2PHJv3o
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        IncognitoContactsManager.this.c(a2);
                    }
                }, _$$Lambda$CallAppPlusDaySummaryActivity$5$37rb8UkKA5yt6i5JIGlHUHP5pN4.INSTANCE);
            } else {
                incognitoContactsManager.c(a2);
            }
            AnalyticsManager.get().a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use add incognito");
        }
    }

    static /* synthetic */ void a(CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity) {
        callAppPlusDaySummaryActivity.e.setBackgroundColor(ThemeUtils.getColor(2131100145));
        callAppPlusDaySummaryActivity.finish();
    }

    @Override // com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusSummaryAdapter.onItemClick
    public final void a(CallAppPlusSummaryItem callAppPlusSummaryItem) {
        this.f11346d = callAppPlusSummaryItem;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.p;
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
        AnalyticsManager.get().b(Constants.CALLAPP_PLUS_DAY_SUMMARY_SCREEN);
        this.e = (LinearLayout) findViewById(2131364033);
        findViewById(2131363457).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Close one item clicked");
                CallAppPlusDaySummaryActivity.a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListsUtils.a(CallAppPlusDaySummaryActivity.this, PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhone().getRawNumber()), CallAppPlusDaySummaryActivity.this.f11346d, ContactUtils.a(PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhoneAsRaw()), CallAppPlusDaySummaryActivity.this.f11346d.getContactId()), (ContactItemViewEvents) null);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use call button");
                CallAppPlusDaySummaryActivity.a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131362375).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Close all clicked");
                CallAppPlusDaySummaryActivity.a(CallAppPlusDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnLongClickListener(new AnonymousClass4());
        findViewById(2131363458).setOnClickListener(new AnonymousClass5());
        findViewById(2131363455).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ContactData a2 = ContactUtils.a(PhoneManager.get().a(CallAppPlusDaySummaryActivity.this.f11346d.getPhone().getRawNumber()));
                AndroidUtils.a(view, 1);
                AnalyticsManager.get().a(Constants.CALLAPP_PLUS_DAY_SUMMARY_OVERLAY, "Use add contact");
                CallAppPlusDaySummaryActivity.this.startActivity(ContactUtils.a(a2, true));
            }
        });
        ArrayList parcelableArrayListExtra = getIntent().getParcelableArrayListExtra(CallAppPlusSummaryDailyWorker.f17031a.getYESTERDAY_CALLAPP_PLUS_LIST());
        this.f11345c = parcelableArrayListExtra;
        if (CollectionUtils.b(parcelableArrayListExtra)) {
            this.f11346d = this.f11345c.get(0);
            RecyclerView recyclerView = (RecyclerView) findViewById(2131362242);
            this.f11343a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
            this.f11343a.setHasFixedSize(true);
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
                ViewUtils.c(linearLayout, 2131232241, ThemeUtils.getColor(2131100228));
                ViewUtils.c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099921));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131100228));
            } else {
                ViewUtils.c(linearLayout, 2131232241, ThemeUtils.getColor(2131099918));
                ViewUtils.c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099819));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131099918));
            }
            TextView textView3 = (TextView) findViewById(2131363464);
            textView3.setText(Activities.getString(2131887199));
            textView3.setTextColor(ThemeUtils.getColor(2131100140));
            BaseCallAppAdapter baseCallAppAdapter = this.f11344b;
            if (baseCallAppAdapter == null) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callappplus.daySummary.CallAppPlusDaySummaryActivity.7
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Activities.a((Activity) CallAppPlusDaySummaryActivity.this)) {
                            CallAppPlusDaySummaryActivity callAppPlusDaySummaryActivity = CallAppPlusDaySummaryActivity.this;
                            callAppPlusDaySummaryActivity.f11344b = new CallAppPlusSummaryAdapter(null, callAppPlusDaySummaryActivity.f11345c, CallAppPlusDaySummaryActivity.this);
                            CallAppPlusDaySummaryActivity.this.f11343a.setAdapter(CallAppPlusDaySummaryActivity.this.f11344b);
                            return;
                        }
                        CLog.a(BaseCallAppFragment.class.getSimpleName());
                    }
                });
            } else {
                baseCallAppAdapter.setData(this.f11345c);
            }
        } else {
            finish();
        }
        initAd();
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALLAPP_PLUS_DAY_SUMMARY_SCREEN);
    }
}
