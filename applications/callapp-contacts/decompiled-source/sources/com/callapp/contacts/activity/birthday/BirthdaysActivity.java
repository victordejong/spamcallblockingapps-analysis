package com.callapp.contacts.activity.birthday;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.os.Bundle;
import android.view.View;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.base.ScrollRecyclerStateTracker;
import com.callapp.contacts.activity.choosesocialprofile.ChooseSocialProfileActivity;
import com.callapp.contacts.activity.interfaces.InvalidateDataListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.BirthdayManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.ReminderData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.widget.referandearn.ReferAndEarnActivity;
import com.callapp.framework.util.StringUtils;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/birthday/BirthdaysActivity.class */
public class BirthdaysActivity extends BaseNoTitleActivity {

    /* renamed from: a  reason: collision with root package name */
    private RecyclerView f11180a;

    /* renamed from: b  reason: collision with root package name */
    private BirthdaysAdapter f11181b;

    /* renamed from: c  reason: collision with root package name */
    private EventBusManager.CallAppDataType f11182c = null;

    /* renamed from: d  reason: collision with root package name */
    private final ScrollRecyclerStateTracker f11183d = new ScrollRecyclerStateTracker();
    private InvalidateDataListener e = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.1
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType != EventBusManager.CallAppDataType.CONTACTS) {
                return;
            }
            if (BirthdaysActivity.this.isForeGroundVisible()) {
                BirthdaysActivity.this.a();
            } else {
                BirthdaysActivity.this.f11182c = callAppDataType;
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        CallAppApplication.get().a(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.3
            @Override // java.lang.Runnable
            public void run() {
                final List<BirthdayReminderData> birthdaysAsReminders = BirthdayManager.getBirthdaysAsReminders();
                CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BirthdaysActivity.this.f11181b == null) {
                            BirthdaysActivity.this.f11181b = new BirthdaysAdapter(birthdaysAsReminders, BirthdaysActivity.this.f11183d);
                            BirthdaysActivity.this.f11180a.setAdapter(BirthdaysActivity.this.f11181b);
                            return;
                        }
                        BirthdaysActivity.this.f11181b.setData(birthdaysAsReminders);
                    }
                });
            }
        });
    }

    public static void a(Context context) {
        Activities.b(context, new Intent(context, BirthdaysActivity.class));
    }

    public static void a(ReminderData reminderData) {
        if (reminderData != null && (reminderData instanceof BirthdayReminderData)) {
            BirthdayReminderData birthdayReminderData = (BirthdayReminderData) reminderData;
            if (reminderData.contactId > 0 || (StringUtils.b((CharSequence) birthdayReminderData.socialId) && birthdayReminderData.netId.intValue() == 1)) {
                AnalyticsManager.get().a(Constants.BIRTHDAY, "Clicked on Birthday notification");
                Intent addFlags = new Intent(CallAppApplication.get(), PostBirthdayActivity.class).setFlags(268435456).addFlags(536870912);
                if (StringUtils.b((CharSequence) birthdayReminderData.socialId) && birthdayReminderData.netId.intValue() == 1) {
                    addFlags.putExtra("FB_ID_EXTRA", birthdayReminderData.socialId);
                }
                if (reminderData.contactId > 0) {
                    addFlags.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, reminderData.contactId);
                    addFlags.putExtra("PHONE_EXTRA", reminderData.phone.a());
                }
                Activities.a(CallAppApplication.get(), addFlags);
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558435;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.BIRTHDAY_SCREEN);
        EventBusManager.f14368a.a(InvalidateDataListener.f12949b, this.e);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131886335));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        getSupportActionBar().b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().a(true);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f11180a = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f11183d.setRecyclerView(this.f11180a);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362842);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.a(this, 2131099784)));
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activities.a(BirthdaysActivity.this, new Intent(BirthdaysActivity.this, ReferAndEarnActivity.class));
            }
        });
        a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f14368a.b(InvalidateDataListener.f12949b, this.e);
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.BIRTHDAY_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f11182c != null) {
            this.f11182c = null;
            a();
        }
    }
}
