package com.telguarder.helpers.analytics;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.work.WorkRequest;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.telguarder.ApplicationConstants;
import com.telguarder.features.advertisements.AdvertManager;
import com.telguarder.features.advertisements.AdvertNetworkName;
import com.telguarder.features.phoneCallWidget.CallWidgetLocation;
import com.telguarder.features.postCallStatistics.LastPhoneCallActivity;
import com.telguarder.helpers.country.CountryManager;
import com.telguarder.helpers.idGenerators.UID;
import com.telguarder.helpers.preferences.PreferencesManager;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/telguarder/helpers/analytics/AnalyticsManager.class */
public class AnalyticsManager {
    private static FirebaseAnalytics mFirebaseAnalytics;
    private static AnalyticsManager mInstance;

    private AnalyticsManager() {
    }

    private String getAcceptedText(Boolean bool) {
        return bool == null ? "dismiss" : bool.booleanValue() ? "ok" : "no";
    }

    private String getDelayStep(long j) {
        return j < 100 ? "less_than_100ms" : j < 200 ? "between_100ms_and_200ms" : j < 300 ? "between_200ms_and_300ms" : j < 400 ? "between_300ms_and_400ms" : j < 500 ? "between_400ms_and_500ms" : j < 1000 ? "between_500ms_and_1000ms" : j < 2000 ? "between_1000ms_and_2000ms" : j < 3000 ? "between_2000ms_and_3000ms" : j < 4000 ? "between_3000ms_and_4000ms" : j < ApplicationConstants.CALL_WIDGET_TOOLTIP_HIDE_DELAY ? "between_4000ms_and_5000ms" : j < 6000 ? "between_5000ms_and_6000ms" : j < 7000 ? "between_6000ms_and_7000ms" : j < 8000 ? "between_7000ms_and_8000ms" : j < 9000 ? "between_8000ms_and_9000ms" : j < WorkRequest.MIN_BACKOFF_MILLIS ? "between_9000ms_and_10000ms" : j < 20000 ? "between_10000ms_and_20000ms" : j < WorkRequest.DEFAULT_BACKOFF_DELAY_MILLIS ? "between_20000ms_and_30000ms" : "more_than_30000ms";
    }

    public static AnalyticsManager getInstance() {
        AnalyticsManager analyticsManager;
        synchronized (AnalyticsManager.class) {
            try {
                if (mInstance == null) {
                    mInstance = new AnalyticsManager();
                }
                analyticsManager = mInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return analyticsManager;
    }

    private String getSwitchLabel(boolean z) {
        return z ? "on" : "off";
    }

    private String getUrlAsParamName(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        String replaceAll = str.replaceAll("/", "_").replaceAll("/[^A-Za-z0-9_]/", "");
        String str2 = replaceAll;
        if (replaceAll.length() > 39) {
            str2 = replaceAll.substring(0, 39);
        }
        return str2;
    }

    private String nameWithLimit(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (str.length() > 40) {
                str2 = str.substring(0, 40);
            }
        }
        return str2;
    }

    private Bundle priceParam(double d) {
        Bundle bundle = new Bundle();
        bundle.putDouble("value", d / 1000.0d);
        bundle.putString(FirebaseAnalytics.Param.CURRENCY, "USD");
        return bundle;
    }

    private void sendConsentCancelDeviceAction(Context context) {
        Bundle bundle = new Bundle();
        bundle.putString("id", valueWithLimit(UID.uid(context)));
        sendEvent("popup_cons_not_approved", bundle);
    }

    private void sendEvent(String str, Bundle bundle) {
        if (mFirebaseAnalytics == null || TextUtils.isEmpty(str)) {
            return;
        }
        mFirebaseAnalytics.logEvent(nameWithLimit(str), bundle);
    }

    private String valueWithLimit(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (str.length() > 100) {
                str2 = str.substring(0, 100);
            }
        }
        return str2;
    }

    public void initAnalytics(Context context) {
        mFirebaseAnalytics = FirebaseAnalytics.getInstance(context);
    }

    public void sendAddToContactsAction(String str) {
        sendEvent("share_add_contact", null);
    }

    public void sendAdvertBackPressedAction(String str) {
        sendEvent("ad_back_" + str, null);
        sendEvent("ad_back_unified", null);
    }

    public void sendAdvertCancelAction(String str) {
        sendEvent("ad_cancel_" + str, null);
        sendEvent("ad_cancel_unified", null);
    }

    public void sendAdvertClickedAction(String str) {
        sendEvent("ad_clicked_" + str, null);
        sendEvent("ad_clicked_unified", null);
        if (AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase().equals(str)) {
            sendEvent("ad_clicked_pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName, null);
        }
    }

    public void sendAdvertConnectionLimitErrorAction(String str) {
        sendEvent("ad_error_connection_limit_" + str, null);
        sendEvent("ad_error_connection_unified", null);
    }

    public void sendAdvertDeprecatedSDKErrorAction(String str) {
        sendEvent("ad_error_deprecated_sdk_" + str, null);
        sendEvent("ad_deprecated_sdk_unified", null);
    }

    public void sendAdvertErrorAction(String str) {
        sendEvent("ad_error_" + str, null);
        sendEvent("ad_error_unified", null);
    }

    public void sendAdvertExpiredAction(String str) {
        sendEvent("ad_expired_" + str, null);
        sendEvent("ad_expired_unified", null);
    }

    public void sendAdvertFetchSignalStetErrorAction(String str) {
        sendEvent("ad_fetch_signal_error_" + str, null);
        sendEvent("ad_fetch_signal_unified", null);
    }

    public void sendAdvertHomePressedAction(String str) {
        sendEvent("ad_home_" + str, null);
        sendEvent("ad_home_unified", null);
    }

    public void sendAdvertHttpErrorAction(String str) {
        sendEvent("ad_error_http_" + str, null);
        sendEvent("ad_error_http_unified", null);
    }

    public void sendAdvertIcsParseErrorAction(String str) {
        sendEvent("ad_error_ics_parse_" + str, null);
        sendEvent("ad_error_ics_unified", null);
    }

    public void sendAdvertImpressionLoggedAction(String str) {
        sendEvent("ad_impr_lgd_" + str, null);
        sendEvent("ad_impr_lgd_unified", null);
    }

    public void sendAdvertInternalErrorAction(String str) {
        sendEvent("ad_error_int_" + str, null);
        sendEvent("ad_error_int_unified", null);
    }

    public void sendAdvertInvalidResponseErrorAction(String str) {
        sendEvent("ad_invalid_response_" + str, null);
        sendEvent("ad_invalid_response_unified", null);
    }

    public void sendAdvertJsonParseErrorAction(String str) {
        sendEvent("ad_error_json_parse_" + str, null);
        sendEvent("ad_error_json_parse_unified", null);
    }

    public void sendAdvertLayoutErrorAction(String str) {
        sendEvent("ad_error_layout_" + str, null);
        sendEvent("ad_error_layout_unified", null);
    }

    public void sendAdvertLoadedAction(String str) {
        sendEvent("ad_received_" + str, null);
        sendEvent("ad_received_unified", null);
        if (AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase().equals(str)) {
            sendEvent("ad_received_pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName, null);
        }
        if (!LastPhoneCallActivity.isInstantiated() || LastPhoneCallActivity.getInstance().mPostcallStartTimeStamp == null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis() - LastPhoneCallActivity.getInstance().mPostcallStartTimeStamp.longValue();
        if (currentTimeMillis <= 0) {
            return;
        }
        AdvertManager.addAdNetworkFlowDebugInfo("ad shown after " + currentTimeMillis + "ms from page start");
        String str2 = currentTimeMillis < 100 ? "ad_dly_100_" : currentTimeMillis < 200 ? "ad_dly_200_" : currentTimeMillis < 300 ? "ad_dly_300_" : currentTimeMillis < 400 ? "ad_dly_400_" : currentTimeMillis < 500 ? "ad_dly_500_" : currentTimeMillis < 1000 ? "ad_dly_1000_" : currentTimeMillis < 2000 ? "ad_dly_2000_" : currentTimeMillis < 3000 ? "ad_dly_3000_" : currentTimeMillis < 4000 ? "ad_dly_4000_" : "ad_dly_5000x_";
        sendEvent(str2 + str, null);
        sendEvent(str2 + "unified", null);
        if (!AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase().equals(str)) {
            return;
        }
        sendEvent(str2 + "pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName, null);
    }

    public void sendAdvertMIssingDepErrorAction(String str) {
        sendEvent("ad_missing_dep_" + str, null);
        sendEvent("ad_missing_dep_unified", null);
    }

    public void sendAdvertMOnetizationDisabledErrorAction(String str) {
        sendEvent("ad_mon_dis_" + str, null);
        sendEvent("ad_mon_dis_unified", null);
    }

    public void sendAdvertMediaErrorAction(String str) {
        sendEvent("ad_error_media_" + str, null);
        sendEvent("ad_error_media_unified", null);
    }

    public void sendAdvertMissedAction(String str) {
        sendEvent("ad_missed_" + str, null);
        sendEvent("ad_missed_unified", null);
    }

    public void sendAdvertNetworkErrorAction(String str) {
        sendEvent("ad_error_net_" + str, null);
        sendEvent("ad_error_net_unified", null);
    }

    public void sendAdvertNoFillErrorAction(String str) {
        sendEvent("ad_no_fill_" + str, null);
        sendEvent("ad_no_fill_unified", null);
    }

    public void sendAdvertOpenedAction(String str) {
        sendEvent("ad_opened_" + str, null);
        sendEvent("ad_opened_unified", null);
        if (AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase().equals(str)) {
            sendEvent("ad_opened_pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName, null);
        }
    }

    public void sendAdvertPermissionsErrorAction(String str) {
        sendEvent("ad_error_permission_" + str, null);
        sendEvent("ad_error_permission_unified", null);
    }

    public void sendAdvertRefreshWithNewBannerAction(String str) {
        sendEvent("ad_refresh_with_new_banner_" + str, null);
        sendEvent("ad_refresh_unified", null);
    }

    public void sendAdvertRequestInvalidErrorAction(String str) {
        sendEvent("ad_req_invalid_" + str, null);
        sendEvent("ad_req_invalid_unified", null);
    }

    public void sendAdvertRequestTimeoutErrorAction(String str) {
        sendEvent("ad_req_timeout_" + str, null);
        sendEvent("ad_req_timeout_unified", null);
    }

    public void sendAdvertRequestedAction(String str) {
        sendEvent("ad_requested_" + str, null);
        sendEvent("ad_requested_unified", null);
    }

    public void sendAdvertSDKErrorAction(String str) {
        sendEvent("ad_error_sdk_" + str, null);
        sendEvent("ad_error_sdk_unified", null);
    }

    public void sendAdvertScreenOffAction(String str) {
        sendEvent("ad_screen_off_" + str, null);
        sendEvent("ad_screen_off_unified", null);
    }

    public void sendAdvertServerErrorAction(String str) {
        sendEvent("ad_error_srv_" + str, null);
        sendEvent("ad_error_srv_unified", null);
    }

    public void sendAdvertTimeoutAction(String str) {
        sendEvent("ad_timeout_" + str, null);
        sendEvent("ad_timeout_unified", null);
    }

    public void sendAdvertTooFrequentErrorAction(String str) {
        sendEvent("ad_freq_load_" + str, null);
        sendEvent("ad_freq_load_unified", null);
    }

    public void sendAdvertVisibilityTimeAction(String str, long j, int i) {
        if (j > 0) {
            String str2 = j < 500 ? "ad_vis_500_" : j < 1000 ? "ad_vis_500_1000_" : "ad_vis_1000_";
            sendEvent(str2 + str, null);
            sendEvent(str2 + "unified", null);
            if (AdvertNetworkName.PM_OPENWRAP_DFP.toString().toLowerCase().equals(str)) {
                sendEvent(str2 + "pm_ow_dfp_" + AdvertManager.getInstance().mLastOwDfpNetworkName, null);
            }
        }
        if (i == -1) {
            sendEvent("ad_area_error_" + str, null);
            sendEvent("ad_area_error_unified", null);
        } else if (i < 50) {
            sendEvent("ad_area_blw_50_" + str, null);
            sendEvent("ad_area_blw_50_unified", null);
        } else {
            sendEvent("ad_area_50_plus_" + str, null);
            sendEvent("ad_area_50_plus_unified", null);
            if (j < 1000) {
                return;
            }
            sendEvent("ad_impr_int_" + str, null);
            sendEvent("ad_impr_int_unified", null);
        }
    }

    public void sendAnalysePageOpenError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_analyse_open_error", bundle);
    }

    public void sendAnalysePageOpenSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_analyse_open_success", bundle);
    }

    public void sendAnalysePagePreloadError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_analyse_preload_error", bundle);
    }

    public void sendAnalysePagePreloadSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_analyse_preload_success", bundle);
    }

    public void sendAnalyzeDeepLinkOpen() {
        sendEvent("call_detection_anal_deep_lnk_opn", null);
    }

    public void sendApiReqMccAction(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(getUrlAsParamName(str), str2);
        sendEvent("api_req_network_info", bundle);
    }

    public void sendArcMenuSelection(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString("page", valueWithLimit(str));
        sendEvent("arc_menu_" + str2, bundle);
    }

    public void sendBackendErrorResponseAction(String str, String str2, int i) {
        String str3;
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = str2 + ":";
        }
        sb.append(str3);
        sb.append(str);
        bundle.putString(nameWithLimit(getUrlAsParamName(sb.toString())), valueWithLimit("http_status: " + i));
        sendEvent("backend_error_response", bundle);
    }

    public void sendBackendErrorResponseAction(String str, String str2, String str3) {
        String str4;
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str4 = "";
        } else {
            str4 = str2 + ":";
        }
        sb.append(str4);
        sb.append(str);
        bundle.putString(nameWithLimit(getUrlAsParamName(sb.toString())), valueWithLimit("error_msg: " + valueWithLimit(str3)));
        sendEvent("backend_error_response", bundle);
    }

    public void sendBackendResponseRegionAction(String str, String str2, String str3, Long l, String str4) {
        String str5;
        StringBuilder sb = new StringBuilder();
        String str6 = str3;
        if (TextUtils.isEmpty(str3)) {
            str6 = "NO";
        }
        sb.append(str6);
        sb.append(" (");
        sb.append(str4);
        sb.append(")");
        String sb2 = sb.toString();
        Bundle bundle = new Bundle();
        StringBuilder sb3 = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str5 = "";
        } else {
            str5 = str2 + ":";
        }
        sb3.append(str5);
        sb3.append(str);
        bundle.putString(nameWithLimit(getUrlAsParamName(sb3.toString())), valueWithLimit(sb2));
        sendEvent("backend_response_region", bundle);
    }

    public void sendBackendResponseRegionXAction(String str, String str2, String str3, Long l, String str4) {
        String str5;
        StringBuilder sb = new StringBuilder();
        String str6 = str3;
        if (TextUtils.isEmpty(str3)) {
            str6 = "NO";
        }
        sb.append(str6);
        sb.append(" (");
        sb.append(str4);
        sb.append(")");
        String sb2 = sb.toString();
        Bundle bundle = new Bundle();
        StringBuilder sb3 = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str5 = "";
        } else {
            str5 = str2 + ":";
        }
        sb3.append(str5);
        sb3.append(str);
        bundle.putString(nameWithLimit(getUrlAsParamName(sb3.toString())), valueWithLimit(sb2));
        sendEvent("backend_response_region_X", bundle);
    }

    public void sendBackendSlowResponseAction(String str, String str2, long j) {
        String str3;
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = str2 + ":";
        }
        sb.append(str3);
        sb.append(str);
        bundle.putString(nameWithLimit(sb.toString()), getDelayStep(j));
        sendEvent("backend_slow_response", bundle);
    }

    public void sendBackendXResponseAction(String str, String str2, long j) {
        String str3;
        Bundle bundle = new Bundle();
        StringBuilder sb = new StringBuilder();
        if (TextUtils.isEmpty(str2)) {
            str3 = "";
        } else {
            str3 = str2 + ":";
        }
        sb.append(str3);
        sb.append(str);
        bundle.putString(nameWithLimit(getUrlAsParamName(sb.toString())), String.valueOf(j));
        sendEvent("backend_x_response_time", bundle);
    }

    public void sendCallAction(String str) {
        sendEvent("contact_call", null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public void sendCallLength(long j) {
        String str;
        if (j > 180) {
            sendEvent("call_duration_180_x", null);
            return;
        }
        char c = 0;
        while (true) {
            if (c > j) {
                str = null;
                break;
            }
            ?? r0 = c + '\n';
            c = r0;
            if (r0 >= j) {
                str = "call_duration_" + (r0 - 10) + "_" + ((long) r0);
                break;
            }
        }
        sendEvent(str, null);
    }

    public void sendCallStatisticsCallHistoryAction() {
        sendEvent("call_stat_call_history", null);
    }

    public void sendCallStatisticsCounterAction() {
        sendEvent("call_stat_count_summary", null);
    }

    public void sendCallStatisticsDailyCallStatAction(String str) {
        sendEvent("call_stat_daily_" + str, null);
    }

    public void sendCallStatisticsDurationAction() {
        sendEvent("call_stat_last_call_dur_sum", null);
    }

    public void sendCallStatisticsPageOpenedFromAction(String str) {
        sendEvent("call_stat_from_" + str, null);
    }

    public void sendCallStatisticsScrollAction() {
        sendEvent("call_stat_scroll_dragging", null);
    }

    public void sendKeepaliveAborted(long j) {
        sendEvent(j - ((long) AdvertManager.getKeepAliveDuration()) > 180 ? "keepalive_aborted" : "keepalive_not_aborted", null);
    }

    public void sendLegalInfoPageOpenError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_legalinfo_open_error", bundle);
    }

    public void sendLegalInfoPageOpenSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_legalinfo_open_success", bundle);
    }

    public void sendLookupApprovedByUser(boolean z) {
        sendEvent(z ? "call_detection_acceptance_ok" : "call_detection_acceptance_na", null);
    }

    public void sendLookupBlockNotification() {
        sendEvent("call_detection_blocked_ntf", null);
    }

    public void sendLookupBlockerCheckPopupClickAction(String str) {
        sendEvent("popup_click_" + str, null);
    }

    public void sendLookupBlockerCheckPopupError(String str) {
        sendEvent(str + "_popup_error", null);
    }

    public void sendLookupBlockerCheckPopupShowAction(String str) {
        sendEvent("popup_show_" + str, null);
    }

    public void sendLookupClickBlockNotification() {
        sendEvent("call_detection_blocked_ntf_clckd", null);
    }

    public void sendLookupClickIncomingNotification() {
        sendEvent("call_detection_incmng_ntf_clckd", null);
    }

    public void sendLookupClickMissedNotification() {
        sendEvent("call_detection_missed_ntf_clckd", null);
    }

    public void sendLookupClickNotification() {
        sendEvent("call_detection_ntf_clckd", null);
    }

    public void sendLookupClickOutgoingNotification() {
        sendEvent("call_detection_outgng_ntf_clckd", null);
    }

    public void sendLookupContactsSettingChanged(boolean z) {
        String switchLabel = getSwitchLabel(z);
        sendEvent("settings_lookup_contacts_" + switchLabel, null);
    }

    public void sendLookupIdentification(Boolean bool) {
        String str = bool == null ? "failed" : bool.booleanValue() ? "identified" : "not_identified";
        sendEvent("call_detection_" + str, null);
    }

    public void sendLookupIdentificationBlockedNumber() {
        sendEvent("call_detection_blocked", null);
    }

    public void sendLookupIdentificationHiddenNumber() {
        sendEvent("call_detection_hidden", null);
    }

    public void sendLookupIdentificationOfflineSpam() {
        sendEvent("call_detection_offln_spm", null);
    }

    public void sendLookupIncomingNotification() {
        sendEvent("call_detection_incmng_ntf", null);
    }

    public void sendLookupIncomingSettingChanged(boolean z) {
        String switchLabel = getSwitchLabel(z);
        sendEvent("settings_lookup_incoming_" + switchLabel, null);
    }

    public void sendLookupMissedNotification() {
        sendEvent("call_detection_missed_ntf", null);
    }

    public void sendLookupNotification() {
        sendEvent("call_detection_ntf", null);
    }

    public void sendLookupOutgoingNotification() {
        sendEvent("call_detection_outgng_ntf", null);
    }

    public void sendLookupOutgoingSettingChanged(boolean z) {
        String switchLabel = getSwitchLabel(z);
        sendEvent("settings_lookup_outgoing_" + switchLabel, null);
    }

    public void sendLookupRoamingSettingChanged(boolean z) {
        String switchLabel = getSwitchLabel(z);
        sendEvent("settings_lookup_roaming_" + switchLabel, null);
    }

    public void sendLookupSpamAlert(String str) {
        if (!TextUtils.isEmpty(str)) {
            sendEvent("call_detect_spam_" + str, null);
        }
    }

    public void sendNumberReportAdd(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_add", bundle);
    }

    public void sendNumberReportAddError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_add_error", bundle);
    }

    public void sendNumberReportApiCalled(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_api_called", bundle);
    }

    public void sendNumberReportDelete(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_delete", bundle);
    }

    public void sendNumberReportDeleteApiCalled(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_delete_api_called", bundle);
    }

    public void sendNumberReportDeleteError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("number", str);
        sendEvent("number_report_delete_error", bundle);
    }

    public void sendOwDfpBidResponse(String str, double d) {
        sendEvent("ad_bid_response_pm_ow_dfp_" + str, priceParam(d));
    }

    public void sendOwDfpPartnerWinAction(String str, double d) {
        sendEvent("ad_bid_winner_pm_ow_dfp_" + str, priceParam(d));
    }

    public void sendOwDfpRequestedWithBidDataAction(String str, double d) {
        sendEvent("ad_request_bid_pm_ow_dfp_" + str, priceParam(d));
    }

    public void sendPhoneLanguageVsBackendParamLangCode() {
        String deviceLanguageTag = CountryManager.getInstance().getDeviceLanguageTag();
        String deviceLanguage = CountryManager.getInstance().getDeviceLanguage();
        Bundle bundle = new Bundle();
        bundle.putString(deviceLanguageTag.replace("-", ""), deviceLanguage);
        sendEvent("language_support", bundle);
    }

    public void sendPolicyPageOpenError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_policy_open_error", bundle);
    }

    public void sendPolicyPageOpenSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_policy_open_success", bundle);
    }

    public void sendPopupFeedbackAction(Boolean bool) {
        String acceptedText = getAcceptedText(bool);
        Bundle bundle = new Bundle();
        bundle.putString("result", acceptedText);
        sendEvent("popup_feedback_" + acceptedText, bundle);
    }

    public void sendPopupLocationSettingChanged(CallWidgetLocation callWidgetLocation) {
        String lowerCase = callWidgetLocation.toString().toLowerCase(Locale.ENGLISH);
        sendEvent("settings_popup_location_" + lowerCase, null);
    }

    public void sendPopupNumberLookupAction(Context context, Boolean bool) {
        String acceptedText = getAcceptedText(bool);
        Bundle bundle = new Bundle();
        bundle.putString("result", acceptedText);
        sendEvent("popup_num_lkp_cons_" + acceptedText, bundle);
        if (bool == null || !bool.booleanValue()) {
            sendConsentCancelDeviceAction(context);
        }
    }

    public void sendPopupRatingAction(Boolean bool) {
        String acceptedText = getAcceptedText(bool);
        Bundle bundle = new Bundle();
        bundle.putString("result", acceptedText);
        sendEvent("popup_rating_" + acceptedText, bundle);
    }

    public void sendPostCallCallBackAction(String str) {
        sendEvent("contact_postcall_callback", null);
    }

    public void sendPostCallWindowSettingChanged(boolean z) {
        String switchLabel = getSwitchLabel(z);
        sendEvent("settings_post_call_window_" + switchLabel, null);
    }

    public void sendPreferencesCommitError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_KEY, valueWithLimit(str));
        sendEvent("preferences_commit_error", bundle);
    }

    public void sendPreferencesFileOpenError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("file", valueWithLimit(str));
        sendEvent("preferences_file_open_error", bundle);
    }

    public void sendPreferencesGetError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_KEY, valueWithLimit(str));
        sendEvent("preferences_get_error", bundle);
    }

    public void sendPreferencesRemoveError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString(SDKConstants.PARAM_KEY, valueWithLimit(str));
        sendEvent("preferences_remove_error", bundle);
    }

    public void sendRuntimePermissionReqResult(String str, boolean z, boolean z2) {
        String replace = str.replace("android.permission.", "");
        String str2 = z ? "GRANTED" : z2 ? "DENIED_NEVER_ASK_AGAIN" : "DENIED";
        if (!str2.equals(PreferencesManager.getInstance().getPermissionReqResponse(replace))) {
            PreferencesManager.getInstance().savePermissionReqResponse(replace, str2);
            Bundle bundle = new Bundle();
            bundle.putString(replace, str2);
            sendEvent("runtime_perm_req_result", bundle);
        }
    }

    public void sendShareAction(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("shareableText", valueWithLimit(str));
        sendEvent("share", bundle);
    }

    public void sendSmsAction(String str) {
        sendEvent("contact_sms", null);
    }

    public void sendSuggestedActorSelectedAction(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("suggestedActorId", valueWithLimit(str));
        sendEvent("autocomplete_actor_suggested", bundle);
    }

    public void sendTcfConsentAvailable() {
        sendEvent("tcf_available", null);
    }

    public void sendTcfConsentInfoReqError() {
        sendEvent("tcf_inf_req_error", null);
    }

    public void sendTcfConsentInfoReqException() {
        sendEvent("tcf_inf_req_exception", null);
    }

    public void sendTcfConsentLoadFormError() {
        sendEvent("tcf_load_form_error", null);
    }

    public void sendTcfConsentLoadFormException() {
        sendEvent("tcf_load_form_exception", null);
    }

    public void sendTcfConsentNotAvailable() {
        sendEvent("tcf_not_available", null);
    }

    public void sendTcfConsentStatus(String str) {
        sendEvent("tcf_status_" + str, null);
    }

    public void sendTrendingPageOpenError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_trending_open_error", bundle);
    }

    public void sendTrendingPageOpenSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_trending_open_success", bundle);
    }

    public void sendTrendingPagePreloadError(String str) {
        Bundle bundle = new Bundle();
        bundle.putString("errorType", str);
        sendEvent("webview_trending_preload_error", bundle);
    }

    public void sendTrendingPagePreloadSuccess(long j) {
        String delayStep = getDelayStep(j);
        Bundle bundle = new Bundle();
        bundle.putString("delay", delayStep);
        sendEvent("webview_trending_preload_success", bundle);
    }

    public void sendWidgetIsClosedAutoAction() {
        sendEvent("call_detection_closed_auto", null);
    }

    public void sendWidgetIsClosedByUserAction() {
        sendEvent("call_detection_closed_by_user", null);
    }

    public void sendWidgetIsClosedLookupCancelAction() {
        sendEvent("call_detection_closed_lkp_cancel", null);
    }
}
