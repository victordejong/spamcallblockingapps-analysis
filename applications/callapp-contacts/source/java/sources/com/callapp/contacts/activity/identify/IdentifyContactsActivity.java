package com.callapp.contacts.activity.identify;

import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.os.Bundle;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.appcompat.widget.Toolbar;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.activity.base.BaseNoTitleActivity;
import com.callapp.contacts.activity.contact.list.MemoryContactItem;
import com.callapp.contacts.activity.identify.IdentifyContactsAdapter;
import com.callapp.contacts.activity.interfaces.IdentifyContactsChangedListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.contacts.ContactUtils;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.ThemeUtils;
import com.callapp.contacts.util.ViewUtils;
import com.callapp.contacts.util.animation.AnimationListenerAdapter;
import com.callapp.contacts.util.date.DateUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Set;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/identify/IdentifyContactsActivity.class */
public class IdentifyContactsActivity extends BaseNoTitleActivity implements IdentifyContactsAdapter.OnIdentifyContactClickListener {

    /* renamed from: a */
    private ArrayList<IdentifyContactsData> f23060a;

    /* renamed from: c */
    private RecyclerView f23062c;

    /* renamed from: d */
    private ProgressBar f23063d;

    /* renamed from: e */
    private View f23064e;

    /* renamed from: f */
    private View f23065f;

    /* renamed from: g */
    private IdentifyContactsAdapter f23066g;

    /* renamed from: b */
    private IdentifyContactsChangedListener f23061b = new IdentifyContactsChangedListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.1
        @Override // com.callapp.contacts.activity.interfaces.IdentifyContactsChangedListener
        /* renamed from: a */
        public final void mo30212a() {
            IdentifyContactsActivity.this.m30250a();
        }
    };

    /* renamed from: h */
    private boolean f23067h = false;

    /* renamed from: a */
    public void m30250a() {
        final Set<Long> set = Prefs.f26528fn.get();
        final long m27124a = DateUtils.m27124a(new Date(Prefs.f26529fo.get().longValue()), new Date(System.currentTimeMillis()), TimeUnit.DAYS);
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (m27124a > 2) {
                    IdentifyContactsActivity.this.f23063d.setVisibility(0);
                    IdentifyContactsActivity.this.f23064e.setVisibility(8);
                    IdentifyContactsActivity.this.f23065f.setVisibility(8);
                    IdentifyContactsTaskManager.m30237a();
                    return;
                }
                Set set2 = set;
                if (set2 == null || set2.size() == 0) {
                    IdentifyContactsActivity.this.m30246b();
                    AnalyticsManager.get().mo28444a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown", "Number of contacts to optimize", 0.0d, new String[0]);
                    return;
                }
                IdentifyContactsActivity.this.f23063d.setVisibility(8);
                IdentifyContactsActivity.this.f23065f.setVisibility(8);
                IdentifyContactsActivity.this.f23064e.setVisibility(0);
                IdentifyContactsActivity.m30247a(IdentifyContactsActivity.this, set);
                AnalyticsManager.get().mo28444a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown", "Number of contacts to optimize", set.size(), new String[0]);
            }
        });
    }

    /* renamed from: a */
    public static void m30249a(Context context) {
        context.startActivity(new Intent(context, IdentifyContactsActivity.class));
    }

    /* renamed from: a */
    static /* synthetic */ void m30247a(IdentifyContactsActivity identifyContactsActivity, Set set) {
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        identifyContactsActivity.f23060a = new ArrayList<>();
        for (MemoryContactItem memoryContactItem : contactsWithPhoneNumber) {
            if (set.contains(Long.valueOf(memoryContactItem.getContactId()))) {
                IdentifyContactsData identifyContactsData = new IdentifyContactsData();
                identifyContactsData.setSuggestedContactId(memoryContactItem.getContactId());
                identifyContactsData.setSuggestedPhone(memoryContactItem.getPhone());
                identifyContactsActivity.f23060a.add(identifyContactsData);
            }
        }
        if (CollectionUtils.m26076a(identifyContactsActivity.f23060a)) {
            identifyContactsActivity.m30246b();
            return;
        }
        IdentifyContactsAdapter identifyContactsAdapter = new IdentifyContactsAdapter(identifyContactsActivity.f23060a, identifyContactsActivity);
        identifyContactsActivity.f23066g = identifyContactsAdapter;
        identifyContactsActivity.f23062c.setAdapter(identifyContactsAdapter);
    }

    /* renamed from: b */
    public void m30246b() {
        this.f23064e.setVisibility(8);
        this.f23063d.setVisibility(8);
        this.f23065f.setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.identify.IdentifyContactsAdapter.OnIdentifyContactClickListener
    /* renamed from: a */
    public final void mo30241a(int i) {
        Prefs.f26528fn.set(null);
        Prefs.f26529fo.set(-1L);
        this.f23067h = true;
        if (ContactUtils.m28334a(this, this.f23060a.get(i).getSuggestedContactId(), this.f23060a.get(i).getLoadedName())) {
            mo30240b(i);
        }
    }

    @Override // com.callapp.contacts.activity.identify.IdentifyContactsAdapter.OnIdentifyContactClickListener
    /* renamed from: b */
    public final void mo30240b(int i) {
        if (i >= 0 && i < this.f23060a.size()) {
            this.f23060a.remove(i);
        }
        if (CollectionUtils.m26076a(this.f23060a)) {
            m30246b();
        } else {
            this.f23066g.notifyItemRemoved(i);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558451;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBusManager.f25138a.m29048a(IdentifyContactsChangedListener.f23121b, this.f23061b);
        AnalyticsManager.get().m28450a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown");
        findViewById(2131363710).setBackgroundColor(ThemeUtils.getColor(2131099891));
        final View findViewById = findViewById(2131362967);
        if (!Prefs.f26530fp.get().booleanValue()) {
            findViewById.setVisibility(8);
        } else {
            if (ThemeUtils.isThemeLight()) {
                findViewById.setBackgroundColor(Color.parseColor("#dff1f7"));
            } else {
                findViewById.setBackgroundColor(ThemeUtils.getColor(2131099785));
            }
            TextView textView = (TextView) findViewById.findViewById(2131362972);
            textView.setText(Activities.getString(2131887874));
            textView.setTextColor(ThemeUtils.getColor(2131100108));
            ImageView imageView = (ImageView) findViewById.findViewById(2131362966);
            imageView.setColorFilter(new PorterDuffColorFilter(ThemeUtils.getColor(2131099784), PorterDuff.Mode.SRC_IN));
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
                    alphaAnimation.setDuration(500L);
                    alphaAnimation.setAnimationListener(new AnimationListenerAdapter() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.2.1
                        @Override // com.callapp.contacts.util.animation.AnimationListenerAdapter, android.view.animation.Animation.AnimationListener
                        public void onAnimationEnd(Animation animation) {
                            super.onAnimationEnd(animation);
                            findViewById.setVisibility(8);
                            Prefs.f26530fp.set(Boolean.FALSE);
                        }
                    });
                    findViewById.startAnimation(alphaAnimation);
                }
            });
        }
        this.f23065f = findViewById(2131362689);
        TextView textView2 = (TextView) findViewById(2131362693);
        textView2.setText(Activities.getString(2131887873));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView3 = (TextView) findViewById(2131362691);
        textView3.setText(Activities.getString(2131887883));
        textView3.setTextColor(ThemeUtils.getColor(2131100108));
        this.f23064e = findViewById(2131362520);
        int color = ThemeUtils.getColor(2131099784);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131887872));
        toolbar.setBackgroundColor(color);
        setSupportActionBar(toolbar);
        getSupportActionBar().mo46233b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().mo46237a(true);
        TextView textView4 = (TextView) findViewById(2131362944);
        textView4.setText(Activities.getString(2131887888));
        textView4.setTextColor(ThemeUtils.getColor(2131099784));
        findViewById(2131362611).setBackgroundColor(ThemeUtils.m27386a(CallAppApplication.get(), 2131099930));
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f23062c = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f23063d = (ProgressBar) findViewById(2131363220);
        m30250a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f25138a.m29045b(IdentifyContactsChangedListener.f23121b, this.f23061b);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.f23067h) {
            this.f23067h = false;
            m30250a();
        }
    }
}
