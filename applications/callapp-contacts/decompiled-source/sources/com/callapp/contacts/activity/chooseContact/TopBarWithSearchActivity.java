package com.callapp.contacts.activity.chooseContact;

import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseAdapterItemData;
import com.callapp.contacts.activity.base.BaseListFragment;
import com.callapp.contacts.activity.base.TopBarFragmentActivity;
import com.callapp.contacts.activity.interfaces.OnListItemInteractionsListener;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.TopBarUtils;
import com.callapp.contacts.widget.SimpleSearchBarFragment;
import com.callapp.contacts.widget.TopBarFragment;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity.class */
public abstract class TopBarWithSearchActivity extends TopBarFragmentActivity {

    /* renamed from: a  reason: collision with root package name */
    public SimpleSearchBarFragment f11494a;

    /* renamed from: b  reason: collision with root package name */
    private String f11495b = "";

    /* loaded from: classes-dex2jar.jar:com/callapp/contacts/activity/chooseContact/TopBarWithSearchActivity$searchBarEventsImpl.class */
    public abstract class searchBarEventsImpl implements SimpleSearchBarFragment.SearchBarEvents {
        public searchBarEventsImpl() {
        }

        @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
        public final void a() {
            Activities.a(TopBarWithSearchActivity.this, 5000);
        }

        @Override // com.callapp.contacts.widget.TopBarFragment.TopBarEvents
        public final void a(TopBarFragment.TopBarIconStates topBarIconStates) {
            if (topBarIconStates == TopBarFragment.TopBarIconStates.BACK) {
                TopBarWithSearchActivity.this.setResult(0);
                TopBarWithSearchActivity.this.finish();
            }
        }

        @Override // com.callapp.contacts.widget.SimpleSearchBarFragment.SearchBarEvents
        public void b() {
        }
    }

    private void setTitle(Intent intent) {
        String stringExtra = (intent == null || intent.getExtras() == null) ? null : intent.getStringExtra("activity_title");
        String str = stringExtra;
        if (StringUtils.a((CharSequence) stringExtra)) {
            str = Activities.getString(2131887618);
        }
        setTitle(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T extends BaseAdapterItemData> OnListItemInteractionsListener<T> b() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getInitialSearchText() {
        return this.f11495b;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity
    public BaseListFragment getNewFragment() {
        return null;
    }

    protected abstract SimpleSearchBarFragment.SearchBarEvents getSearchBarEvents();

    public String getSearchText() {
        return this.f11494a.getSearchText();
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity
    public TopBarUtils.TopBarTitle getTopBarTitleType() {
        return TopBarUtils.TopBarTitle.SUBTITLE_TOP_BAR;
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (i2 == -1 && i == 5000) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (CollectionUtils.b(stringArrayListExtra)) {
                AnalyticsManager.get().a(Constants.CHOOSE_FROM_CONTACTS, "Voice search successfully finished");
                this.f11494a.setSearchText("");
                this.f11494a.setSearchText(stringArrayListExtra.get(0));
            }
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity, androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (StringUtils.a((CharSequence) this.f11494a.getSearchText()) || StringUtils.a(this.f11495b, this.f11494a.getSearchText(), true) == 0) {
            super.onBackPressed();
        } else {
            this.f11494a.setSearchText("");
        }
    }

    @Override // com.callapp.contacts.activity.base.TopBarFragmentActivity, com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getIntent());
        SimpleSearchBarFragment simpleSearchBarFragment = (SimpleSearchBarFragment) getSupportFragmentManager().c(2131363764);
        this.f11494a = simpleSearchBarFragment;
        simpleSearchBarFragment.setSearchBarEventsListener(getSearchBarEvents());
        this.f11494a.b(false);
        Intent intent = getIntent();
        if (intent != null) {
            this.f11494a.setTitleText(intent.getStringExtra("search_title"));
            String stringExtra = intent.getStringExtra("PERSON_SELECT_AUTO_SEARCH_TEXT");
            this.f11495b = stringExtra;
            if (StringUtils.b((CharSequence) stringExtra)) {
                this.f11494a.setSearchTextWithOutNotifying(this.f11495b);
            }
            String stringExtra2 = intent.getStringExtra("search hint");
            String str = stringExtra2;
            if (StringUtils.a((CharSequence) stringExtra2)) {
                str = Activities.getString(2131887619);
            }
            this.f11494a.setSearchHint(str);
        }
        getIntent().getExtras();
    }

    @Override // com.callapp.contacts.activity.base.BaseActivity
    public void onHomeButtonSelected() {
        onBackPressed();
    }

    public void setHintText(String str) {
        this.f11494a.setSearchHint(str);
    }

    public void setSearchText(String str) {
        this.f11494a.setSearchText(str);
    }
}
