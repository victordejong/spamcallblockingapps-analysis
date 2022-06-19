package com.callapp.contacts.activity.missedcall.daySummary;

import com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.model.Constants;
import com.callapp.contacts.util.Activities;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/activity/missedcall/daySummary/MissedCallDaySummaryActivity.class */
public class MissedCallDaySummaryActivity extends BaseDaySummaryActivity {
    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getAdUnitIdRemoteConfigName() {
        return CallAppRemoteConfigManager.f25616d;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getAnalyticsTag() {
        return Constants.MISSED_CALL_DAY_SUMMARY_OVERLAY;
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getAnalyticsViewTag() {
        return "Missed call day summary Screen";
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getBiddingRemoteConfigName() {
        return CallAppRemoteConfigManager.f25626n;
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getExperimentRemoteConfigName() {
        return "MissedCallSummaryExperiments";
    }

    @Override // com.callapp.contacts.util.BaseAdTransparentActivity
    public String getPreferencesRemoteConfigName() {
        return "MissedCallSummaryPreferences";
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getSubTitleString(int i) {
        return Activities.m27697a(2131887210, Integer.valueOf(i));
    }

    @Override // com.callapp.contacts.activity.missedcall.activity.BaseDaySummaryActivity
    public String getTitleText() {
        return Activities.getString(2131888250);
    }
}
