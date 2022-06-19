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

    /* renamed from: a */
    protected RecyclerView f23867a;

    /* renamed from: b */
    protected BaseCallAppAdapter f23868b;

    /* renamed from: c */
    private List<MissedCallSummaryItem> f23869c;

    /* renamed from: d */
    private MissedCallSummaryItem f23870d;

    /* renamed from: e */
    private LinearLayout f23871e;

    /* renamed from: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity$5 */
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/activity/BaseDaySummaryActivity$5.class */
    public class View$OnLongClickListenerC68515 implements View.OnLongClickListener {
        View$OnLongClickListenerC68515() {
            BaseDaySummaryActivity.this = r4;
        }

        /* renamed from: a */
        public /* synthetic */ void m29807a(Activity activity) {
            ListsUtils.m27481a((Context) BaseDaySummaryActivity.this, PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw()), (BaseAdapterItemData) BaseDaySummaryActivity.this.f23870d, false, (ContactItemViewEvents) null);
        }

        /* renamed from: b */
        public /* synthetic */ void m29806b(Activity activity) {
            ListsUtils.m27481a((Context) BaseDaySummaryActivity.this, PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw()), (BaseAdapterItemData) BaseDaySummaryActivity.this.f23870d, true, (ContactItemViewEvents) null);
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View view) {
            AndroidUtils.m27635a((Activity) BaseDaySummaryActivity.this);
            if (OptInWithTopImagePopup.m28052b()) {
                OptInWithTopImagePopup.m28051b(BaseDaySummaryActivity.this, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseDaySummaryActivity$5$cJeRhuRx_hLwOglLMuljDSc5Aaw
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        BaseDaySummaryActivity.View$OnLongClickListenerC68515.this.m29806b(activity);
                    }
                }, new DialogPopup.IDialogOnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity._$$Lambda$BaseDaySummaryActivity$5$wIxLXXxXGonasoh9k8MahNlUF8U
                    @Override // com.callapp.contacts.manager.popup.DialogPopup.IDialogOnClickListener
                    public final void onClickListener(Activity activity) {
                        BaseDaySummaryActivity.View$OnLongClickListenerC68515.this.m29807a(activity);
                    }
                });
            } else {
                Phone m28239a = PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw());
                BaseDaySummaryActivity baseDaySummaryActivity = BaseDaySummaryActivity.this;
                ListsUtils.m27481a((Context) baseDaySummaryActivity, m28239a, (BaseAdapterItemData) baseDaySummaryActivity.f23870d, true, (ContactItemViewEvents) null);
            }
            BaseDaySummaryActivity.this.m29812a();
            return false;
        }
    }

    /* renamed from: a */
    public void m29812a() {
        this.f23871e.setBackgroundColor(ThemeUtils.getColor(2131100145));
        finish();
    }

    /* renamed from: b */
    static /* synthetic */ void m29810b(BaseDaySummaryActivity baseDaySummaryActivity) {
        Phone m28239a = PhoneManager.get().m28239a(baseDaySummaryActivity.f23870d.getPhoneAsRaw());
        Iterator it2 = new CopyOnWriteArrayList(baseDaySummaryActivity.f23869c).iterator();
        int i = 0;
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            MissedCallSummaryItem missedCallSummaryItem = (MissedCallSummaryItem) it2.next();
            if (PhoneManager.get().m28239a(missedCallSummaryItem.getPhoneAsRaw()).equals(m28239a)) {
                baseDaySummaryActivity.f23869c.remove(missedCallSummaryItem);
                if (i >= baseDaySummaryActivity.f23869c.size()) {
                    i = 0;
                }
                if (CollectionUtils.m26068b(baseDaySummaryActivity.f23869c)) {
                    MissedCallSummaryItem missedCallSummaryItem2 = baseDaySummaryActivity.f23869c.get(i);
                    baseDaySummaryActivity.f23870d = missedCallSummaryItem2;
                    missedCallSummaryItem2.setNeedToShowBorder(true);
                    baseDaySummaryActivity.f23868b.notifyDataSetChanged();
                }
                MissedCallManager.m29823a(m28239a, CallReminderFrequentData.FrequentType.DELETE, 3, 0L);
                EventBusManager.f25138a.m29043c(OnMissedCallReminderMenuClickListener.f23128a, m28239a);
            } else {
                i++;
            }
        }
        if (CollectionUtils.m26076a(baseDaySummaryActivity.f23869c)) {
            baseDaySummaryActivity.m29812a();
        }
    }

    @Override // com.callapp.contacts.activity.missedcall.daySummary.MissedCallSummaryAdapter.onItemClick
    /* renamed from: a */
    public final void mo29778a(MissedCallSummaryItem missedCallSummaryItem) {
        this.f23870d = missedCallSummaryItem;
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
        AnalyticsManager.get().mo28441b(getAnalyticsViewTag());
        this.f23871e = (LinearLayout) findViewById(2131364033);
        findViewById(2131363457).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Close one item clicked");
                BaseDaySummaryActivity.m29810b(BaseDaySummaryActivity.this);
            }
        });
        findViewById(2131363456).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ListsUtils.m27481a(BaseDaySummaryActivity.this, PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw()), BaseDaySummaryActivity.this.f23870d, ContactUtils.m28326a(PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw()), BaseDaySummaryActivity.this.f23870d.getContactId()), (ContactItemViewEvents) null);
                AnalyticsManager.get().m28450a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use call button");
                BaseDaySummaryActivity.this.m29812a();
            }
        });
        findViewById(2131362375).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                AnalyticsManager.get().m28450a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Close all clicked");
                BaseDaySummaryActivity.this.m29812a();
            }
        });
        findViewById(2131363456).setOnLongClickListener(new View$OnLongClickListenerC68515());
        findViewById(2131363460).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Phone m28239a = PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw());
                if (m28239a == null || !m28239a.isNotEmpty() || CallLogUtils.m27556b(m28239a.getRawNumber())) {
                    return;
                }
                SmsUtils.m27391c(BaseDaySummaryActivity.this, m28239a, null);
                AnalyticsManager.get().m28450a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use SMS button");
                BaseDaySummaryActivity.this.m29812a();
            }
        });
        findViewById(2131363459).setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.7
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ((AddCallReminderAction) ActionsManager.get().m28766a(AddCallReminderAction.class)).mo31800b(CallAppApplication.get(), ContactUtils.m28327a(PhoneManager.get().m28239a(BaseDaySummaryActivity.this.f23870d.getPhoneAsRaw())), null);
                AnalyticsManager.get().m28450a(BaseDaySummaryActivity.this.getAnalyticsTag(), "Use call reminder");
                BaseDaySummaryActivity.this.m29812a();
            }
        });
        Intent intent = getIntent();
        this.f23869c = intent.getParcelableArrayListExtra(MissedCallSummaryDailyWorker.f29589a.getYESTERDAY_MISSED_CALL_LIST());
        int intExtra = intent.getIntExtra(MissedCallSummaryDailyWorker.f29589a.getYESTERDAY_MISSED_CALL_TOTAL_NUMBER(), 0);
        if (CollectionUtils.m26068b(this.f23869c)) {
            this.f23870d = this.f23869c.get(0);
            RecyclerView recyclerView = (RecyclerView) findViewById(2131363286);
            this.f23867a = recyclerView;
            recyclerView.setLayoutManager(new LinearLayoutManager(this, 0, false));
            this.f23867a.setHasFixedSize(true);
            TextView textView = (TextView) findViewById(2131364130);
            textView.setText(getTitleText());
            textView.setAllCaps(true);
            LinearLayout linearLayout = (LinearLayout) findViewById(2131364536);
            LinearLayout linearLayout2 = (LinearLayout) findViewById(2131363162);
            LinearLayout linearLayout3 = (LinearLayout) findViewById(2131362521);
            if (ThemeUtils.isThemeLight()) {
                textView.setTextColor(ThemeUtils.getColor(2131099922));
                ViewUtils.m27294c(linearLayout, 2131232241, ThemeUtils.getColor(2131100228));
                ViewUtils.m27294c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099921));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131100228));
            } else {
                textView.setTextColor(ThemeUtils.getColor(2131100228));
                ViewUtils.m27294c(linearLayout, 2131232241, ThemeUtils.getColor(2131099918));
                ViewUtils.m27294c(linearLayout3, 2131232240, ThemeUtils.getColor(2131099819));
                linearLayout2.setBackgroundColor(ThemeUtils.getColor(2131099918));
            }
            TextView textView2 = (TextView) findViewById(2131363464);
            textView2.setText(Activities.getString(2131887199));
            textView2.setTextColor(ThemeUtils.getColor(2131100140));
            ((TextView) findViewById(2131364013)).setText(getSubTitleString(intExtra));
            BaseCallAppAdapter baseCallAppAdapter = this.f23868b;
            if (baseCallAppAdapter == null) {
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (!Activities.m27696a((Activity) BaseDaySummaryActivity.this)) {
                            CLog.m27606a(BaseCallAppFragment.class.getSimpleName());
                            return;
                        }
                        BaseDaySummaryActivity baseDaySummaryActivity = BaseDaySummaryActivity.this;
                        baseDaySummaryActivity.f23868b = new MissedCallSummaryAdapter(null, baseDaySummaryActivity.f23869c, BaseDaySummaryActivity.this);
                        BaseDaySummaryActivity.this.f23867a.setAdapter(BaseDaySummaryActivity.this.f23868b);
                    }
                });
            } else {
                baseCallAppAdapter.setData(this.f23869c);
            }
        } else {
            finish();
        }
        initAd();
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, getAnalyticsViewTag());
        super.onDestroy();
    }
}
