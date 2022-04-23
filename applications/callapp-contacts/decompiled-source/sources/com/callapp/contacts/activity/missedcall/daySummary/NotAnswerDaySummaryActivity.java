package com.callapp.contacts.activity.missedcall.daySummary;

import com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/NotAnswerDaySummaryActivity.class */
public class NotAnswerDaySummaryActivity extends BaseDaySummaryActivity {
    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.e;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getAnalyticsTag() {
        return Constants.NOT_ANSWERED_DAY_SUMMARY_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getAnalyticsViewTag() {
        return "Not answer day summary Screen";
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.o;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getExperimentRemoteConfigName() {
        return "NotAnsweredSummaryExperiments";
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getPreferencesRemoteConfigName() {
        return "NotAnsweredSummaryPreferences";
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getSubTitleString(int i) {
        return Activities.a(2131887320, Integer.valueOf(i));
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getTitleText() {
        return Activities.getString(2131887321);
    }
}
