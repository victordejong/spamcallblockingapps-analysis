package com.callapp.contacts.activity.missedcall.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseCallAppAdapter;
import com.callapp.contacts.activity.base.BaseCallAppFragment;
import com.callapp.contacts.activity.interfaces.ContactItemViewEvents;
import com.callapp.contacts.activity.interfaces.OnMissedCallReminderMenuClickListener;
import com.callapp.contacts.activity.missedcall.MissedCallManager;
import com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryAdapter;
import com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryItem;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.DialogPopup;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.objectbox.CallReminderFrequentData;
import com.callapp.contacts.popup.OptInWithTopImagePopup;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.AndroidUtils;
import com.callapp.contacts.util.BaseAdTransparentActivity;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CallLogUtils;
import com.callapp.contacts.util.ListsUtils;
import com.callapp.contacts.util.SmsUtils;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.workers.MissedCallSummaryDailyWorker;
import com.callapp.framework.phone.Phone;
import com.callapp.framework.util.CollectionUtils;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity.class */
public abstract class BaseDaySummaryActivity extends BaseAdTransparentActivity implements MissedCallSummaryAdapter.onItemClick {

    /* renamed from: a  reason: collision with root package name */
    protected RecyclerView f13435a;

    /* renamed from: b  reason: collision with root package name */
    protected BaseCallAppAdapter f13436b;

    /* renamed from: c  reason: collision with root package name */
    private List<MissedCallSummaryItem> f13437c;

    /* renamed from: d  reason: collision with root package name */
    private MissedCallSummaryItem f13438d;
    private LinearLayout e;

    /* renamed from: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity$5  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5.class */
    class AnonymousClass5 implements View.OnLongClickListener {
        AnonymousClass5() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(Activity activity) {
            ListsUtils.a((Context) BaseDaySummaryActivity.this, PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw()), (BaseAdapterItemData) BaseDaySummaryActivity.this.f13438d, false, (ContactItemViewEvents) null);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b(Activity activity) {
            ListsUtils.a((Context) BaseDaySummaryActivity.this, PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw()), (BaseAdapterItemData) BaseDaySummaryActivity.this.f13438d, true, (ContactItemViewEvents) null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.a((Activity) BaseDaySummaryActivity.this);
            if (OptInWithTopImagePopup.b()) {
                OptInWithTopImagePopup.b(BaseDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseDaySummaryActivity$5$cJeRhuRx_hLwOglLMuljDSc5Aaw
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        BaseDaySummaryActivity.AnonymousClass5.this.b(activity);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseDaySummaryActivity$5$wIxLXXxXGonasoh9k8MahNlUF8U
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        BaseDaySummaryActivity.AnonymousClass5.this.a(activity);
                    }
                });
            } else {
                Phone a2 = PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw());
                BaseDaySummaryActivity baseDaySummaryActivity = BaseDaySummaryActivity.this;
                ListsUtils.a((Context) baseDaySummaryActivity, a2, (BaseAdapterItemData) baseDaySummaryActivity.f13438d, true, (ContactItemViewEvents) null);
            }
            BaseDaySummaryActivity.this.a();
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        this.e.setBackgroundColor(ThemeUtils.getColor(2131100145));
        finish();
    }

    static /* synthetic */ void b(BaseDaySummaryActivity baseDaySummaryActivity) {
        Phone a2 = PhoneManager.get().a(baseDaySummaryActivity.f13438d.getPhoneAsRaw());
        Iterator it2 = new CopyOnWriteArrayList(baseDaySummaryActivity.f13437c).iterator();
        r10 = 0;
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            MissedCallSummaryItem missedCallSummaryItem = (MissedCallSummaryItem) it2.next();
            if (PhoneManager.get().a(missedCallSummaryItem.getPhoneAsRaw()).equals(a2)) {
                baseDaySummaryActivity.f13437c.remove(missedCallSummaryItem);
                if (i >= baseDaySummaryActivity.f13437c.size()) {
                }
                if (CollectionUtils.b(baseDaySummaryActivity.f13437c)) {
                    MissedCallSummaryItem missedCallSummaryItem2 = baseDaySummaryActivity.f13437c.get(i);
                    baseDaySummaryActivity.f13438d = missedCallSummaryItem2;
                    missedCallSummaryItem2.setNeedToShowBorder(true);
                    baseDaySummaryActivity.f13436b.notifyDataSetChanged();
                }
                MissedCallManager.a(a2, CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                EventBusManager.f14368a.c(OnMissedCallReminderMenuClickListener.f12954a, a2);
            } else {
                i++;
            }
        }
        if (CollectionUtils.a(baseDaySummaryActivity.f13437c)) {
            baseDaySummaryActivity.a();
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryAdapter.onItemClick
    public final void a(MissedCallSummaryItem missedCallSummaryItem) {
        this.f13438d = missedCallSummaryItem;
    }

    public abstract String getAnalyticsTag();

    public abstract String getAnalyticsViewTag();

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558899;
    }

    public abstract String getSubTitleString(int i);

    @Override // com.callapp.contacts.util.BaseTransparentActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getThemeResId() {
        return ThemeUtils.getCallScreenTransparentTheme();
    }

    protected abstract String getTitleText();

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(getAnalyticsViewTag());
        this.e = (LinearLayout) findViewById(2131364033);
        findViewById(2131363457).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Close one item clicked");
                BaseDaySummaryActivity.b(BaseDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListsUtils.a(BaseDaySummaryActivity.this, PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw()), BaseDaySummaryActivity.this.f13438d, ContactUtils.a(PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw()), BaseDaySummaryActivity.this.f13438d.getContactId()), (ContactItemViewEvents) null);
                AnalyticsManager.get().a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use call button");
                BaseDaySummaryActivity.this.a();
            }
        });
        findViewById(2131362375).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Close all clicked");
                BaseDaySummaryActivity.this.a();
            }
        });
        findViewById(2131363456).setOnLongClickListener(new AnonymousClass5());
        findViewById(2131363460).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Phone a2 = PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw());
                if (a2 != null && a2.isNotEmpty() && !CallLogUtils.b(a2.getRawNumber())) {
                    SmsUtils.c(BaseDaySummaryActivity.this, a2, null);
                    AnalyticsManager.get().a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use SMS button");
                    BaseDaySummaryActivity.this.a();
                }
            }
        });
        findViewById(2131363459).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((AddCallReminderAction) ActionsManager.get().a(AddCallReminderAction.class)).b(CallAppApplication.get(), ContactUtils.a(PhoneManager.get().a(BaseDaySummaryActivity.this.f13438d.getPhoneAsRaw())), null);
                AnalyticsManager.get().a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use call reminder");
                BaseDaySummaryActivity.this.a();
            }
        });
        Intent intent = getIntent();
        this.f13437c = intent.getParcelableArrayListExtra(MissedCallSummaryDailyWorker.f17041a.getYESTERDAY_MISSED_CALL_LIST());
        int intExtra = intent.getIntExtra(MissedCallSummaryDailyWorker.f17041a.getYESTERDAY_MISSED_CALL_TOTAL_NUMBER(), 0);
        if (CollectionUtils.b(this.f13437c)) {
            this.f13438d = this.f13437c.get(0);
            RecyclerView recyclerView = (RecyclerView) findViewById(2131363286);
            this.f13435a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
            this.f13435a.setHasFixedSize(true);
            TextView textView = (TextView) findViewById(2131364130);
            textView.setText(getTitleText());
            textView.setAllCaps(true);
            LinearLayout linearLayout = (LinearLayout) findViewById(2131364536);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(2131363162);
            LinearLayout linearLayout3 = (LinearLayout) findViewById(2131362521);
            if (ThemeUtils.isThemeLight()) {
                textView.setTextColor(ThemeUtils.getColor(2131099922));
                ViewUtils.c(linearLayout, 2131232241, ThemeUtils.getColor(2131100228));
                ViewUtils.c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099921));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131100228));
            } else {
                textView.setTextColor(ThemeUtils.getColor(2131100228));
                ViewUtils.c(linearLayout, 2131232241, ThemeUtils.getColor(2131099918));
                ViewUtils.c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099819));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131099918));
            }
            TextView textView2 = (TextView) findViewById(2131363464);
            textView2.setText(Activities.getString(2131887199));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            ((TextView) findViewById(2131364013)).setText(getSubTitleString(intExtra));
            BaseCallAppAdapter baseCallAppAdapter = this.f13436b;
            if (baseCallAppAdapter == null) {
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (Activities.a((Activity) BaseDaySummaryActivity.this)) {
                            BaseDaySummaryActivity baseDaySummaryActivity = BaseDaySummaryActivity.this;
                            baseDaySummaryActivity.f13436b = new MissedCallSummaryAdapter(null, baseDaySummaryActivity.f13437c, BaseDaySummaryActivity.this);
                            BaseDaySummaryActivity.this.f13435a.setAdapter(BaseDaySummaryActivity.this.f13436b);
                            return;
                        }
                        CLog.a(BaseCallAppFragment.class.getSimpleName());
                    }
                });
            } else {
                baseCallAppAdapter.setData(this.f13437c);
            }
        } else {
            finish();
        }
        initAd();
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, getAnalyticsViewTag());
        super.onDestroy();
    }
}
