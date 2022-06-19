package com.telguarder.helpers.preferences;

import android.content.Context;
import android.location.Location;
import android.os.Build;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.telguarder.features.numberLookup.LookupBlockerCheckManager;
import com.telguarder.features.phoneCallWidget.CallWidgetLocation;
import com.telguarder.features.rateAndFeedback.ReportResult;
import com.telguarder.helpers.common.AppUtil;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/preferences/PreferencesManager.class */
public class PreferencesManager {
    private static PreferencesManager mInstance;

    private PreferencesManager() {
    }

    public static PreferencesManager getInstance() {
        if (mInstance == null) {
            mInstance = new PreferencesManager();
        }
        return mInstance;
    }

    private void saveCallWidgetVerticalOffset(CallWidgetLocation callWidgetLocation) {
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        preferencesConnector.saveInt(PreferencesKeys.SETTINGS_SPINNER_VERTICAL_OFFSET_OF_CALL_POPUP + Build.VERSION.SDK_INT + callWidgetLocation.toString(), callWidgetLocation.getVerticalOffset());
    }

    private void saveWidgetTooltipHideCount(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.CALL_WIDGET_TOOLTIP_HIDE_COUNT, i);
    }

    public boolean getAppRatingOptOut() {
        return PreferencesConnector.getInstance().getBoolean(PreferencesKeys.APP_RATING_AND_FEEDBACK_OPT_OUT, false);
    }

    public ReportResult getCachedBlockedNumberList() {
        return (ReportResult) new Gson().fromJson(PreferencesConnector.getInstance().getString(PreferencesKeys.CACHED_BLOCKED_NUMBER_LIST, null), (Class<Object>) ReportResult.class);
    }

    public String getCachedMCC() {
        return PreferencesConnector.getInstance().getString(PreferencesKeys.SETTINGS_CACHED_MCC, null);
    }

    public CallWidgetLocation getCallWidgetLocation() {
        String callWidgetLocation = CallWidgetLocation.AUTO.toString();
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        CallWidgetLocation valueOf = CallWidgetLocation.valueOf(preferencesConnector.getString(PreferencesKeys.SETTINGS_SPINNER_LOCATION_OF_CALL_POPUP + Build.VERSION.SDK_INT, callWidgetLocation));
        valueOf.setVerticalOffset(getCallWidgetVerticalOffset(valueOf));
        return valueOf;
    }

    public int getCallWidgetLocationCustomGravity() {
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        return preferencesConnector.getInt(PreferencesKeys.SETTINGS_SPINNER_CUSTOM_GRAVITY_OF_CALL_POPUP + Build.VERSION.SDK_INT, 16);
    }

    public int getCallWidgetVerticalOffset(CallWidgetLocation callWidgetLocation) {
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        return preferencesConnector.getInt(PreferencesKeys.SETTINGS_SPINNER_VERTICAL_OFFSET_OF_CALL_POPUP + Build.VERSION.SDK_INT + callWidgetLocation.toString(), 0);
    }

    public Location getCurrentLocation() {
        return (Location) new Gson().fromJson(PreferencesConnector.getInstance().getString(PreferencesKeys.CURRENT_COARSE_LOCATION, null), (Class<Object>) Location.class);
    }

    public int getDebugFbAdStatisticsExpiredCount() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_EXPIRED_COUNT, 0);
    }

    public int getDebugFbAdStatisticsLoadedCount() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_LOADED_COUNT, 0);
    }

    public int getDebugFbAdStatisticsLoggedImpressionCount() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_LOGGED_IMPRESSION_COUNT, 0);
    }

    public int getDebugFbAdStatisticsNoFillCount() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_NOFILL_COUNT, 0);
    }

    public LookupBlockerCheckManager.LastLookedupNumber getLastIncomingLookedupNumber() {
        return (LookupBlockerCheckManager.LastLookedupNumber) new Gson().fromJson(PreferencesConnector.getInstance().getString(PreferencesKeys.LAST_INCOMING_LOOKEDUP_NUMBER, null), (Class<Object>) LookupBlockerCheckManager.LastLookedupNumber.class);
    }

    public LookupBlockerCheckManager.LastLookedupNumber getLastOutgoingLookedupNumber() {
        return (LookupBlockerCheckManager.LastLookedupNumber) new Gson().fromJson(PreferencesConnector.getInstance().getString(PreferencesKeys.LAST_OUTGOING_LOOKEDUP_NUMBER, null), (Class<Object>) LookupBlockerCheckManager.LastLookedupNumber.class);
    }

    public long getOfflineSpamDbVersion() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.OFFLINE_SPAM_DB_VERSION, 0);
    }

    public String getPermissionReqResponse(String str) {
        return PreferencesConnector.getInstance().getString(str, null);
    }

    public boolean getSavedBlockerSwitchState() {
        return PreferencesConnector.getInstance().getBoolean(PreferencesKeys.BLOCKED_SWITCH_STATE, true);
    }

    public boolean getSettingEnabled(String str) {
        return PreferencesConnector.getInstance().getBoolean(str, true);
    }

    public String getUid() {
        return PreferencesConnector.getInstance().getString(PreferencesKeys.UNIQUE_IDENTIFICATION_NUMBER, null);
    }

    public boolean getUidWasRandom() {
        return PreferencesConnector.getInstance().getBoolean(PreferencesKeys.UNIQUE_IDENTIFICATION_NUMBER_WAS_RANDOM, false);
    }

    public boolean getUserConsentForPolicy2018() {
        boolean z = PreferencesConnector.getInstance().getBoolean(PreferencesKeys.USER_CONSENT_FOR_POLICY_2018, false);
        boolean z2 = z;
        if (!z) {
            z2 = z;
            if (PreferencesConnector.getInstance().contains(PreferencesKeys.USER_CONSENT_FOR_NUMBER_LOOKUP)) {
                saveUserConsentForPolicy2018(true);
                z2 = true;
            }
        }
        return z2;
    }

    public int getWidgetTooltipHideCount() {
        return PreferencesConnector.getInstance().getInt(PreferencesKeys.CALL_WIDGET_TOOLTIP_HIDE_COUNT, 0);
    }

    public boolean hasProtectedAppCheck() {
        return PreferencesConnector.getInstance().contains(PreferencesKeys.PROTECTED_APP_CHECK_DONE);
    }

    public boolean isCallWidgetTooltipNeeded(Context context) {
        boolean z = PreferencesConnector.getInstance().getBoolean(PreferencesKeys.CALL_WIDGET_TOOLTIP_NEEDED, true);
        if (!z) {
            int widgetTooltipHideCount = getWidgetTooltipHideCount();
            if (widgetTooltipHideCount > 10) {
                saveWidgetTooltipHideCount(1);
                return false;
            }
            int i = widgetTooltipHideCount + 1;
            saveWidgetTooltipHideCount(i);
            if (i < 10) {
                return false;
            }
            if (i == 10) {
                return true;
            }
        }
        long j = PreferencesConnector.getInstance().getLong(PreferencesKeys.FIRST_START_TIME_STAMP, AppUtil.getLastUpdateTime(context));
        if (j <= 0 || (System.currentTimeMillis() - j) / 3600000 <= 24) {
            return z;
        }
        setCallWidgetTooltipNeeded(false);
        return false;
    }

    public boolean isProtectedAppchekDone() {
        return PreferencesConnector.getInstance().getBoolean(PreferencesKeys.PROTECTED_APP_CHECK_DONE, false);
    }

    public boolean postCallScreenIsEnabled() {
        return PreferencesConnector.getInstance().getBoolean(PreferencesKeys.SETTINGS_POST_CALL_WINDOW, true);
    }

    public void saveAnalyzedNumber(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        PreferencesConnector.getInstance().saveBoolean(str, true);
    }

    public void saveAppRatingOptOut(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.APP_RATING_AND_FEEDBACK_OPT_OUT, z);
    }

    public void saveCachedBlockedNumberList(ReportResult reportResult) {
        if (reportResult == null || reportResult.numbers == null) {
            return;
        }
        ReportResult reportResult2 = new ReportResult();
        reportResult2.totalCount = reportResult.totalCount;
        reportResult2.numbers = new ArrayList<>();
        Iterator<ReportResult.ReportEntry> it = reportResult.numbers.iterator();
        while (it.hasNext()) {
            ReportResult.ReportEntry next = it.next();
            if (!next.isPlaceholderEntry()) {
                reportResult2.numbers.add(next);
            }
        }
        PreferencesConnector.getInstance().saveString(PreferencesKeys.CACHED_BLOCKED_NUMBER_LIST, new Gson().toJson(reportResult2));
    }

    public void saveCachedMCC(String str) {
        PreferencesConnector.getInstance().saveString(PreferencesKeys.SETTINGS_CACHED_MCC, str);
    }

    public void saveCallWidgetLocation(CallWidgetLocation callWidgetLocation) {
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        preferencesConnector.saveString(PreferencesKeys.SETTINGS_SPINNER_LOCATION_OF_CALL_POPUP + Build.VERSION.SDK_INT, callWidgetLocation.toString());
        saveCallWidgetVerticalOffset(callWidgetLocation);
    }

    public void saveCallWidgetLocationCustomGravity(int i) {
        PreferencesConnector preferencesConnector = PreferencesConnector.getInstance();
        preferencesConnector.saveInt(PreferencesKeys.SETTINGS_SPINNER_CUSTOM_GRAVITY_OF_CALL_POPUP + Build.VERSION.SDK_INT, i);
    }

    public void saveCurrentCoarseLocation(Location location) {
        if (location == null) {
            return;
        }
        PreferencesConnector.getInstance().saveString(PreferencesKeys.CURRENT_COARSE_LOCATION, new Gson().toJson(location));
    }

    public void saveDebugFbAdStatisticsExpiredCount(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_EXPIRED_COUNT, i);
    }

    public void saveDebugFbAdStatisticsLoadedCount(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_LOADED_COUNT, i);
    }

    public void saveDebugFbAdStatisticsLoggedImpressionCount(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_LOGGED_IMPRESSION_COUNT, i);
    }

    public void saveDebugFbAdStatisticsNoFillCount(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.DEBUG_FB_AD_STATISTICS_NOFILL_COUNT, i);
    }

    public void saveLastIncomingLookedupNumber(LookupBlockerCheckManager.LastLookedupNumber lastLookedupNumber) {
        PreferencesConnector.getInstance().saveString(PreferencesKeys.LAST_INCOMING_LOOKEDUP_NUMBER, new Gson().toJson(lastLookedupNumber));
    }

    public void saveLastOutgoingLookedupNumber(LookupBlockerCheckManager.LastLookedupNumber lastLookedupNumber) {
        PreferencesConnector.getInstance().saveString(PreferencesKeys.LAST_OUTGOING_LOOKEDUP_NUMBER, new Gson().toJson(lastLookedupNumber));
    }

    public void savePermissionReqResponse(String str, String str2) {
        PreferencesConnector.getInstance().saveString(str, str2);
    }

    public void saveProtectedAppchekDone(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.PROTECTED_APP_CHECK_DONE, z);
    }

    public void saveSettingEnabled(String str, boolean z) {
        PreferencesConnector.getInstance().saveBoolean(str, z);
    }

    public void saveUid(String str) {
        PreferencesConnector.getInstance().saveString(PreferencesKeys.UNIQUE_IDENTIFICATION_NUMBER, str);
    }

    public void saveUidWasRandom(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.UNIQUE_IDENTIFICATION_NUMBER_WAS_RANDOM, z);
    }

    public void saveUserConsentForPolicy2018(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.USER_CONSENT_FOR_POLICY_2018, z);
    }

    public void savedBlockerSwitchState(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.BLOCKED_SWITCH_STATE, z);
    }

    public void setCallWidgetTooltipNeeded(boolean z) {
        PreferencesConnector.getInstance().saveBoolean(PreferencesKeys.CALL_WIDGET_TOOLTIP_NEEDED, z);
    }

    public void setOfflineSpamDbVersion(int i) {
        PreferencesConnector.getInstance().saveInt(PreferencesKeys.OFFLINE_SPAM_DB_VERSION, i);
    }

    public boolean wasNumberAnalyzedBefore(String str) {
        boolean z = false;
        if (!TextUtils.isEmpty(str)) {
            z = false;
            if (PreferencesConnector.getInstance().getBoolean(str, false)) {
                z = true;
            }
        }
        return z;
    }
}
