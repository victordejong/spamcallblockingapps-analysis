package com.callapp.contacts.activity.missedcall.missedAnswer;

import android.os.Bundle;
import com.callapp.contacts.activity.missedcall.activity.BaseCallActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.manager.analytics.AnalyticsManager;
import com.callapp.contacts.model.Constants;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/missedAnswer/NotAnsweredActivity.class */
public class NotAnsweredActivity extends BaseCallActivity {
    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.e;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseCallActivity
    public String getAnalyticsTag() {
        return Constants.NOT_ANSWER_CATEGORY;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.o;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getExperimentRemoteConfigName() {
        return "NotAnsweredExperiments";
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getPreferencesRemoteConfigName() {
        return "NotAnsweredPreferences";
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseCallActivity
    public int getSubTitleId() {
        return 2131886770;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseCallActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        AnalyticsManager.get().b(Constants.NOT_ANSWER_SCREEN);
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseCallActivity, com.callapp.contacts.util.BaseAdTransparentActivity, com.callapp.contacts.activity.base.BaseActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        AnalyticsManager.get().a(Constants.CATEGORY_SCREEN, Constants.ACTION_SCREEN_CLOSE, Constants.NOT_ANSWER_SCREEN);
        super.onDestroy();
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseCallActivity
    public boolean shouldUpdateCallButtion() {
        return true;
    }
}
