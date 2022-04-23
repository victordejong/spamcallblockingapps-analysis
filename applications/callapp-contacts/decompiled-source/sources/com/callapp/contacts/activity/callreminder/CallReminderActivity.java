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

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f11450a;

    /* renamed from: b  reason: collision with root package name */
    private View f11451b;

    /* renamed from: d  reason: collision with root package name */
    private CallRemindersAdapter f11453d;

    /* renamed from: c  reason: collision with root package name */
    private boolean f11452c = false;
    private final ScrollRecyclerStateTracker e = new ScrollRecyclerStateTracker();
    private InvalidateDataListener f = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.1
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType != EventBusManager.CallAppDataType.RECENT_CALLS && callAppDataType != EventBusManager.CallAppDataType.CONTACTS && callAppDataType != EventBusManager.CallAppDataType.REMINDER) {
                return;
            }
            if (CallReminderActivity.this.isForeGroundVisible()) {
                CallReminderActivity.this.b();
            } else {
                CallReminderActivity.this.f11452c = true;
            }
        }
    };
    private NotifyDataChangedListener g = new NotifyDataChangedListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.2
        @Override // com.callapp.contacts.activity.interfaces.NotifyDataChangedListener
        public void a(DataChangedInfo dataChangedInfo) {
            if (CallReminderActivity.this.isForeGroundVisible()) {
                CallReminderActivity.this.b();
            } else {
                CallReminderActivity.this.f11452c = true;
            }
        }
    };

    public static void a(Context context) {
        Activities.b(context, new Intent(context, CallReminderActivity.class));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.5
            @Override // java.lang.Runnable
            public void run() {
                final List<CallRemindersData> a2 = CallRemindersManager.a(null);
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.5.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (CallReminderActivity.this.f11453d == null) {
                            CallReminderActivity.this.f11453d = new CallRemindersAdapter(a2, CallReminderActivity.this.e, CallReminderActivity.this);
                            CallReminderActivity.this.f11450a.setAdapter(CallReminderActivity.this.f11453d);
                        } else {
                            CallReminderActivity.this.f11453d.c();
                            CallReminderActivity.this.f11453d.setData(a2);
                        }
                        CallReminderActivity.this.f11451b.setVisibility(CollectionUtils.a(a2) ? 0 : 8);
                    }
                });
            }
        });
    }

    static /* synthetic */ void c(CallReminderActivity callReminderActivity) {
        AnalyticsManager.get().a(Constants.CONTACT_LIST, "Add Call Reminder", Constants.CLICK);
        Activities.a(callReminderActivity, ChooseSingleNumberFromContactsActivity.class, new ActivityResult() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.4
            @Override // com.callapp.contacts.manager.popup.ActivityResult
            public void onActivityResult(Activity activity, int i, int i2, Intent intent) {
                if (i2 == -1 && intent.getExtras() != null) {
                    final long j = intent.getExtras().getLong(Constants.EXTRA_CONTACT_ID);
                    final String string = intent.getExtras().getString(Constants.EXTRA_PHONE_NUMBER);
                    new Task() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.4.1
                        @Override // com.callapp.contacts.manager.task.Task
                        public void doTask() {
                            ((AddCallReminderAction) ActionsManager.get().a(AddCallReminderAction.class)).b(CallReminderActivity.this, new ContactLoader().addFields(EnumSet.of(ContactField.deviceId, ContactField.fullName, ContactField.emails, ContactField.genomeData)).addSyncLoader(new DeviceIdLoader()).addSyncLoader(new DeviceDataLoader()).addSyncLoader(new CacheLoader()).addSyncLoader(new NotificationTelegramLoader()).addSyncLoader(new NotificationViberLoader()).addSyncLoader(new LocalGenomeLoader(false)).setLoadOnlyFromCache().load(PhoneManager.get().a(string), j), null);
                        }
                    }.execute();
                }
            }
        });
    }

    @Override // com.callapp.contacts.activity.callreminder.CallRemindersAdapter.ReminderEvents
    public final void a() {
        b();
    }

    @Override // com.callapp.contacts.activity.callreminder.CallRemindersAdapter.ReminderEvents
    public final void a(int i) {
        this.f11451b.setVisibility(i == 0 ? 0 : 8);
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558436;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f11450a = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.e.setRecyclerView(this.f11450a);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131887710));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        getSupportActionBar().b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().a(true);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362842);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.a(this, 2131099784)));
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.callreminder.CallReminderActivity.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                CallReminderActivity.c(CallReminderActivity.this);
            }
        });
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.f);
        AnalyticsManager.get().b(Constants.CALL_REMINDER_SCREEN);
        String string = Activities.getString(2131886445);
        String string2 = Activities.getString(2131886444);
        View findViewById = findViewById(2131362685);
        this.f11451b = findViewById;
        ViewUtils.a(findViewById, 2131231562, 2131231563, string, string2);
        b();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.f);
        EventBusManager.f14368a.b(NotifyDataChangedListener.f12951b, this.g);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.CALL_REMINDER_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f11452c) {
            this.f11452c = false;
            b();
        }
    }
}
