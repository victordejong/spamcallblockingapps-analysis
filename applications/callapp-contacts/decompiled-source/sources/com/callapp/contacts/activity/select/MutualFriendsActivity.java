package com.callapp.contacts.activity.select;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.callapp.contacts.activity.base.BaseListActivity;
import com.callapp.contacts.activity.select.BasePersonAdapter;
import com.callapp.contacts.api.helper.facebook.FacebookHelper;
import com.callapp.contacts.api.helper.foursquare.FoursquareHelper;
import com.callapp.contacts.api.helper.instagram.InstagramHelper;
import com.callapp.contacts.api.helper.pinterest.PinterestHelper;
import com.callapp.contacts.api.helper.twitter.TwitterHelper;
import com.callapp.contacts.api.helper.vk.VKHelper;
import com.callapp.contacts.manager.FeedbackManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.manager.task.OutcomeListener;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.model.PersonData;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.http.HttpUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/select/MutualFriendsActivity.class */
public class MutualFriendsActivity extends BaseListActivity {
    static /* synthetic */ void a(Activity activity, PersonData personData) {
        int type = personData.getType();
        if (type == 1) {
            FacebookHelper facebookHelper = FacebookHelper.get();
            if (!HttpUtils.a()) {
                FeedbackManager.a(activity);
            } else if (personData == null) {
            } else {
                if (StringUtils.b((CharSequence) personData.getPublicProfileUrl())) {
                    facebookHelper.a(activity, personData.getPublicProfileUrl(), (Runnable) null);
                } else {
                    facebookHelper.a((Context) activity, personData.getId(), (Runnable) null, (OutcomeListener) null);
                }
            }
        } else if (type == 4) {
            TwitterHelper.a(activity, personData.getId(), (Runnable) null);
        } else if (type == 6) {
            FoursquareHelper.a(activity, personData.getId(), (Runnable) null);
        } else if (type == 7) {
            InstagramHelper.get().b(activity, personData.getId(), (Runnable) null);
        } else if (type == 9) {
            PinterestHelper.a(activity, personData.getUserName(), (Runnable) null);
        } else if (type == 10) {
            VKHelper.a(activity, personData.getId(), (Runnable) null);
        }
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity
    public int getLayoutResourceId() {
        return 2131558454;
    }

    @Override // com.callapp.contacts.activity.base.BaseTopBarActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        Intent intent = getIntent();
        if (intent == null || intent.getExtras() == null) {
            finish();
            return;
        }
        ArrayList parcelableArrayList = intent.getExtras().getParcelableArrayList("PERSON_SELECT_LIST_KEY");
        if (parcelableArrayList == null || parcelableArrayList.isEmpty()) {
            finish();
            return;
        }
        setKeyguardDismissAndScreenWindowFlags();
        super.onCreate(bundle);
        getSupportActionBar().a(true);
        setTitle(Activities.getString(2131887261));
        getBaseListFunctions().setListAdapter(new MutualFriendsAdapter(parcelableArrayList, new BasePersonAdapter.ItemSelectListener() { // from class: com.callapp.contacts.activity.select.MutualFriendsActivity.1
            @Override // com.callapp.contacts.activity.select.BasePersonAdapter.ItemSelectListener
            public final void a(PersonData personData) {
                if (personData != null) {
                    AnalyticsManager.get().a(Constants.CONTACT_DETAILS, "Open profile from mutual", Constants.CLICK);
                    MutualFriendsActivity.a(MutualFriendsActivity.this, personData);
                }
            }
        }));
    }
}
