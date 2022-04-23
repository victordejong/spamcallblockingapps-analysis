package com.privacystar.core.service;

import android.content.Context;
import com.privacystar.core.C1566R;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.activity_log.LogGrouping;
import com.privacystar.core.data.blocking.protection.ProtectionLevel;
import com.privacystar.core.service.network.handler.BlockListGetHandler;
import org.apache.commons.cli.HelpFormatter;
import timber.log.Timber;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/PreferenceUtil.class */
public class PreferenceUtil {
    public static boolean getAGAlertsEnabled() {
        return PreferenceService.getBoolean(Preferences.AG_ALERTS_ENABLED, true);
    }

    public static boolean getAGServiceConfigured() {
        return PreferenceService.getBoolean(Preferences.AG_SERVICE_CONFIGURED, false);
    }

    public static boolean getAGServiceEligible() {
        return PreferenceService.getBoolean(Preferences.AG_SERVICE_ELIGIBLE, false);
    }

    public static boolean getAGServiceEnabled() {
        return PreferenceService.getBoolean(Preferences.AG_SERVICE_ENABLED, true);
    }

    public static String getAGState() {
        return PreferenceService.getString(Preferences.AG_STATE, HelpFormatter.DEFAULT_LONG_OPT_PREFIX);
    }

    public static boolean getAGStateSet() {
        return PreferenceService.getBoolean(Preferences.AG_STATE_SET, false);
    }

    public static boolean getActivationScreenVisited() {
        return PreferenceService.getBoolean(Preferences.ACTIVATION_SCREEN_VISITED, false);
    }

    public static LogGrouping getActivityLogGrouping() {
        return LogGrouping.fromValue(PreferenceService.getInt(Preferences.ACTIVITY_LOG_GROUPING, LogGrouping.NONE.getValue()));
    }

    public static boolean getActivityLogLoaded() {
        return PreferenceService.getBoolean(Preferences.ACTIVITY_LOG_LOADED, false);
    }

    public static String getAnalyticsPath() {
        return PreferenceService.getString(Preferences.ANALYTICS_PATH, getContext().getString(C1566R.string.path_analytics));
    }

    public static String getAnalyticsUrl() {
        return PreferenceService.getString(Preferences.ANALYTICS_URL, getContext().getString(C1566R.string.url_analytics));
    }

    public static boolean getApplicationEnabled() {
        return PreferenceService.getBoolean(Preferences.APPLICATION_ENABLED, true);
    }

    public static boolean getArePurchasesDoubleChecked() {
        return PreferenceService.getBoolean(Preferences.ARE_PURCHASES_DOUBLE_CHECKED, false);
    }

    public static boolean getAreStartupMessagesEnabled() {
        return PreferenceService.getBoolean(Preferences.ARE_STARTUP_MESSAGES_ENABLED, false);
    }

    public static String getBlockListRestoreState() {
        return PreferenceService.getString(Preferences.BLOCK_LIST_RESTORE_STATE, BlockListGetHandler.BlockListRestoreState.UNRESTORED.getValue());
    }

    public static boolean getBlockNotificationEnabled() {
        return PreferenceService.getBoolean(Preferences.BLOCK_NOTIFICATION_ENABLED, true);
    }

    public static boolean getBulkLookupPerformed() {
        return PreferenceService.getBoolean(Preferences.BULK_LOOKUP_PERFORMED, false);
    }

    public static String getCWTransactionID() {
        return PreferenceService.getString(Preferences.CW_TRANSACTION_ID, "");
    }

    public static String getCYDChallengeKey() {
        return PreferenceService.getString(Preferences.CYD_CHALLENGE_KEY, "");
    }

    public static String getCYDChallengeSearchText() {
        return PreferenceService.getString(Preferences.CYD_CHALLENGE_SEARCH_TEXT, "");
    }

    public static boolean getCYDNumberAutomaticallyRead() {
        return PreferenceService.getBoolean(Preferences.CYD_NUMBER_AUTOMATICALLY_READ, true);
    }

    public static boolean getCYDVerificationStarted() {
        return PreferenceService.getBoolean(Preferences.CYD_VERIFICATION_STARTED, false);
    }

    public static int getCallCenterX() {
        return PreferenceService.getInt(Preferences.CALLER_ID_POSITION_X, 0);
    }

    public static int getCallCenterY() {
        return PreferenceService.getInt(Preferences.CALLER_ID_POSITION_Y, -1);
    }

    public static int getCallReceiverIntentCount() {
        return PreferenceService.getInt(Preferences.CALL_RECEIVER_INTENT_COUNT, 0);
    }

    public static boolean getCallSilenced() {
        return PreferenceService.getBoolean(Preferences.CALL_SILENCED, false);
    }

    public static boolean getCallerGroupingEnabled() {
        return PreferenceService.getBoolean(Preferences.GROUP_CALLERS_IN_LOG, false);
    }

    public static int getCarrierId() {
        return PreferenceService.getInt(Preferences.CARRIER_ID, -1);
    }

    public static String getConnectivityUrl() {
        return PreferenceService.getString(Preferences.CONNECTIVITY_URL, getContext().getString(C1566R.string.url_connectivity));
    }

    private static Context getContext() {
        return PSApplication.context();
    }

    public static long getCurrentOffenderDeltaControlNumber() {
        return PreferenceService.getLong(Preferences.CURRENT_OFFENDER_DELTA_CONTROL_NUMBER, -1L);
    }

    public static String getCurrentOffenderDeltaShortName() {
        return PreferenceService.getString(Preferences.CURRENT_OFFENDER_DELTA_SHORT_NAME, "");
    }

    public static boolean getCustomProtectionEnabled() {
        return PreferenceService.getBoolean(Preferences.CUSTOM_PROTECTION_ENABLED, false);
    }

    public static String getCydFirebaseToken() {
        return PreferenceService.getString(Preferences.CYD_FIREBASE_TOKEN, "");
    }

    public static int getDPIResultCode() {
        return PreferenceService.getInt(Preferences.DPI_RESULT_CODE, -1);
    }

    public static boolean getDashboardNotifEnabled() {
        return PreferenceService.getBoolean(Preferences.DASHBOARD_NOTIF_ENABLED, true);
    }

    public static long getDashboardNotifStartDate() {
        return PreferenceService.getLong(Preferences.DASHBOARD_NOTIF_START_DATE, 0L);
    }

    public static String getDebugPhoneNumber() {
        return PreferenceService.getString(Preferences.DEBUG_PHONE_NUMBER, "");
    }

    public static String getDomainUrl() {
        return PreferenceService.getString(Preferences.DOMAIN_URL, getContext().getString(C1566R.string.url_services));
    }

    public static boolean getEulaAccepted() {
        return PreferenceService.getBoolean(Preferences.EULA_ACCEPTED, false);
    }

    public static long getFetchingOffenderDeltaTime() {
        return PreferenceService.getLong(Preferences.FETCHING_OFFENDER_DELTA_TIME, 0L);
    }

    public static String getGoogleApiAccessToken() {
        return PreferenceService.getString(Preferences.GOOGLE_API_ACCESS_TOKEN, "");
    }

    public static long getGoogleApiAccessTokenExpiration() {
        return PreferenceService.getLong(Preferences.GOOGLE_API_ACCESS_TOKEN_EXPIRATION, 0L);
    }

    public static boolean getGroupBlockingEnabled() {
        return PreferenceService.getBoolean(Preferences.GROUP_BLOCKING_ENABLED, false);
    }

    public static String getGuidDeviceID() {
        return PreferenceService.getString(Preferences.GUID_DEVICE_ID, "");
    }

    public static boolean getHasBlockListBeenPut() {
        return PreferenceService.getBoolean(Preferences.HAS_BLOCK_LIST_BEEN_PUT, false);
    }

    public static boolean getHasCydNumberBeenCached() {
        return PreferenceService.getBoolean(Preferences.HAS_CYD_NUMBER_BEEN_CACHED, false);
    }

    public static boolean getHasFinishedOnboarding() {
        return PreferenceService.getBoolean(Preferences.FINISHED_ONBOARDING, false);
    }

    public static boolean getHasReachedFiftyBlockedCallsMilestone() {
        return PreferenceService.getBoolean(Preferences.HAS_REACHED_FIFTY_BLOCKED_CALLS_MILESTONE, false);
    }

    public static boolean getHasRegistered() {
        return PreferenceService.getBoolean(Preferences.HAS_REGISTERED, false);
    }

    public static boolean getHasRequestedPermissions() {
        return PreferenceService.getBoolean(Preferences.HAS_REQUESTED_PERMISSIONS, false);
    }

    public static boolean getHasSeenIncomingPhoneNumber() {
        return PreferenceService.getBoolean(Preferences.HAS_SEEN_INCOMING_PHONE_NUMBER, false);
    }

    public static boolean getHasShownInitialPermissionRequest() {
        return PreferenceService.getBoolean(Preferences.HAS_SHOWN_INITIAL_PERMISSION_REQUEST, false);
    }

    public static boolean getHasSubscribedToOffenderDeltas() {
        return PreferenceService.getBoolean(Preferences.HAS_SUBSCRIBED_TO_OFFENDER_DELTAS, false);
    }

    public static boolean getImeiWasTracked() {
        return PreferenceService.getBoolean(Preferences.IMEI_WAS_TRACKED, false);
    }

    public static boolean getIntroDashboardSeen() {
        return PreferenceService.getBoolean(Preferences.INTRO_DASHBOARD_SEEN, false);
    }

    public static boolean getIsCallCenterEnabled() {
        return PreferenceService.getBoolean(Preferences.IS_CALL_CENTER_ENABLED, true);
    }

    public static boolean getIsCampaignFromNotification() {
        return PreferenceService.getBoolean(Preferences.IS_CAMPAIGN_FROM_NOTIFCIATION, false);
    }

    public static boolean getIsFirstHomeActivityVisitThisLaunch() {
        return PreferenceService.getBoolean(Preferences.IS_FIRST_HOME_ACTIVITY_VISIT_THIS_LAUNCH, false);
    }

    public static boolean getIsFirstRun() {
        return PreferenceService.getBoolean(Preferences.IS_FIRST_RUN, true);
    }

    public static boolean getIsFreeUserBiweeklyMessageScheduled() {
        return PreferenceService.getBoolean(".is_free_user_biweekly_message_scheduled", false);
    }

    public static boolean getIsLicenseOutOfDate() {
        return PreferenceService.getBoolean(Preferences.IS_LICENSE_OUT_OF_DATE, false);
    }

    public static boolean getIsNumberVerificationSkipped() {
        return PreferenceService.getBoolean(Preferences.IS_NUMBER_VERIFICATION_SKIPPED, false);
    }

    public static boolean getIsNumberVerified() {
        return PreferenceService.getBoolean(Preferences.IS_NUMBER_VERIFIED, false);
    }

    public static boolean getIsNumberVerifying() {
        return PreferenceService.getBoolean(Preferences.IS_NUMBER_VERIFYING, false);
    }

    public static boolean getIsOverlayPermissionPending() {
        return PreferenceService.getBoolean(Preferences.IS_OVERLAY_PERMISSION_PENDING, false);
    }

    public static boolean getIsPostCallCenterEnabled() {
        return PreferenceService.getBoolean(Preferences.IS_POST_CALL_CENTER_ENABLED, true);
    }

    public static boolean getIsReceiptUpdatePendingRegistration() {
        return PreferenceService.getBoolean(Preferences.IS_RECEIPT_UPDATE_PENDING_REGISTRATION, false);
    }

    public static boolean getIsReportSubmittedSuccessfully() {
        return PreferenceService.getBoolean(Preferences.IS_REPORT_SUBMITTED_SUCCESSFULLY, true);
    }

    public static boolean getIsSplashPauseEnabled() {
        return PreferenceService.getBoolean(Preferences.IS_SPLASH_PAUSE_ENABLED, false);
    }

    public static boolean getIsSpoofBlockingEnabled() {
        return PreferenceService.getBoolean(Preferences.SPOOF_BLOCKING_ENABLED, false);
    }

    public static boolean getIsUnknownBlockingEnabled() {
        return PreferenceService.getBoolean(Preferences.UNKNOWN_BLOCKING_ENABLED, false);
    }

    public static boolean getJumpToSpoofingSetting() {
        return PreferenceService.getBoolean(Preferences.JUMP_TO_SPOOFING_SETTING, false);
    }

    public static long getLastAppUpgradeTime() {
        return PreferenceService.getLong(Preferences.LAST_APP_UPGRADE_TIME, 0L);
    }

    public static long getLastAutomaticCYDRegistration() {
        return PreferenceService.getLong(Preferences.LAST_AUTOMATIC_CYD_REGISTRATION, 0L);
    }

    public static boolean getLastCallOutgoing() {
        return PreferenceService.getBoolean(Preferences.LAST_CALL_OUTGOING, false);
    }

    public static String getLastComplaintNumber() {
        return PreferenceService.getString(Preferences.LAST_COMPLAINT_NUMBER, "");
    }

    public static long getLastComplaintTimestamp() {
        return PreferenceService.getLong(Preferences.LAST_COMPLAINT_TIMESTAMP, 0L);
    }

    public static String getLastEventLabel() {
        return PreferenceService.getString(Preferences.EVENT_FIRED_LABEL, "");
    }

    public static long getLastEventTime() {
        return PreferenceService.getLong(Preferences.EVENT_FIRED_TIME, -1L);
    }

    public static String getLastIncomingCall() {
        return PreferenceService.getString(Preferences.LAST_INCOMING_CALL, "");
    }

    public static long getLastLocalOffenderLoad() {
        return PreferenceService.getLong(Preferences.LAST_LOCAL_OFFENDER_LOAD, 0L);
    }

    public static boolean getLastPurchaseFailed() {
        return PreferenceService.getBoolean(Preferences.LAST_PURCHASE_FAILED, false);
    }

    public static boolean getLastPurchaseSucceeded() {
        return PreferenceService.getBoolean(Preferences.LAST_PURCHASE_SUCCEEDED, false);
    }

    public static int getLastRatedVersion() {
        return PreferenceService.getInt(Preferences.LAST_RATED_VERSION, -1);
    }

    public static long getLastReceiptExpiration() {
        return PreferenceService.getLong(Preferences.LAST_RECEIPT_EXPIRATION, 0L);
    }

    public static long getLastRegistrationRequest() {
        return PreferenceService.getLong(Preferences.LAST_REGISTRATION_REQUEST, 0L);
    }

    public static long getLastSetupNotificationTime() {
        return PreferenceService.getLong(Preferences.LAST_SETUP_NOTIFICATION_TIME, 0L);
    }

    public static long getLastTokenRefreshDeviceTime() {
        return PreferenceService.getLong(Preferences.LAST_TOKEN_REFRESH_DEVICE_TIME, 0L);
    }

    public static long getMRCDate() {
        return PreferenceService.getLong(Preferences.MRC_DATE, 0L);
    }

    public static int getMatchTrimLength() {
        return PreferenceService.getInt(Preferences.MATCH_TRIM_LENGTH, PSApplication.context().getResources().getInteger(C1566R.integer.match_trim_length_default));
    }

    public static int getMuteRingerVolume() {
        return PreferenceService.getInt(Preferences.MUTE_RINGER_VOLUME, -1);
    }

    public static boolean getNewFeatureExplained() {
        return PreferenceService.getBoolean(Preferences.NEW_FEATURE_EXPLAINED, true);
    }

    public static long getNextScheduledLicenseCheck() {
        return PreferenceService.getLong(Preferences.NEXT_SCHEDULED_LICENSE_CHECK, 0L);
    }

    public static int getNumberOfApplicationVisits() {
        return PreferenceService.getInt(".number_of_application_visits", 0);
    }

    public static boolean getOffenderListLoaded() {
        return PreferenceService.getBoolean(Preferences.OFFENDER_LIST_LOADED, false);
    }

    public static int[] getPSAnalyticsBitmap() {
        return PreferenceService.getIntArray(Preferences.PS_ANALYTICS_MAP, 0);
    }

    public static boolean getPSPurchasesCached() {
        return PreferenceService.getBoolean(Preferences.PS_PURCHASES_CACHED, false);
    }

    public static boolean getPassedWelcome() {
        return PreferenceService.getBoolean(Preferences.PASSED_WELCOME, false);
    }

    public static boolean getPhoneStateCallInProgress() {
        return PreferenceService.getBoolean(Preferences.PHONE_STATE_CALL_IN_PROGRESS, false);
    }

    public static boolean getPhoneStateHangUp() {
        return PreferenceService.getBoolean(Preferences.PHONE_STATE_HANG_UP, false);
    }

    public static boolean getProtectionCharityEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_CHARITY_ENABLED, false);
    }

    public static boolean getProtectionDebtCollectionEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_DEBT_COLLECTION_ENABLED, false);
    }

    public static boolean getProtectionInformationalEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_INFORMATIONAL_ENABLED, false);
    }

    public static boolean getProtectionInvalidEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_INVALID_ENABLED, false);
    }

    public static int getProtectionLevel() {
        return PreferenceService.getInt(Preferences.PROTECTION_LEVEL, 1);
    }

    public static boolean getProtectionNuisanceEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_NUISANCE_ENABLED, false);
    }

    public static boolean getProtectionPoliticalEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_POLITICAL_ENABLED, false);
    }

    public static boolean getProtectionPrisonEnabled() {
        return PreferenceService.getBoolean(Preferences.PRISON_BLOCKING_ENABLED, false);
    }

    public static boolean getProtectionScammersEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_SCAMMERS_ENABLED, true);
    }

    public static boolean getProtectionSetup() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_SETUP, false);
    }

    public static boolean getProtectionSurveyEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_SURVEY_ENABLED, false);
    }

    public static boolean getProtectionTelemarketingEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_TELEMARKETING_ENABLED, false);
    }

    public static boolean getProtectionUnknownEnabled() {
        return PreferenceService.getBoolean(Preferences.PROTECTION_UNKNOWN_ENABLED, false);
    }

    public static boolean getPsServiceDisabledDialogShowing() {
        return PreferenceService.getBoolean(Preferences.PS_SERVICE_DISABLED_DIALOG_SHOWING, false);
    }

    public static boolean getReadyForOffenderDeltas() {
        return PreferenceService.getBoolean(Preferences.READY_FOR_OFFENDER_DELTAS, false);
    }

    public static int getRealmDataVersion() {
        return PreferenceService.getInt(Preferences.REALM_DATA_VERSION, -1);
    }

    public static boolean getRegistrationRequestPending() {
        return PreferenceService.getBoolean(Preferences.REGISTRATION_REQUEST_PENDING, false);
    }

    public static int getRingerMode() {
        return PreferenceService.getInt(Preferences.RINGER_MODE, -1);
    }

    public static int getRingerVolume() {
        return PreferenceService.getInt(Preferences.RINGER_VOLUME, -1);
    }

    public static boolean getSendToVoicemailSetting() {
        return PreferenceService.getBoolean(Preferences.SEND_TO_VOICEMAIL_SETTING, false);
    }

    public static boolean getShouldInboxShowRateDialog() {
        return PreferenceService.getBoolean(Preferences.SHOULD_INBOX_SHOW_RATE_DIALOG, false);
    }

    public static boolean getShouldScheduleWelcomeSubscriberMessage() {
        return PreferenceService.getBoolean(".should_schedule_welcome_subscriber_message", false);
    }

    public static boolean getShowCallTypeSavedSnack() {
        return PreferenceService.getBoolean(Preferences.SHOW_CALL_TYPE_SAVED_SNACK, false);
    }

    public static boolean getShowInvalidNumberBlocked() {
        return PreferenceService.getBoolean(Preferences.SHOW_INVALID_NUMBER_BLOCKED, true);
    }

    public static boolean getShowReportSubmittedMessage() {
        return PreferenceService.getBoolean(Preferences.SHOW_REPORT_SUBMITTED_MESSAGE, false);
    }

    public static long getSmsValidationStartTime() {
        return PreferenceService.getLong(Preferences.SMS_VALIDATION_START_TIME, -1L);
    }

    public static boolean getStartupMessagingSeen() {
        return PreferenceService.getBoolean(Preferences.STARTUP_MESSAGING_SEEN, false);
    }

    public static String getStoredOverrideDeviceNumber() {
        return PreferenceService.getString(Preferences.STORED_OVERRIDE_DEVICE_NUMBER, null);
    }

    public static String getStoredPhoneNumber() {
        return PreferenceService.getString(Preferences.STORED_PHONE_NUMBER, null);
    }

    public static boolean getSubscriptionExpired() {
        return PreferenceService.getBoolean(Preferences.SUBSCRIPTION_EXPIRED, true);
    }

    public static boolean getSubscriptionSetup() {
        return PreferenceService.getBoolean(Preferences.SUBSCRIPTION_SETUP, false);
    }

    public static boolean getThemeHasBeenConfigured() {
        return PreferenceService.getBoolean(Preferences.THEME_HAS_BEEN_CONFIGURED, false);
    }

    public static int getTotalSetupNotificationsSent() {
        return PreferenceService.getInt(Preferences.TOTAL_SETUP_NOTIFICATIONS_SENT, 0);
    }

    public static String getUXSharedPreference(String str) {
        return PreferenceService.getString(Preferences.PREFERENCES + "." + str, null);
    }

    public static boolean getUnseenPhoneEvent() {
        return PreferenceService.getBoolean(Preferences.UNSEEN_PHONE_EVENT, false);
    }

    public static boolean getUseCompactBinaryOffenderList() {
        return PreferenceService.getBoolean(Preferences.USE_COMPACT_BINARY_OFFENDER_LIST, false);
    }

    public static String getUserNumberToVerify() {
        return PreferenceService.getString(Preferences.USER_NUMBER_TO_VERIFY, null);
    }

    public static String getUserToken() {
        return PreferenceService.getString(Preferences.USER_TOKEN, null);
    }

    public static long getUserTokenExpiration() {
        return PreferenceService.getLong(Preferences.USER_TOKEN_EXPIRATION, 0L);
    }

    public static int getVibrateSetting() {
        return PreferenceService.getInt(Preferences.VIBRATE_SETTING, -1);
    }

    public static boolean getWalkthroughCompleted() {
        return PreferenceService.getBoolean(Preferences.WALKTHROUGH_COMPLETED, false);
    }

    public static boolean getWasSQLiteMigrated() {
        return PreferenceService.getBoolean(Preferences.WAS_SQ_LITE_MIGRATED, false);
    }

    public static boolean getWereInitialPermissionsDenied() {
        return PreferenceService.getBoolean(Preferences.WERE_INITIAL_PERMISSIONS_DENIED, false);
    }

    public static void putAGAlertsEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.AG_ALERTS_ENABLED, z);
    }

    public static void putAGServiceConfigured(boolean z) {
        PreferenceService.putBoolean(Preferences.AG_SERVICE_CONFIGURED, z);
    }

    public static void putAGServiceEligible(boolean z) {
        PreferenceService.putBoolean(Preferences.AG_SERVICE_ELIGIBLE, z);
    }

    public static void putAGServiceEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.AG_SERVICE_ENABLED, z);
    }

    public static void putAGState(String str) {
        PreferenceService.putString(Preferences.AG_STATE, str);
    }

    public static void putAGStateSet(boolean z) {
        PreferenceService.putBoolean(Preferences.AG_STATE_SET, z);
    }

    public static void putActivationScreenVisited(boolean z) {
        PreferenceService.putBoolean(Preferences.ACTIVATION_SCREEN_VISITED, z);
    }

    public static void putActivityLogGrouping(LogGrouping logGrouping) {
        PreferenceService.putInt(Preferences.ACTIVITY_LOG_GROUPING, logGrouping.getValue());
    }

    public static void putActivityLogLoaded(boolean z) {
        PreferenceService.putBoolean(Preferences.ACTIVITY_LOG_LOADED, z);
    }

    public static void putAnalyticsPath(String str) {
        PreferenceService.putString(Preferences.ANALYTICS_PATH, str);
    }

    public static void putAnalyticsUrl(String str) {
        PreferenceService.putString(Preferences.ANALYTICS_URL, str);
    }

    public static void putApplicationEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.APPLICATION_ENABLED, z);
    }

    public static void putArePurchasesDoubleChecked(boolean z) {
        PreferenceService.putBoolean(Preferences.ARE_PURCHASES_DOUBLE_CHECKED, z);
    }

    public static void putAreStartupMessagesEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.ARE_STARTUP_MESSAGES_ENABLED, z);
    }

    public static void putBlockListRestoreState(String str) {
        PreferenceService.putString(Preferences.BLOCK_LIST_RESTORE_STATE, str);
    }

    public static void putBlockNotificationEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.BLOCK_NOTIFICATION_ENABLED, z);
    }

    public static void putBulkLookupPerformed(boolean z) {
        PreferenceService.putBoolean(Preferences.BULK_LOOKUP_PERFORMED, z);
    }

    public static void putCWTransactionID(String str) {
        PreferenceService.putString(Preferences.CW_TRANSACTION_ID, str);
    }

    public static void putCYDChallengeKey(String str) {
        PreferenceService.putString(Preferences.CYD_CHALLENGE_KEY, str);
    }

    public static void putCYDChallengeSearchText(String str) {
        PreferenceService.putString(Preferences.CYD_CHALLENGE_SEARCH_TEXT, str);
    }

    public static void putCYDNumberAutomaticallyRead(boolean z) {
        PreferenceService.putBoolean(Preferences.CYD_NUMBER_AUTOMATICALLY_READ, z);
    }

    public static void putCYDVerificationStarted(boolean z) {
        PreferenceService.putBoolean(Preferences.CYD_VERIFICATION_STARTED, z);
    }

    public static void putCallCenterX(int i) {
        PreferenceService.putInt(Preferences.CALLER_ID_POSITION_X, i);
    }

    public static void putCallCenterY(int i) {
        PreferenceService.putInt(Preferences.CALLER_ID_POSITION_Y, i);
    }

    public static void putCallReceiverIntentCount(int i) {
        PreferenceService.putInt(Preferences.CALL_RECEIVER_INTENT_COUNT, i);
    }

    public static void putCallSilenced(boolean z) {
        PreferenceService.putBoolean(Preferences.CALL_SILENCED, z);
    }

    public static void putCallerGroupingEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.GROUP_CALLERS_IN_LOG, z);
    }

    public static void putCarrierId(int i) {
        PreferenceService.putInt(Preferences.CARRIER_ID, i);
    }

    public static void putConnectivityUrl(String str) {
        PreferenceService.putString(Preferences.CONNECTIVITY_URL, str);
    }

    public static void putCurrentOffenderDeltaControlNumber(long j) {
        PreferenceService.putLong(Preferences.CURRENT_OFFENDER_DELTA_CONTROL_NUMBER, j);
    }

    public static void putCurrentOffenderDeltaShortName(String str) {
        PreferenceService.putString(Preferences.CURRENT_OFFENDER_DELTA_SHORT_NAME, str);
    }

    public static void putCustomProtectionEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.CUSTOM_PROTECTION_ENABLED, z);
    }

    public static void putCydFirebaseToken(String str) {
        PreferenceService.putString(Preferences.CYD_FIREBASE_TOKEN, str);
    }

    public static void putDPIResultCode(int i) {
        PreferenceService.putInt(Preferences.DPI_RESULT_CODE, i);
    }

    public static void putDashboardNotifEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.DASHBOARD_NOTIF_ENABLED, z);
    }

    public static void putDashboardNotifStartDate(long j) {
        PreferenceService.putLong(Preferences.DASHBOARD_NOTIF_START_DATE, j);
    }

    public static void putDebugPhoneNumber(String str) {
        PreferenceService.putString(Preferences.DEBUG_PHONE_NUMBER, str);
    }

    public static void putDomainUrl(String str) {
        PreferenceService.putString(Preferences.DOMAIN_URL, str);
    }

    public static void putEulaAccepted(boolean z) {
        PreferenceService.putBoolean(Preferences.EULA_ACCEPTED, z);
    }

    public static void putFetchingOffenderDeltaTime(long j) {
        PreferenceService.putLong(Preferences.FETCHING_OFFENDER_DELTA_TIME, j);
    }

    public static void putGoogleApiAccessToken(String str) {
        PreferenceService.putString(Preferences.GOOGLE_API_ACCESS_TOKEN, str);
    }

    public static void putGoogleApiAccessTokenExpiration(long j) {
        PreferenceService.putLong(Preferences.GOOGLE_API_ACCESS_TOKEN_EXPIRATION, j);
    }

    public static void putGroupBlockingEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.GROUP_BLOCKING_ENABLED, z);
    }

    public static void putGuidDeviceID(String str) {
        PreferenceService.putString(Preferences.GUID_DEVICE_ID, str);
    }

    public static void putHasBlockListBeenPut(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_BLOCK_LIST_BEEN_PUT, z);
    }

    public static void putHasCydNumberBeenCached(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_CYD_NUMBER_BEEN_CACHED, z);
    }

    public static void putHasFinishedOnboarding(boolean z) {
        PreferenceService.putBoolean(Preferences.FINISHED_ONBOARDING, z);
    }

    public static void putHasReachedFiftyBlockedCallsMilestone(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_REACHED_FIFTY_BLOCKED_CALLS_MILESTONE, z);
    }

    public static void putHasRegistered(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_REGISTERED, z);
    }

    public static void putHasRequestedPermissions(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_REQUESTED_PERMISSIONS, z);
    }

    public static void putHasSeenIncomingPhoneNumber(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_SEEN_INCOMING_PHONE_NUMBER, z);
    }

    public static void putHasShownInitialPermissionRequest(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_SHOWN_INITIAL_PERMISSION_REQUEST, z);
    }

    public static void putHasSubscribedToOffenderDeltas(boolean z) {
        PreferenceService.putBoolean(Preferences.HAS_SUBSCRIBED_TO_OFFENDER_DELTAS, z);
    }

    public static void putImeiWasTracked(boolean z) {
        PreferenceService.putBoolean(Preferences.IMEI_WAS_TRACKED, z);
    }

    public static void putIntroDashboardSeen(boolean z) {
        PreferenceService.putBoolean(Preferences.INTRO_DASHBOARD_SEEN, z);
    }

    public static void putIsCallCenterEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_CALL_CENTER_ENABLED, z);
    }

    public static void putIsCampaignFromNotification(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_CAMPAIGN_FROM_NOTIFCIATION, z);
    }

    public static void putIsFirstHomeActivityVisitThisLaunch(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_FIRST_HOME_ACTIVITY_VISIT_THIS_LAUNCH, z);
    }

    public static void putIsFirstRun(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_FIRST_RUN, z);
    }

    public static void putIsFreeUserBiweeklyMessagesScheduled(boolean z) {
        PreferenceService.putBoolean(".is_free_user_biweekly_message_scheduled", z);
    }

    public static void putIsLicenseOutOfDate(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_LICENSE_OUT_OF_DATE, z);
    }

    public static void putIsNumberVerificationSkipped(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_NUMBER_VERIFICATION_SKIPPED, z);
    }

    public static void putIsNumberVerified(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_NUMBER_VERIFIED, z);
    }

    public static void putIsNumberVerifying(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_NUMBER_VERIFYING, z);
    }

    public static void putIsOverlayPermissionPending(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_OVERLAY_PERMISSION_PENDING, z);
    }

    public static void putIsPostCallCenterEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_POST_CALL_CENTER_ENABLED, z);
    }

    public static void putIsReceiptUpdatePendingRegistration(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_RECEIPT_UPDATE_PENDING_REGISTRATION, z);
    }

    public static void putIsReportSubmittedSuccessfully(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_REPORT_SUBMITTED_SUCCESSFULLY, z);
    }

    public static void putIsSplashPauseEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.IS_SPLASH_PAUSE_ENABLED, z);
    }

    public static void putIsSpoofBlockingEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.SPOOF_BLOCKING_ENABLED, z);
    }

    public static void putIsUnknownBlockingEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.UNKNOWN_BLOCKING_ENABLED, z);
    }

    public static void putJumpToSpoofingSetting(boolean z) {
        PreferenceService.putBoolean(Preferences.JUMP_TO_SPOOFING_SETTING, z);
    }

    public static void putLastAppUpgradeTime(long j) {
        PreferenceService.putLong(Preferences.LAST_APP_UPGRADE_TIME, j);
    }

    public static void putLastAutomaticCYDRegistration(long j) {
        PreferenceService.putLong(Preferences.LAST_AUTOMATIC_CYD_REGISTRATION, j);
    }

    public static void putLastCallOutgoing(boolean z) {
        PreferenceService.putBoolean(Preferences.LAST_CALL_OUTGOING, z);
    }

    public static void putLastComplaintNumber(String str) {
        PreferenceService.putString(Preferences.LAST_COMPLAINT_NUMBER, str);
    }

    public static void putLastComplaintTimestamp(long j) {
        PreferenceService.putLong(Preferences.LAST_COMPLAINT_TIMESTAMP, j);
    }

    public static void putLastEventLabel(String str) {
        PreferenceService.putString(Preferences.EVENT_FIRED_LABEL, str);
    }

    public static void putLastEventTime(long j) {
        PreferenceService.putLong(Preferences.EVENT_FIRED_TIME, j);
    }

    public static void putLastIncomingCall(String str) {
        PreferenceService.putString(Preferences.LAST_INCOMING_CALL, str);
    }

    public static void putLastLocalOffenderLoad(long j) {
        PreferenceService.putLong(Preferences.LAST_LOCAL_OFFENDER_LOAD, j);
    }

    public static void putLastPurchaseFailed(boolean z) {
        PreferenceService.putBoolean(Preferences.LAST_PURCHASE_FAILED, z);
    }

    public static void putLastPurchaseSucceeded(boolean z) {
        PreferenceService.putBoolean(Preferences.LAST_PURCHASE_SUCCEEDED, z);
    }

    public static void putLastRatedVersion(int i) {
        PreferenceService.putInt(Preferences.LAST_RATED_VERSION, i);
    }

    public static void putLastReceiptExpiration(long j) {
        PreferenceService.putLong(Preferences.LAST_RECEIPT_EXPIRATION, j);
    }

    public static void putLastRegistrationRequest(long j) {
        PreferenceService.putLong(Preferences.LAST_REGISTRATION_REQUEST, j);
    }

    public static void putLastSetupNotificationTime(long j) {
        PreferenceService.putLong(Preferences.LAST_SETUP_NOTIFICATION_TIME, j);
    }

    public static void putLastTokenRefreshDeviceTime(long j) {
        PreferenceService.putLong(Preferences.LAST_TOKEN_REFRESH_DEVICE_TIME, j);
    }

    public static void putMRCDate(long j) {
        PreferenceService.putLong(Preferences.MRC_DATE, j);
    }

    public static void putMatchTrimLength(int i) {
        PreferenceService.putInt(Preferences.MATCH_TRIM_LENGTH, i);
    }

    public static void putMuteRingerVolume(int i) {
        PreferenceService.putInt(Preferences.MUTE_RINGER_VOLUME, i);
    }

    public static void putNewFeatureExplained(boolean z) {
        PreferenceService.putBoolean(Preferences.NEW_FEATURE_EXPLAINED, z);
    }

    public static void putNextScheduledLicenseCheck(long j) {
        PreferenceService.putLong(Preferences.NEXT_SCHEDULED_LICENSE_CHECK, j);
    }

    public static void putNumberOfApplicationVisits(int i) {
        PreferenceService.putInt(".number_of_application_visits", i);
    }

    public static void putOffenderListLoaded(boolean z) {
        PreferenceService.putBoolean(Preferences.OFFENDER_LIST_LOADED, z);
    }

    public static void putPSAnalyticsBitmap(int[] iArr) {
        PreferenceService.putIntArray(Preferences.PS_ANALYTICS_MAP, iArr);
    }

    public static void putPSPurchasesCached(boolean z) {
        PreferenceService.putBoolean(Preferences.PS_PURCHASES_CACHED, z);
    }

    public static void putPassedWelcome(boolean z) {
        PreferenceService.putBoolean(Preferences.PASSED_WELCOME, z);
    }

    public static void putPhoneStateCallInProgress(boolean z) {
        PreferenceService.putBoolean(Preferences.PHONE_STATE_CALL_IN_PROGRESS, z);
    }

    public static void putPhoneStateHangUp(boolean z) {
        PreferenceService.putBoolean(Preferences.PHONE_STATE_HANG_UP, z);
    }

    public static void putProtectionCharityEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_CHARITY_ENABLED, z);
    }

    public static void putProtectionDebtCollectionEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_DEBT_COLLECTION_ENABLED, z);
    }

    public static void putProtectionInformationalEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_INFORMATIONAL_ENABLED, z);
    }

    public static void putProtectionInvalidEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_INVALID_ENABLED, z);
    }

    public static void putProtectionLevel(int i) {
        PreferenceService.putInt(Preferences.PROTECTION_LEVEL, i);
    }

    public static void putProtectionNuisanceEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_NUISANCE_ENABLED, z);
    }

    public static void putProtectionPoliticalEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_POLITICAL_ENABLED, z);
    }

    public static void putProtectionPrisonEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PRISON_BLOCKING_ENABLED, z);
    }

    public static void putProtectionScammersEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_SCAMMERS_ENABLED, z);
    }

    public static void putProtectionSetup(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_SETUP, z);
    }

    public static void putProtectionSurveyEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_SURVEY_ENABLED, z);
    }

    public static void putProtectionTelemarketingEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_TELEMARKETING_ENABLED, z);
    }

    public static void putProtectionUnknownEnabled(boolean z) {
        PreferenceService.putBoolean(Preferences.PROTECTION_UNKNOWN_ENABLED, z);
    }

    public static void putPsServiceDisabledDialogShowing(boolean z) {
        PreferenceService.putBoolean(Preferences.PS_SERVICE_DISABLED_DIALOG_SHOWING, z);
    }

    public static void putReadyForOffenderDeltas(boolean z) {
        PreferenceService.putBoolean(Preferences.READY_FOR_OFFENDER_DELTAS, z);
    }

    public static void putRealmDataVersion(int i) {
        PreferenceService.putInt(Preferences.REALM_DATA_VERSION, i);
    }

    public static void putRegistrationRequestPending(boolean z) {
        PreferenceService.putBoolean(Preferences.REGISTRATION_REQUEST_PENDING, z);
    }

    public static void putRingerMode(int i) {
        PreferenceService.putInt(Preferences.RINGER_MODE, i);
    }

    public static void putRingerVolume(int i) {
        PreferenceService.putInt(Preferences.RINGER_VOLUME, i);
    }

    public static void putSendToVoicemailSetting(boolean z) {
        PreferenceService.putBoolean(Preferences.SEND_TO_VOICEMAIL_SETTING, z);
    }

    public static void putShouldInboxShowRateDialog(boolean z) {
        PreferenceService.putBoolean(Preferences.SHOULD_INBOX_SHOW_RATE_DIALOG, z);
    }

    public static void putShouldScheduleWelcomeSubscriberMessage(boolean z) {
        PreferenceService.putBoolean(".should_schedule_welcome_subscriber_message", z);
    }

    public static void putShowCallTypesSavedSnack(boolean z) {
        PreferenceService.putBoolean(Preferences.SHOW_CALL_TYPE_SAVED_SNACK, z);
    }

    public static void putShowInvalidNumberBlocked(boolean z) {
        PreferenceService.putBoolean(Preferences.SHOW_INVALID_NUMBER_BLOCKED, z);
    }

    public static void putShowReportSubmittedMessage(boolean z) {
        PreferenceService.putBoolean(Preferences.SHOW_REPORT_SUBMITTED_MESSAGE, z);
    }

    public static void putSmsValidationStartTime(long j) {
        PreferenceService.putLong(Preferences.SMS_VALIDATION_START_TIME, j);
    }

    public static void putStartupMessagingSeen(boolean z) {
        PreferenceService.putBoolean(Preferences.STARTUP_MESSAGING_SEEN, z);
    }

    public static void putStoredOverrideDeviceNumber(String str) {
        PreferenceService.putString(Preferences.STORED_OVERRIDE_DEVICE_NUMBER, str);
    }

    public static void putStoredPhoneNumber(String str) {
        PreferenceService.putString(Preferences.STORED_PHONE_NUMBER, str);
    }

    public static void putSubscriptionExpired(boolean z) {
        PreferenceService.putBoolean(Preferences.SUBSCRIPTION_EXPIRED, z);
    }

    public static void putSubscriptionSetup(boolean z) {
        PreferenceService.putBoolean(Preferences.SUBSCRIPTION_SETUP, z);
    }

    public static void putThemeHasBeenConfigured(boolean z) {
        PreferenceService.putBoolean(Preferences.THEME_HAS_BEEN_CONFIGURED, z);
    }

    public static void putTotalSetupNotificationsSent(int i) {
        PreferenceService.putInt(Preferences.TOTAL_SETUP_NOTIFICATIONS_SENT, i);
    }

    public static boolean putUXSharedPreference(String str, String str2) {
        try {
            PreferenceService.putString(Preferences.PREFERENCES + "." + str, str2);
            return true;
        } catch (Exception e) {
            Timber.m32e(e, "Error setting value for key --> %s", str2);
            return false;
        }
    }

    public static void putUnseenPhoneEvent(boolean z) {
        PreferenceService.putBoolean(Preferences.UNSEEN_PHONE_EVENT, z);
    }

    public static void putUseCompactBinaryOffenderList(boolean z) {
        PreferenceService.putBoolean(Preferences.USE_COMPACT_BINARY_OFFENDER_LIST, z);
    }

    public static void putUserNumberToVerify(String str) {
        PreferenceService.putString(Preferences.USER_NUMBER_TO_VERIFY, str);
    }

    public static void putUserToken(String str) {
        PreferenceService.putString(Preferences.USER_TOKEN, str);
    }

    public static void putUserTokenExpiration(long j) {
        PreferenceService.putLong(Preferences.USER_TOKEN_EXPIRATION, j);
    }

    public static void putVibrateSetting(int i) {
        PreferenceService.putInt(Preferences.VIBRATE_SETTING, i);
    }

    public static void putWalkthroughCompleted(boolean z) {
        PreferenceService.putBoolean(Preferences.WALKTHROUGH_COMPLETED, z);
    }

    public static void putWasSQLiteMigrated(boolean z) {
        PreferenceService.putBoolean(Preferences.WAS_SQ_LITE_MIGRATED, z);
    }

    public static void putWereInitialPermissionsDenied(boolean z) {
        PreferenceService.putBoolean(Preferences.WERE_INITIAL_PERMISSIONS_DENIED, z);
    }

    public static void updateCategoryBlockingProtection(boolean z) {
        putProtectionNuisanceEnabled(z);
        putProtectionTelemarketingEnabled(z);
        putProtectionDebtCollectionEnabled(z);
        putProtectionPoliticalEnabled(z);
        putProtectionSurveyEnabled(z);
        putProtectionCharityEnabled(z);
        putProtectionPrisonEnabled(z);
    }

    public static void updateTypeBlockingBasedOnProtection(ProtectionLevel protectionLevel) {
        if (protectionLevel != ProtectionLevel.CUSTOM) {
            boolean z = true;
            putProtectionScammersEnabled(true);
            boolean z2 = protectionLevel != ProtectionLevel.BASIC;
            putProtectionNuisanceEnabled(z2);
            putProtectionTelemarketingEnabled(z2);
            putProtectionDebtCollectionEnabled(z2);
            putProtectionUnknownEnabled(z2);
            putProtectionInvalidEnabled(z2);
            if (protectionLevel == ProtectionLevel.ENHANCED || protectionLevel == ProtectionLevel.BASIC) {
                z = false;
            }
            putProtectionPoliticalEnabled(z);
            putProtectionSurveyEnabled(z);
            putProtectionCharityEnabled(z);
            putProtectionPrisonEnabled(z);
        }
    }
}
