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

    /* renamed from: a */
    private RecyclerView f20409a;

    /* renamed from: b */
    private BirthdaysAdapter f20410b;

    /* renamed from: c */
    private EventBusManager.CallAppDataType f20411c = null;

    /* renamed from: d */
    private final ScrollRecyclerStateTracker f20412d = new ScrollRecyclerStateTracker();

    /* renamed from: e */
    private InvalidateDataListener f20413e = new InvalidateDataListener() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.1
        @Override // com.callapp.contacts.activity.interfaces.InvalidateDataListener
        public void invalidateData(EventBusManager.CallAppDataType callAppDataType) {
            if (callAppDataType == EventBusManager.CallAppDataType.CONTACTS) {
                if (BirthdaysActivity.this.isForeGroundVisible()) {
                    BirthdaysActivity.this.m31459a();
                } else {
                    BirthdaysActivity.this.f20411c = callAppDataType;
                }
            }
        }
    };

    /* renamed from: a */
    public void m31459a() {
        CallAppApplication.get().m31870a(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.3
            @Override // java.lang.Runnable
            public void run() {
                final List<BirthdayReminderData> birthdaysAsReminders = BirthdayManager.getBirthdaysAsReminders();
                CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (BirthdaysActivity.this.f20410b != null) {
                            BirthdaysActivity.this.f20410b.setData(birthdaysAsReminders);
                            return;
                        }
                        BirthdaysActivity.this.f20410b = new BirthdaysAdapter(birthdaysAsReminders, BirthdaysActivity.this.f20412d);
                        BirthdaysActivity.this.f20409a.setAdapter(BirthdaysActivity.this.f20410b);
                    }
                });
            }
        });
    }

    /* renamed from: a */
    public static void m31458a(Context context) {
        Activities.m27656b(context, new Intent(context, BirthdaysActivity.class));
    }

    /* renamed from: a */
    public static void m31454a(ReminderData reminderData) {
        if (reminderData != null && (reminderData instanceof BirthdayReminderData)) {
            BirthdayReminderData birthdayReminderData = (BirthdayReminderData) reminderData;
            if (reminderData.contactId <= 0 && (!StringUtils.m26045b((CharSequence) birthdayReminderData.socialId) || birthdayReminderData.netId.intValue() != 1)) {
                return;
            }
            AnalyticsManager.get().m28450a(Constants.BIRTHDAY, "Clicked on Birthday notification");
            Intent addFlags = new Intent(CallAppApplication.get(), PostBirthdayActivity.class).setFlags(268435456).addFlags(536870912);
            if (StringUtils.m26045b((CharSequence) birthdayReminderData.socialId) && birthdayReminderData.netId.intValue() == 1) {
                addFlags.putExtra("FB_ID_EXTRA", birthdayReminderData.socialId);
            }
            if (reminderData.contactId > 0) {
                addFlags.putExtra(ChooseSocialProfileActivity.CONTACT_ID_EXTRA, reminderData.contactId);
                addFlags.putExtra("PHONE_EXTRA", reminderData.phone.m26101a());
            }
            Activities.m27685a(CallAppApplication.get(), addFlags);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558435;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().mo28441b(Constants.BIRTHDAY_SCREEN);
        EventBusManager.f25138a.m29048a(InvalidateDataListener.f23122b, this.f20413e);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131886335));
        toolbar.setBackgroundColor(ThemeUtils.getColor(2131099784));
        setSupportActionBar(toolbar);
        getSupportActionBar().mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f20409a = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f20412d.setRecyclerView(this.f20409a);
        FloatingActionButton floatingActionButton = (FloatingActionButton) findViewById(2131362842);
        floatingActionButton.setBackgroundTintList(ColorStateList.valueOf(ThemeUtils.m27386a(this, 2131099784)));
        floatingActionButton.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.birthday.BirthdaysActivity.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Activities.m27685a(BirthdaysActivity.this, new Intent(BirthdaysActivity.this, ReferAndEarnActivity.class));
            }
        });
        m31459a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(InvalidateDataListener.f23122b, this.f20413e);
        AnalyticsManager.get().m28449a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.BIRTHDAY_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f20411c != null) {
            this.f20411c = null;
            m31459a();
        }
    }
}
