package com.callapp.contacts.activity.callreminder;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.action.local.AddCallReminderAction;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.callreminder.CallRemindersAdapter;
import com.callapp.contacts.activity.chooseContact.ChooseSingleNumberFromContactsActivity;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.activity.interfaces.NotifyDataChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.loader.LocalGenomeLoader;
import com.callapp.contacts.loader.api.ContactLoader;
import com.callapp.contacts.loader.device.CacheLoader;
import com.callapp.contacts.loader.device.DeviceDataLoader;
import com.callapp.contacts.loader.device.DeviceIdLoader;
import com.callapp.contacts.loader.external.NotificationTelegramLoader;
import com.callapp.contacts.loader.external.NotificationViberLoader;
import com.callapp.contacts.manager.ActionsManager;
import com.callapp.contacts.manager.CallRemindersManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.phone.PhoneManager;
import com.callapp.contacts.manager.popup.ActivityResult;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.DataChangedInfo;
import com.callapp.contacts.model.contact.ContactField;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.EnumSet;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/callreminder/CallReminderActivity.class */
public class CallReminderActivity extends BaseNoTitleActivity implements CallRemindersAdapter.ReminderEvents {

    /* renamed from: a */
    private RecyclerView f20824a;

    /* renamed from: b */
    private View f20825b;

    /* renamed from: d */
    private CallRemindersAdapter f20827d;

    /* renamed from: c */
    private boolean f20826c = false;

    /* renamed from: e */
    private final ScrollRecyclerStateTracker f20828e = new ScrollRecyclerStateTracker();

    /* renamed from: f */
    private InvalidateDataListener f20829f = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.1
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType == EventBusManager.CallAppDataType.RECENT_CALLS || callAppDataType == EventBusManager.CallAppDataType.CONTACTS || callAppDataType == EventBusManager.CallAppDataType.REMINDER) {
                if (CallReminderActivity.this.isForeGroundVisible()) {
                    CallReminderActivity.this.m31288b();
                } else {
                    CallReminderActivity.this.f20826c = true;
                }
            }
        }
    };

    /* renamed from: g */
    private NotifyDataChangedListener f20830g = new NotifyDataChangedListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.2
        @Override // com.callapp.contacts.activity.interfaces.NotifyDataChangedListener
        /* renamed from: a */
        public void mo30204a(DataChangedInfo dataChangedInfo) {
            if (CallReminderActivity.this.isForeGroundVisible()) {
                CallReminderActivity.this.m31288b();
            } else {
                CallReminderActivity.this.f20826c = true;
            }
        }
    };

    /* renamed from: a */
    public static void m31291a(Context context) {
        Activities.m27656b(context, new Intent(context, CallReminderActivity.class));
    }

    /* renamed from: b */
    public void m31288b() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.5
            @Override // java.lang.Runnable
            public void run() {
                final List<CallRemindersData> m28694a = CallRemindersManager.m28694a(null);
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CallReminderActivity.this.f20827d == null) {
                            CallReminderActivity.this.f20827d = new CallRemindersAdapter(m28694a, CallReminderActivity.this.f20828e, CallReminderActivity.this);
                            CallReminderActivity.this.f20824a.setAdapter(CallReminderActivity.this.f20827d);
                        } else {
                            CallReminderActivity.this.f20827d.m31513c();
                            CallReminderActivity.this.f20827d.setData(m28694a);
                        }
                        CallReminderActivity.this.f20825b.setVisibility(CollectionUtils.m26076a(m28694a) ? 0 : 8);
                    }
                });
            }
        });
    }

    /* renamed from: c */
    static /* synthetic */ void m31286c(CallReminderActivity callReminderActivity) {
        AnalyticsManager.get().m28449a(Constants.CONTACT_LIST, "Add Call Reminder", Constants.CLICK);
        Activities.m27680a(callReminderActivity, ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.4
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 != -1 || intent.getExtras() == null) {
                    return;
                }
                final long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
                final String string = intent.getExtras().getString(Constants.EXTRA_PHONE_NUMBER);
                new Task() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.4.1
                    @Override // com.callapp.contacts.manager.task.Task
                    public void doTask() {
                        ((AddCallReminderAction) ActionsManager.get().m28766a(AddCallReminderAction.class)).mo31800b(CallReminderActivity.this, new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.genomeData)).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).setLoadOnlyFromCache().load(PhoneManager.get().m28239a(string), j), null);
                    }
                }.execute();
            }
        });
    }

    @Override // com.callapp.contacts.activity.callreminder.CallRemindersAdapter.ReminderEvents
    /* renamed from: a */
    public final void mo31274a() {
        m31288b();
    }

    @Override // com.callapp.contacts.activity.callreminder.CallRemindersAdapter.ReminderEvents
    /* renamed from: a */
    public final void mo31273a(int i) {
        this.f20825b.setVisibility(i == 0 ? 0 : 8);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558436;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f20824a = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f20828e.setRecyclerView(this.f20824a);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131887710));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        getSupportActionBar().mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362842);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.m27386a(this, 2131099784)));
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallReminderActivity.m31286c(CallReminderActivity.this);
            }
        });
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.f20829f);
        AnalyticsManager.get().mo28441b(Constants.CALL_REMINDER_SCREEN);
        String string = Activities.getString(2131886445);
        String string2 = Activities.getString(2131886444);
        View findViewById = findViewById(2131362685);
        this.f20825b = findViewById;
        ViewUtils.m27321a(findViewById, 2131231562, 2131231563, string, string2);
        m31288b();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.f20829f);
        EventBusManager.f25138a.m29045b(NotifyDataChangedListener.f23124b, this.f20830g);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_REMINDER_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f20826c) {
            this.f20826c = false;
            m31288b();
        }
    }
}
