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

    /* renamed from: a  reason: collision with root package name */
    private ArrayList<IdentifyContactsData> f12900a;

    /* renamed from: c  reason: collision with root package name */
    private RecyclerView f12902c;

    /* renamed from: d  reason: collision with root package name */
    private ProgressBar f12903d;
    private View e;
    private View f;
    private IdentifyContactsAdapter g;

    /* renamed from: b  reason: collision with root package name */
    private IdentifyContactsChangedListener f12901b = new IdentifyContactsChangedListener() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.1
        @Override // com.callapp.contacts.activity.interfaces.IdentifyContactsChangedListener
        public final void a() {
            IdentifyContactsActivity.this.a();
        }
    };
    private boolean h = false;

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        final Set<Long> set = Prefs.fn.get();
        final long a2 = DateUtils.a(new Date(Prefs.fo.get().longValue()), new Date(System.currentTimeMillis()), TimeUnit.DAYS);
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.activity.identify.IdentifyContactsActivity.3
            @Override // java.lang.Runnable
            public void run() {
                if (a2 > 2) {
                    IdentifyContactsActivity.this.f12903d.setVisibility(0);
                    IdentifyContactsActivity.this.e.setVisibility(8);
                    IdentifyContactsActivity.this.f.setVisibility(8);
                    IdentifyContactsTaskManager.a();
                    return;
                }
                Set set2 = set;
                if (set2 == null || set2.size() == 0) {
                    IdentifyContactsActivity.this.b();
                    AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown", "Number of contacts to optimize", 0.0d, new String[0]);
                    return;
                }
                IdentifyContactsActivity.this.f12903d.setVisibility(8);
                IdentifyContactsActivity.this.f.setVisibility(8);
                IdentifyContactsActivity.this.e.setVisibility(0);
                IdentifyContactsActivity.a(IdentifyContactsActivity.this, set);
                AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown", "Number of contacts to optimize", set.size(), new String[0]);
            }
        });
    }

    public static void a(Context context) {
        context.startActivity(new Intent(context, IdentifyContactsActivity.class));
    }

    static /* synthetic */ void a(IdentifyContactsActivity identifyContactsActivity, Set set) {
        List<MemoryContactItem> contactsWithPhoneNumber = ContactUtils.getContactsWithPhoneNumber();
        identifyContactsActivity.f12900a = new ArrayList<>();
        for (MemoryContactItem memoryContactItem : contactsWithPhoneNumber) {
            if (set.contains(Long.valueOf(memoryContactItem.getContactId()))) {
                IdentifyContactsData identifyContactsData = new IdentifyContactsData();
                identifyContactsData.setSuggestedContactId(memoryContactItem.getContactId());
                identifyContactsData.setSuggestedPhone(memoryContactItem.getPhone());
                identifyContactsActivity.f12900a.add(identifyContactsData);
            }
        }
        if (CollectionUtils.a(identifyContactsActivity.f12900a)) {
            identifyContactsActivity.b();
            return;
        }
        IdentifyContactsAdapter identifyContactsAdapter = new IdentifyContactsAdapter(identifyContactsActivity.f12900a, identifyContactsActivity);
        identifyContactsActivity.g = identifyContactsAdapter;
        identifyContactsActivity.f12902c.setAdapter(identifyContactsAdapter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        this.e.setVisibility(8);
        this.f12903d.setVisibility(8);
        this.f.setVisibility(0);
    }

    @Override // com.callapp.contacts.activity.identify.IdentifyContactsAdapter.OnIdentifyContactClickListener
    public final void a(int i) {
        Prefs.fn.set(null);
        Prefs.fo.set(-1L);
        this.h = true;
        if (ContactUtils.a(this, this.f12900a.get(i).getSuggestedContactId(), this.f12900a.get(i).getLoadedName())) {
            b(i);
        }
    }

    @Override // com.callapp.contacts.activity.identify.IdentifyContactsAdapter.OnIdentifyContactClickListener
    public final void b(int i) {
        if (i >= 0 && i < this.f12900a.size()) {
            this.f12900a.remove(i);
        }
        if (CollectionUtils.a(this.f12900a)) {
            b();
        } else {
            this.g.notifyItemRemoved(i);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558451;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        EventBusManager.f14368a.a(IdentifyContactsChangedListener.f12948b, this.f12901b);
        AnalyticsManager.get().a(Constants.OPTIMIZE_CONTACTS, "Identify contacts screen shown");
        findViewById(2131363710).setBackgroundColor(ThemeUtils.getColor(2131099891));
        final View findViewById = findViewById(2131362967);
        if (!Prefs.fp.get().booleanValue()) {
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
                            Prefs.fp.set(Boolean.FALSE);
                        }
                    });
                    findViewById.startAnimation(alphaAnimation);
                }
            });
        }
        this.f = findViewById(2131362689);
        TextView textView2 = (TextView) findViewById(2131362693);
        textView2.setText(Activities.getString(2131887873));
        textView2.setTextColor(ThemeUtils.getColor(2131099784));
        TextView textView3 = (TextView) findViewById(2131362691);
        textView3.setText(Activities.getString(2131887883));
        textView3.setTextColor(ThemeUtils.getColor(2131100108));
        this.e = findViewById(2131362520);
        int color = ThemeUtils.getColor(2131099784);
        Toolbar toolbar = (Toolbar) findViewById(2131364153);
        toolbar.setTitle(Activities.getString(2131887872));
        toolbar.setBackgroundColor(color);
        setSupportActionBar(toolbar);
        getSupportActionBar().b(ViewUtils.getDrawable(2131231943));
        getSupportActionBar().a(true);
        TextView textView4 = (TextView) findViewById(2131362944);
        textView4.setText(Activities.getString(2131887888));
        textView4.setTextColor(ThemeUtils.getColor(2131099784));
        findViewById(2131362611).setBackgroundColor(ThemeUtils.a(CallAppApplication.get(), 2131099930));
        RecyclerView recyclerView = (RecyclerView) findViewById(2131363646);
        this.f12902c = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        this.f12903d = (ProgressBar) findViewById(2131363220);
        a();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        EventBusManager.f14368a.b(IdentifyContactsChangedListener.f12948b, this.f12901b);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (this.h) {
            this.h = false;
            a();
        }
    }
}
