package com.privacystar.core.service.analytics;

import com.privacystar.core.data.call.caller.Caller;
import com.privacystar.core.data.model.OperationFields;
import com.privacystar.core.service.analytics.apptentive.ApptentiveConstants;
import com.privacystar.core.util.BlockingManager;
import com.privacystar.core.util.ParsedPhoneNumber;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��ç\u0006\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0003\bß\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018��2\u00020\u0001:¿\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f\u0080\u0001\u0081\u0001\u0082\u0001\u0083\u0001\u0084\u0001\u0085\u0001\u0086\u0001\u0087\u0001\u0088\u0001\u0089\u0001\u008a\u0001\u008b\u0001\u008c\u0001\u008d\u0001\u008e\u0001\u008f\u0001\u0090\u0001\u0091\u0001\u0092\u0001\u0093\u0001\u0094\u0001\u0095\u0001\u0096\u0001\u0097\u0001\u0098\u0001\u0099\u0001\u009a\u0001\u009b\u0001\u009c\u0001\u009d\u0001\u009e\u0001\u009f\u0001 \u0001¡\u0001¢\u0001£\u0001¤\u0001¥\u0001¦\u0001§\u0001¨\u0001©\u0001ª\u0001«\u0001¬\u0001\u00ad\u0001®\u0001¯\u0001°\u0001±\u0001²\u0001³\u0001´\u0001µ\u0001¶\u0001·\u0001¸\u0001¹\u0001º\u0001»\u0001¼\u0001½\u0001¾\u0001¿\u0001À\u0001Á\u0001Â\u0001Ã\u0001Ä\u0001Å\u0001Æ\u0001Ç\u0001È\u0001É\u0001Ê\u0001Ë\u0001Ì\u0001Í\u0001Î\u0001Ï\u0001Ð\u0001Ñ\u0001Ò\u0001Ó\u0001Ô\u0001Õ\u0001Ö\u0001×\u0001Ø\u0001Ù\u0001Ú\u0001Û\u0001Ü\u0001Ý\u0001Þ\u0001ß\u0001à\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002\u0082\u0001¬\u0003á\u0001â\u0001ã\u0001ä\u0001å\u0001æ\u0001ç\u0001è\u0001é\u0001ê\u0001ë\u0001ì\u0001í\u0001î\u0001ï\u0001ð\u0001ñ\u0001ò\u0001ó\u0001ô\u0001õ\u0001ö\u0001÷\u0001ø\u0001ù\u0001ú\u0001û\u0001ü\u0001ý\u0001þ\u0001ÿ\u0001\u0080\u0002\u0081\u0002\u0082\u0002\u0083\u0002\u0084\u0002\u0085\u0002\u0086\u0002\u0087\u0002\u0088\u0002\u0089\u0002\u008a\u0002\u008b\u0002\u008c\u0002\u008d\u0002\u008e\u0002\u008f\u0002\u0090\u0002\u0091\u0002\u0092\u0002\u0093\u0002\u0094\u0002\u0095\u0002\u0096\u0002\u0097\u0002\u0098\u0002\u0099\u0002\u009a\u0002\u009b\u0002\u009c\u0002\u009d\u0002\u009e\u0002\u009f\u0002 \u0002¡\u0002¢\u0002£\u0002¤\u0002¥\u0002¦\u0002§\u0002¨\u0002©\u0002ª\u0002«\u0002¬\u0002\u00ad\u0002®\u0002¯\u0002°\u0002±\u0002²\u0002³\u0002´\u0002µ\u0002¶\u0002·\u0002¸\u0002¹\u0002º\u0002»\u0002¼\u0002½\u0002¾\u0002¿\u0002À\u0002Á\u0002Â\u0002Ã\u0002Ä\u0002Å\u0002Æ\u0002Ç\u0002È\u0002É\u0002Ê\u0002Ë\u0002Ì\u0002Í\u0002Î\u0002Ï\u0002Ð\u0002Ñ\u0002Ò\u0002Ó\u0002Ô\u0002Õ\u0002Ö\u0002×\u0002Ø\u0002Ù\u0002Ú\u0002Û\u0002Ü\u0002Ý\u0002Þ\u0002ß\u0002à\u0002á\u0002â\u0002ã\u0002ä\u0002å\u0002æ\u0002ç\u0002è\u0002é\u0002ê\u0002ë\u0002ì\u0002í\u0002î\u0002ï\u0002ð\u0002ñ\u0002ò\u0002ó\u0002ô\u0002õ\u0002ö\u0002÷\u0002ø\u0002ù\u0002ú\u0002û\u0002ü\u0002ý\u0002þ\u0002ÿ\u0002\u0080\u0003\u0081\u0003\u0082\u0003\u0083\u0003\u0084\u0003\u0085\u0003\u0086\u0003\u0087\u0003\u0088\u0003\u0089\u0003\u008a\u0003\u008b\u0003\u008c\u0003\u008d\u0003\u008e\u0003\u008f\u0003\u0090\u0003\u0091\u0003\u0092\u0003\u0093\u0003\u0094\u0003\u0095\u0003\u0096\u0003\u0097\u0003\u0098\u0003\u0099\u0003\u009a\u0003\u009b\u0003\u009c\u0003\u009d\u0003\u009e\u0003\u009f\u0003 \u0003¡\u0003¢\u0003£\u0003¤\u0003¥\u0003¦\u0003§\u0003¨\u0003©\u0003ª\u0003«\u0003¬\u0003\u00ad\u0003®\u0003¯\u0003°\u0003±\u0003²\u0003³\u0003´\u0003µ\u0003¶\u0003¨\u0006·\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event;", "", "()V", "AboutPageView", "AboutPrivacyPolicy", "AboutTermsOfService", "ActivationAccountServicesOff", "ActivationAccountServicesOn", "ActivationAccountServicesUpsellClick", "ActivationCallCategoryPageView", "ActivationCallCategoryctaClick", "ActivationCategorySettingView", "ActivationCharityOff", "ActivationCharityOn", "ActivationCharityUpsellClick", "ActivationNuisanceOff", "ActivationNuisanceOn", "ActivationNuisanceUpsellClick", "ActivationNumberVerificationNumberEnterClick", "ActivationNumberVerificationSendClick", "ActivationNumberVerificationView", "ActivationNumberVerifyingView", "ActivationPoliticalOff", "ActivationPoliticalOn", "ActivationPoliticalUpsellClick", "ActivationPrisonOff", "ActivationPrisonOn", "ActivationPrisonUpsellClick", "ActivationScamOff", "ActivationScamOn", "ActivationSuccessClick", "ActivationSuccessView", "ActivationSurveyOff", "ActivationSurveyOn", "ActivationSurveyUpsellClick", "ActivationTelemarketingOff", "ActivationTelemarketingOn", "ActivationTelemarketingUpsellClick", "ActivationVerificationCodeBackClick", "ActivationVerificationCodeNumberEnterClick", "ActivationVerificationCodePageView", "ActivationVerificationCodeResendClick", "ActivationVerificationErrorCode", "ActivationVerifyYourNumberEnterNumberClick", "ActivationVerifyYourNumberSendClick", "ActivationVerifyYourNumberView", "ActiveToExpiredEvent", "ActivityInactivityVerifyClick", "ActivityInactivityVerifyView", "ActivityNumberLookupClick", "ActivityPageView", "AllowAddNumber", "AllowNewEntry", "AllowRemoveNumber", "AllowViewDetails", "ApprovedListAction", "ApprovedNumberEvent", "BlockAddNumber", "BlockCallButtonEvent", "BlockCallYesEvent", "BlockListAction", "BlockNewEntry", "BlockNumberEvent", "BlockRemoveNumber", "BlockViewDetails", "CallCenterStatusEvent", "CallResolutionType", "CallerIdentifierBlock", "CallerIdentifierClose", "CallerIdentifierPopup", "Campaign", "CategoryType", "ComplaintFeedback", "ComplaintFeedbackEvent", "ComplaintFiled", "ComplaintFromHomeEvent", "ComplaintFromOthersEvent", "DashboardPageView", "DismissCallCenterEvent", "DropdownNotificationBlock", "DropdownNotificationClick", "DropdownNotificationReport", "EulaAcceptedEvent", "EulaReadEvent", "ExtendedCallInformationEvent", "FcmErrorEvent", "FcmRegistrationEvent", "HotlistCallEvent", "InboxAndId1CtaClick", "InboxAndId1Read", "InboxAndId1Sent", "InboxAndId2CtaClick", "InboxAndId2Read", "InboxAndId2Sent", "InboxAndId3CtaClick", "InboxAndId3Read", "InboxAndId3Sent", "InboxAndId4CtaClick", "InboxAndId4Read", "InboxAndId4Sent", "InboxAndId5CtaClick", "InboxAndId5Read", "InboxAndId5Sent", "InboxAndId6CtaClick", "InboxAndId6Read", "InboxAndId6Sent", "InboxAndId7CtaClick", "InboxAndId7Read", "InboxAndId7Sent", "InboxAndId8CtaClick", "InboxAndId8Read", "InboxAndId8Sent", "InboxRemoteCtaClick", "InboxRemoteRead", "InboxRemoteSent", "IncomingCallBlockedEvent", "IncomingCallerTypeEvent", "IncomingMessageBlockedEvent", "InitiatedCallEvent", "InitiatedMessageEvent", "InstalledDeviceImeiEvent", "LookupEvent", "ManualLookupEvent", "MissedCallEvent", "NetworkTypeEvent", "NotificationsMessageDelete", "NotificationsMessageRead", "NotificationsPageView", "NumberDetailsAddContact", "NumberDetailsAllow", "NumberDetailsBlock", "NumberDetailsCall", "NumberDetailsCategorySurveyClick", "NumberDetailsReport", "NumberDetailsRoboSurveyClick", "NumberDetailsText", "NumberDetailsView", "NumberReportSubmit", "NumberReportView", "OffenderListSyncEvent", "OnboardingSubscription", "OnboardingSubscriptionAction", "OpenedContactsEvent", "OpenedFromAppNotifEvent", "OpenedFromCampaignNotifEvent", "PaymentInterface", "PaymentResultEvent", "PaymentStartedEvent", "PermissionRequiredToggleClick", "PermissionRequiredView", "PermissionSmsDeny", "PermissionsAllowClick", "PermissionsCallLogsAllow", "PermissionsCallLogsDeny", "PermissionsCallLogsPopupView", "PermissionsCloseClick", "PermissionsContactsAllow", "PermissionsContactsDeny", "PermissionsContactsPopupView", "PermissionsManageCallsAllow", "PermissionsManageCallsDeny", "PermissionsManageCallsPopupView", "PermissionsPageView", "PermissionsSmsAllow", "PermissionsSmsPopupView", "PingEvent", "PreCallCenterFiredEvent", "PrivacyPolicyContinueClick", "PrivacyPolicyView", "ScammerBlockedEvent", "SettingsAbout", "SettingsAccountServicesOff", "SettingsAccountServicesOn", "SettingsAccountServicesUpsellClick", "SettingsCharityOff", "SettingsCharityOn", "SettingsCharityUpsellClick", "SettingsHelp", "SettingsNuisanceOff", "SettingsNuisanceOn", "SettingsNuisanceUpsellClick", "SettingsPageView", "SettingsPoliticalOff", "SettingsPoliticalOn", "SettingsPoliticalUpsellClick", "SettingsPrisonOff", "SettingsPrisonOn", "SettingsPrisonUpsellClick", "SettingsRate", "SettingsScamOff", "SettingsScamOn", "SettingsShare", "SettingsSurveyOff", "SettingsSurveyOn", "SettingsSurveyUpsellClick", "SettingsTelemarketingOff", "SettingsTelemarketingOn", "SettingsTelemarketingUpsellClick", "SharedLinkEvent", "SideMenuActivity", "SideMenuBlockAllowList", "SideMenuClick", "SideMenuDashboard", "SideMenuNotification", "SideMenuSetting", "SideMenuView", "SkippedPhoneVerification", "StartupApplicationEvent", "SubscriberStatusEvent", "UserNumberBlockedEvent", "WalkthroughSkipAction", "WalkthroughSkippedEvent", "WalkthroughViewed", "WelcomeLogoSplashPageView", "WelcomeUpsellFreeUserBackClick", "WelcomeUpsellFreeUserCloseClick", "WelcomeUpsellFreeUserPageView", "WelcomeUpsellFreeUserPpClick", "WelcomeUpsellFreeUserTacClick", "WelcomeUpsellFreeUserTrialClick", "WelcomeUpsellPremiumUserBackClick", "WelcomeUpsellPremiumUserContinueClick", "WelcomeUpsellPremiumUserPageView", "WelcomeUpsellPremiumUserPpClick", "WelcomeUpsellPremiumUserTacClick", "Lcom/privacystar/core/service/analytics/Event$ActiveToExpiredEvent;", "Lcom/privacystar/core/service/analytics/Event$ApprovedNumberEvent;", "Lcom/privacystar/core/service/analytics/Event$BlockCallButtonEvent;", "Lcom/privacystar/core/service/analytics/Event$BlockCallYesEvent;", "Lcom/privacystar/core/service/analytics/Event$BlockNumberEvent;", "Lcom/privacystar/core/service/analytics/Event$CallCenterStatusEvent;", "Lcom/privacystar/core/service/analytics/Event$ComplaintFeedbackEvent;", "Lcom/privacystar/core/service/analytics/Event$ComplaintFromHomeEvent;", "Lcom/privacystar/core/service/analytics/Event$ComplaintFromOthersEvent;", "Lcom/privacystar/core/service/analytics/Event$DismissCallCenterEvent;", "Lcom/privacystar/core/service/analytics/Event$EulaAcceptedEvent;", "Lcom/privacystar/core/service/analytics/Event$EulaReadEvent;", "Lcom/privacystar/core/service/analytics/Event$FcmErrorEvent;", "Lcom/privacystar/core/service/analytics/Event$FcmRegistrationEvent;", "Lcom/privacystar/core/service/analytics/Event$HotlistCallEvent;", "Lcom/privacystar/core/service/analytics/Event$IncomingCallBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event$IncomingCallerTypeEvent;", "Lcom/privacystar/core/service/analytics/Event$IncomingMessageBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event$InitiatedCallEvent;", "Lcom/privacystar/core/service/analytics/Event$InitiatedMessageEvent;", "Lcom/privacystar/core/service/analytics/Event$InstalledDeviceImeiEvent;", "Lcom/privacystar/core/service/analytics/Event$ManualLookupEvent;", "Lcom/privacystar/core/service/analytics/Event$MissedCallEvent;", "Lcom/privacystar/core/service/analytics/Event$NetworkTypeEvent;", "Lcom/privacystar/core/service/analytics/Event$OnboardingSubscription;", "Lcom/privacystar/core/service/analytics/Event$OpenedContactsEvent;", "Lcom/privacystar/core/service/analytics/Event$OpenedFromAppNotifEvent;", "Lcom/privacystar/core/service/analytics/Event$OpenedFromCampaignNotifEvent;", "Lcom/privacystar/core/service/analytics/Event$WalkthroughSkippedEvent;", "Lcom/privacystar/core/service/analytics/Event$PaymentResultEvent;", "Lcom/privacystar/core/service/analytics/Event$PaymentStartedEvent;", "Lcom/privacystar/core/service/analytics/Event$PingEvent;", "Lcom/privacystar/core/service/analytics/Event$PreCallCenterFiredEvent;", "Lcom/privacystar/core/service/analytics/Event$ScammerBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event$SharedLinkEvent;", "Lcom/privacystar/core/service/analytics/Event$StartupApplicationEvent;", "Lcom/privacystar/core/service/analytics/Event$SubscriberStatusEvent;", "Lcom/privacystar/core/service/analytics/Event$UserNumberBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event$ExtendedCallInformationEvent;", "Lcom/privacystar/core/service/analytics/Event$WelcomeLogoSplashPageView;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPageView;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserCloseClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTrialClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPpClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTacClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserBackClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPageView;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserBackClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserContinueClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPpClick;", "Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserTacClick;", "Lcom/privacystar/core/service/analytics/Event$PrivacyPolicyView;", "Lcom/privacystar/core/service/analytics/Event$PrivacyPolicyContinueClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationView;", "Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationNumberEnterClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationSendClick;", "Lcom/privacystar/core/service/analytics/Event$PermissionsSmsPopupView;", "Lcom/privacystar/core/service/analytics/Event$PermissionsSmsAllow;", "Lcom/privacystar/core/service/analytics/Event$PermissionSmsDeny;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodePageView;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeNumberEnterClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeResendClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerificationErrorCode;", "Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerifyingView;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeBackClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberView;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberEnterNumberClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberSendClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationCallCategoryPageView;", "Lcom/privacystar/core/service/analytics/Event$ActivationCallCategoryctaClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationCategorySettingView;", "Lcom/privacystar/core/service/analytics/Event$ActivationScamOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationScamOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationSurveyOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationSurveyOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationSurveyUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationCharityOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationCharityOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationCharityUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationPrisonOn;", "Lcom/privacystar/core/service/analytics/Event$ActivationPrisonOff;", "Lcom/privacystar/core/service/analytics/Event$ActivationPrisonUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$PermissionsPageView;", "Lcom/privacystar/core/service/analytics/Event$PermissionsAllowClick;", "Lcom/privacystar/core/service/analytics/Event$PermissionsCloseClick;", "Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsPopupView;", "Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsAllow;", "Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsDeny;", "Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsPopupView;", "Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsAllow;", "Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsDeny;", "Lcom/privacystar/core/service/analytics/Event$PermissionsContactsPopupView;", "Lcom/privacystar/core/service/analytics/Event$PermissionsContactsAllow;", "Lcom/privacystar/core/service/analytics/Event$PermissionsContactsDeny;", "Lcom/privacystar/core/service/analytics/Event$PermissionRequiredView;", "Lcom/privacystar/core/service/analytics/Event$PermissionRequiredToggleClick;", "Lcom/privacystar/core/service/analytics/Event$SideMenuClick;", "Lcom/privacystar/core/service/analytics/Event$ActivityPageView;", "Lcom/privacystar/core/service/analytics/Event$ActivityNumberLookupClick;", "Lcom/privacystar/core/service/analytics/Event$ActivityInactivityVerifyView;", "Lcom/privacystar/core/service/analytics/Event$ActivityInactivityVerifyClick;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsView;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsCall;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsText;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsBlock;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsAllow;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsReport;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsAddContact;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsRoboSurveyClick;", "Lcom/privacystar/core/service/analytics/Event$NumberDetailsCategorySurveyClick;", "Lcom/privacystar/core/service/analytics/Event$NumberReportView;", "Lcom/privacystar/core/service/analytics/Event$NumberReportSubmit;", "Lcom/privacystar/core/service/analytics/Event$SideMenuView;", "Lcom/privacystar/core/service/analytics/Event$SideMenuActivity;", "Lcom/privacystar/core/service/analytics/Event$SideMenuBlockAllowList;", "Lcom/privacystar/core/service/analytics/Event$SideMenuNotification;", "Lcom/privacystar/core/service/analytics/Event$SideMenuSetting;", "Lcom/privacystar/core/service/analytics/Event$SideMenuDashboard;", "Lcom/privacystar/core/service/analytics/Event$BlockNewEntry;", "Lcom/privacystar/core/service/analytics/Event$BlockAddNumber;", "Lcom/privacystar/core/service/analytics/Event$BlockRemoveNumber;", "Lcom/privacystar/core/service/analytics/Event$BlockViewDetails;", "Lcom/privacystar/core/service/analytics/Event$AllowNewEntry;", "Lcom/privacystar/core/service/analytics/Event$AllowAddNumber;", "Lcom/privacystar/core/service/analytics/Event$AllowRemoveNumber;", "Lcom/privacystar/core/service/analytics/Event$AllowViewDetails;", "Lcom/privacystar/core/service/analytics/Event$NotificationsPageView;", "Lcom/privacystar/core/service/analytics/Event$NotificationsMessageDelete;", "Lcom/privacystar/core/service/analytics/Event$NotificationsMessageRead;", "Lcom/privacystar/core/service/analytics/Event$SettingsPageView;", "Lcom/privacystar/core/service/analytics/Event$SettingsHelp;", "Lcom/privacystar/core/service/analytics/Event$SettingsAbout;", "Lcom/privacystar/core/service/analytics/Event$SettingsShare;", "Lcom/privacystar/core/service/analytics/Event$SettingsRate;", "Lcom/privacystar/core/service/analytics/Event$SettingsScamOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsScamOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsSurveyOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsSurveyOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsSurveyUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsCharityOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsCharityOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsCharityUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$SettingsPrisonOn;", "Lcom/privacystar/core/service/analytics/Event$SettingsPrisonOff;", "Lcom/privacystar/core/service/analytics/Event$SettingsPrisonUpsellClick;", "Lcom/privacystar/core/service/analytics/Event$AboutPageView;", "Lcom/privacystar/core/service/analytics/Event$AboutPrivacyPolicy;", "Lcom/privacystar/core/service/analytics/Event$AboutTermsOfService;", "Lcom/privacystar/core/service/analytics/Event$DashboardPageView;", "Lcom/privacystar/core/service/analytics/Event$CallerIdentifierPopup;", "Lcom/privacystar/core/service/analytics/Event$CallerIdentifierBlock;", "Lcom/privacystar/core/service/analytics/Event$CallerIdentifierClose;", "Lcom/privacystar/core/service/analytics/Event$DropdownNotificationBlock;", "Lcom/privacystar/core/service/analytics/Event$DropdownNotificationReport;", "Lcom/privacystar/core/service/analytics/Event$DropdownNotificationClick;", "Lcom/privacystar/core/service/analytics/Event$SkippedPhoneVerification;", "Lcom/privacystar/core/service/analytics/Event$LookupEvent;", "Lcom/privacystar/core/service/analytics/Event$OffenderListSyncEvent;", "Lcom/privacystar/core/service/analytics/Event$ComplaintFeedback;", "Lcom/privacystar/core/service/analytics/Event$ComplaintFiled;", "Lcom/privacystar/core/service/analytics/Event$WalkthroughViewed;", "Lcom/privacystar/core/service/analytics/Event$InboxRemoteSent;", "Lcom/privacystar/core/service/analytics/Event$InboxRemoteRead;", "Lcom/privacystar/core/service/analytics/Event$InboxRemoteCtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId1Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId1Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId1CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId2Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId2Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId2CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId3Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId3Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId3CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId4Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId4Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId4CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId5Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId5Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId5CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId6Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId6Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId6CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId7Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId7Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId7CtaClick;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId8Sent;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId8Read;", "Lcom/privacystar/core/service/analytics/Event$InboxAndId8CtaClick;", "Lcom/privacystar/core/service/analytics/Event$ActivationSuccessView;", "Lcom/privacystar/core/service/analytics/Event$ActivationSuccessClick;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event.class */
public abstract class Event {

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AboutPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AboutPageView.class */
    public static final class AboutPageView extends Event {
        public static final AboutPageView INSTANCE = new AboutPageView();

        private AboutPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AboutPrivacyPolicy;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AboutPrivacyPolicy.class */
    public static final class AboutPrivacyPolicy extends Event {
        public static final AboutPrivacyPolicy INSTANCE = new AboutPrivacyPolicy();

        private AboutPrivacyPolicy() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AboutTermsOfService;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AboutTermsOfService.class */
    public static final class AboutTermsOfService extends Event {
        public static final AboutTermsOfService INSTANCE = new AboutTermsOfService();

        private AboutTermsOfService() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationAccountServicesOff.class */
    public static final class ActivationAccountServicesOff extends Event {
        public static final ActivationAccountServicesOff INSTANCE = new ActivationAccountServicesOff();

        private ActivationAccountServicesOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationAccountServicesOn.class */
    public static final class ActivationAccountServicesOn extends Event {
        public static final ActivationAccountServicesOn INSTANCE = new ActivationAccountServicesOn();

        private ActivationAccountServicesOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationAccountServicesUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationAccountServicesUpsellClick.class */
    public static final class ActivationAccountServicesUpsellClick extends Event {
        public static final ActivationAccountServicesUpsellClick INSTANCE = new ActivationAccountServicesUpsellClick();

        private ActivationAccountServicesUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCallCategoryPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCallCategoryPageView.class */
    public static final class ActivationCallCategoryPageView extends Event {
        public static final ActivationCallCategoryPageView INSTANCE = new ActivationCallCategoryPageView();

        private ActivationCallCategoryPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCallCategoryctaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCallCategoryctaClick.class */
    public static final class ActivationCallCategoryctaClick extends Event {
        public static final ActivationCallCategoryctaClick INSTANCE = new ActivationCallCategoryctaClick();

        private ActivationCallCategoryctaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCategorySettingView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCategorySettingView.class */
    public static final class ActivationCategorySettingView extends Event {
        public static final ActivationCategorySettingView INSTANCE = new ActivationCategorySettingView();

        private ActivationCategorySettingView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCharityOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCharityOff.class */
    public static final class ActivationCharityOff extends Event {
        public static final ActivationCharityOff INSTANCE = new ActivationCharityOff();

        private ActivationCharityOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCharityOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCharityOn.class */
    public static final class ActivationCharityOn extends Event {
        public static final ActivationCharityOn INSTANCE = new ActivationCharityOn();

        private ActivationCharityOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationCharityUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationCharityUpsellClick.class */
    public static final class ActivationCharityUpsellClick extends Event {
        public static final ActivationCharityUpsellClick INSTANCE = new ActivationCharityUpsellClick();

        private ActivationCharityUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNuisanceOff.class */
    public static final class ActivationNuisanceOff extends Event {
        public static final ActivationNuisanceOff INSTANCE = new ActivationNuisanceOff();

        private ActivationNuisanceOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNuisanceOn.class */
    public static final class ActivationNuisanceOn extends Event {
        public static final ActivationNuisanceOn INSTANCE = new ActivationNuisanceOn();

        private ActivationNuisanceOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNuisanceUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNuisanceUpsellClick.class */
    public static final class ActivationNuisanceUpsellClick extends Event {
        public static final ActivationNuisanceUpsellClick INSTANCE = new ActivationNuisanceUpsellClick();

        private ActivationNuisanceUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationNumberEnterClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNumberVerificationNumberEnterClick.class */
    public static final class ActivationNumberVerificationNumberEnterClick extends Event {
        public static final ActivationNumberVerificationNumberEnterClick INSTANCE = new ActivationNumberVerificationNumberEnterClick();

        private ActivationNumberVerificationNumberEnterClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationSendClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNumberVerificationSendClick.class */
    public static final class ActivationNumberVerificationSendClick extends Event {
        public static final ActivationNumberVerificationSendClick INSTANCE = new ActivationNumberVerificationSendClick();

        private ActivationNumberVerificationSendClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerificationView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNumberVerificationView.class */
    public static final class ActivationNumberVerificationView extends Event {
        public static final ActivationNumberVerificationView INSTANCE = new ActivationNumberVerificationView();

        private ActivationNumberVerificationView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationNumberVerifyingView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationNumberVerifyingView.class */
    public static final class ActivationNumberVerifyingView extends Event {
        public static final ActivationNumberVerifyingView INSTANCE = new ActivationNumberVerifyingView();

        private ActivationNumberVerifyingView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPoliticalOff.class */
    public static final class ActivationPoliticalOff extends Event {
        public static final ActivationPoliticalOff INSTANCE = new ActivationPoliticalOff();

        private ActivationPoliticalOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPoliticalOn.class */
    public static final class ActivationPoliticalOn extends Event {
        public static final ActivationPoliticalOn INSTANCE = new ActivationPoliticalOn();

        private ActivationPoliticalOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPoliticalUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPoliticalUpsellClick.class */
    public static final class ActivationPoliticalUpsellClick extends Event {
        public static final ActivationPoliticalUpsellClick INSTANCE = new ActivationPoliticalUpsellClick();

        private ActivationPoliticalUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPrisonOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPrisonOff.class */
    public static final class ActivationPrisonOff extends Event {
        public static final ActivationPrisonOff INSTANCE = new ActivationPrisonOff();

        private ActivationPrisonOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPrisonOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPrisonOn.class */
    public static final class ActivationPrisonOn extends Event {
        public static final ActivationPrisonOn INSTANCE = new ActivationPrisonOn();

        private ActivationPrisonOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationPrisonUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationPrisonUpsellClick.class */
    public static final class ActivationPrisonUpsellClick extends Event {
        public static final ActivationPrisonUpsellClick INSTANCE = new ActivationPrisonUpsellClick();

        private ActivationPrisonUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationScamOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationScamOff.class */
    public static final class ActivationScamOff extends Event {
        public static final ActivationScamOff INSTANCE = new ActivationScamOff();

        private ActivationScamOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationScamOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationScamOn.class */
    public static final class ActivationScamOn extends Event {
        public static final ActivationScamOn INSTANCE = new ActivationScamOn();

        private ActivationScamOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationSuccessClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationSuccessClick.class */
    public static final class ActivationSuccessClick extends Event {
        public static final ActivationSuccessClick INSTANCE = new ActivationSuccessClick();

        private ActivationSuccessClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationSuccessView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationSuccessView.class */
    public static final class ActivationSuccessView extends Event {
        public static final ActivationSuccessView INSTANCE = new ActivationSuccessView();

        private ActivationSuccessView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationSurveyOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationSurveyOff.class */
    public static final class ActivationSurveyOff extends Event {
        public static final ActivationSurveyOff INSTANCE = new ActivationSurveyOff();

        private ActivationSurveyOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationSurveyOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationSurveyOn.class */
    public static final class ActivationSurveyOn extends Event {
        public static final ActivationSurveyOn INSTANCE = new ActivationSurveyOn();

        private ActivationSurveyOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationSurveyUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationSurveyUpsellClick.class */
    public static final class ActivationSurveyUpsellClick extends Event {
        public static final ActivationSurveyUpsellClick INSTANCE = new ActivationSurveyUpsellClick();

        private ActivationSurveyUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationTelemarketingOff.class */
    public static final class ActivationTelemarketingOff extends Event {
        public static final ActivationTelemarketingOff INSTANCE = new ActivationTelemarketingOff();

        private ActivationTelemarketingOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationTelemarketingOn.class */
    public static final class ActivationTelemarketingOn extends Event {
        public static final ActivationTelemarketingOn INSTANCE = new ActivationTelemarketingOn();

        private ActivationTelemarketingOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationTelemarketingUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationTelemarketingUpsellClick.class */
    public static final class ActivationTelemarketingUpsellClick extends Event {
        public static final ActivationTelemarketingUpsellClick INSTANCE = new ActivationTelemarketingUpsellClick();

        private ActivationTelemarketingUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeBackClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerificationCodeBackClick.class */
    public static final class ActivationVerificationCodeBackClick extends Event {
        public static final ActivationVerificationCodeBackClick INSTANCE = new ActivationVerificationCodeBackClick();

        private ActivationVerificationCodeBackClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeNumberEnterClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerificationCodeNumberEnterClick.class */
    public static final class ActivationVerificationCodeNumberEnterClick extends Event {
        public static final ActivationVerificationCodeNumberEnterClick INSTANCE = new ActivationVerificationCodeNumberEnterClick();

        private ActivationVerificationCodeNumberEnterClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodePageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerificationCodePageView.class */
    public static final class ActivationVerificationCodePageView extends Event {
        public static final ActivationVerificationCodePageView INSTANCE = new ActivationVerificationCodePageView();

        private ActivationVerificationCodePageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerificationCodeResendClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerificationCodeResendClick.class */
    public static final class ActivationVerificationCodeResendClick extends Event {
        public static final ActivationVerificationCodeResendClick INSTANCE = new ActivationVerificationCodeResendClick();

        private ActivationVerificationCodeResendClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerificationErrorCode;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerificationErrorCode.class */
    public static final class ActivationVerificationErrorCode extends Event {
        public static final ActivationVerificationErrorCode INSTANCE = new ActivationVerificationErrorCode();

        private ActivationVerificationErrorCode() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberEnterNumberClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberEnterNumberClick.class */
    public static final class ActivationVerifyYourNumberEnterNumberClick extends Event {
        public static final ActivationVerifyYourNumberEnterNumberClick INSTANCE = new ActivationVerifyYourNumberEnterNumberClick();

        private ActivationVerifyYourNumberEnterNumberClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberSendClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberSendClick.class */
    public static final class ActivationVerifyYourNumberSendClick extends Event {
        public static final ActivationVerifyYourNumberSendClick INSTANCE = new ActivationVerifyYourNumberSendClick();

        private ActivationVerifyYourNumberSendClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivationVerifyYourNumberView.class */
    public static final class ActivationVerifyYourNumberView extends Event {
        public static final ActivationVerifyYourNumberView INSTANCE = new ActivationVerifyYourNumberView();

        private ActivationVerifyYourNumberView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActiveToExpiredEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActiveToExpiredEvent.class */
    public static final class ActiveToExpiredEvent extends Event {
        public static final ActiveToExpiredEvent INSTANCE = new ActiveToExpiredEvent();

        private ActiveToExpiredEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivityInactivityVerifyClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivityInactivityVerifyClick.class */
    public static final class ActivityInactivityVerifyClick extends Event {
        public static final ActivityInactivityVerifyClick INSTANCE = new ActivityInactivityVerifyClick();

        private ActivityInactivityVerifyClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivityInactivityVerifyView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivityInactivityVerifyView.class */
    public static final class ActivityInactivityVerifyView extends Event {
        public static final ActivityInactivityVerifyView INSTANCE = new ActivityInactivityVerifyView();

        private ActivityInactivityVerifyView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivityNumberLookupClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivityNumberLookupClick.class */
    public static final class ActivityNumberLookupClick extends Event {
        public static final ActivityNumberLookupClick INSTANCE = new ActivityNumberLookupClick();

        private ActivityNumberLookupClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ActivityPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ActivityPageView.class */
    public static final class ActivityPageView extends Event {
        public static final ActivityPageView INSTANCE = new ActivityPageView();

        private ActivityPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AllowAddNumber;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AllowAddNumber.class */
    public static final class AllowAddNumber extends Event {
        public static final AllowAddNumber INSTANCE = new AllowAddNumber();

        private AllowAddNumber() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AllowNewEntry;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AllowNewEntry.class */
    public static final class AllowNewEntry extends Event {
        public static final AllowNewEntry INSTANCE = new AllowNewEntry();

        private AllowNewEntry() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AllowRemoveNumber;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AllowRemoveNumber.class */
    public static final class AllowRemoveNumber extends Event {
        public static final AllowRemoveNumber INSTANCE = new AllowRemoveNumber();

        private AllowRemoveNumber() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$AllowViewDetails;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$AllowViewDetails.class */
    public static final class AllowViewDetails extends Event {
        public static final AllowViewDetails INSTANCE = new AllowViewDetails();

        private AllowViewDetails() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ApprovedListAction;", "", OperationFields.ACTION_CODE, "", "(Ljava/lang/String;II)V", "APPROVE", "UNAPPROVE", "FAIL", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ApprovedListAction.class */
    public enum ApprovedListAction {
        APPROVE(0),
        UNAPPROVE(1),
        FAIL(-1);

        ApprovedListAction(int i) {
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ApprovedNumberEvent;", "Lcom/privacystar/core/service/analytics/Event;", "number", "", BlockingManager.ACTION_CONSTANT, "Lcom/privacystar/core/service/analytics/Event$ApprovedListAction;", "(Ljava/lang/String;Lcom/privacystar/core/service/analytics/Event$ApprovedListAction;)V", "getAction", "()Lcom/privacystar/core/service/analytics/Event$ApprovedListAction;", "getNumber", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ApprovedNumberEvent.class */
    public static final class ApprovedNumberEvent extends Event {
        @NotNull
        private final ApprovedListAction action;
        @NotNull
        private final String number;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ApprovedNumberEvent(@NotNull String number, @NotNull ApprovedListAction action) {
            super(null);
            Intrinsics.checkParameterIsNotNull(number, "number");
            Intrinsics.checkParameterIsNotNull(action, "action");
            this.number = number;
            this.action = action;
        }

        @NotNull
        public final ApprovedListAction getAction() {
            return this.action;
        }

        @NotNull
        public final String getNumber() {
            return this.number;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockAddNumber;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockAddNumber.class */
    public static final class BlockAddNumber extends Event {
        public static final BlockAddNumber INSTANCE = new BlockAddNumber();

        private BlockAddNumber() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockCallButtonEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockCallButtonEvent.class */
    public static final class BlockCallButtonEvent extends Event {
        public static final BlockCallButtonEvent INSTANCE = new BlockCallButtonEvent();

        private BlockCallButtonEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockCallYesEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockCallYesEvent.class */
    public static final class BlockCallYesEvent extends Event {
        public static final BlockCallYesEvent INSTANCE = new BlockCallYesEvent();

        private BlockCallYesEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\b\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockListAction;", "", OperationFields.ACTION_CODE, "", "(Ljava/lang/String;II)V", "BLOCK", "UNBLOCK", "FAIL", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockListAction.class */
    public enum BlockListAction {
        BLOCK(0),
        UNBLOCK(1),
        FAIL(-1);

        BlockListAction(int i) {
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockNewEntry;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockNewEntry.class */
    public static final class BlockNewEntry extends Event {
        public static final BlockNewEntry INSTANCE = new BlockNewEntry();

        private BlockNewEntry() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockNumberEvent;", "Lcom/privacystar/core/service/analytics/Event;", "number", "", BlockingManager.ACTION_CONSTANT, "Lcom/privacystar/core/service/analytics/Event$BlockListAction;", "(Ljava/lang/String;Lcom/privacystar/core/service/analytics/Event$BlockListAction;)V", "getAction", "()Lcom/privacystar/core/service/analytics/Event$BlockListAction;", "getNumber", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockNumberEvent.class */
    public static final class BlockNumberEvent extends Event {
        @NotNull
        private final BlockListAction action;
        @NotNull
        private final String number;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BlockNumberEvent(@NotNull String number, @NotNull BlockListAction action) {
            super(null);
            Intrinsics.checkParameterIsNotNull(number, "number");
            Intrinsics.checkParameterIsNotNull(action, "action");
            this.number = number;
            this.action = action;
        }

        @NotNull
        public final BlockListAction getAction() {
            return this.action;
        }

        @NotNull
        public final String getNumber() {
            return this.number;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockRemoveNumber;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockRemoveNumber.class */
    public static final class BlockRemoveNumber extends Event {
        public static final BlockRemoveNumber INSTANCE = new BlockRemoveNumber();

        private BlockRemoveNumber() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$BlockViewDetails;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$BlockViewDetails.class */
    public static final class BlockViewDetails extends Event {
        public static final BlockViewDetails INSTANCE = new BlockViewDetails();

        private BlockViewDetails() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0006\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\u0007\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0013\u0010\b\u001a\u00020\u00032\b\u0010\t\u001a\u0004\u0018\u00010\nHÖ\u0003J\t\u0010\u000b\u001a\u00020\fHÖ\u0001J\t\u0010\r\u001a\u00020\u000eHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CallCenterStatusEvent;", "Lcom/privacystar/core/service/analytics/Event;", "isEnabled", "", "(Z)V", "()Z", "component1", "copy", "equals", "other", "", "hashCode", "", "toString", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CallCenterStatusEvent.class */
    public static final class CallCenterStatusEvent extends Event {
        private final boolean isEnabled;

        public CallCenterStatusEvent(boolean z) {
            super(null);
            this.isEnabled = z;
        }

        @NotNull
        public static /* synthetic */ CallCenterStatusEvent copy$default(CallCenterStatusEvent callCenterStatusEvent, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                z = callCenterStatusEvent.isEnabled;
            }
            return callCenterStatusEvent.copy(z);
        }

        public final boolean component1() {
            return this.isEnabled;
        }

        @NotNull
        public final CallCenterStatusEvent copy(boolean z) {
            return new CallCenterStatusEvent(z);
        }

        public boolean equals(@Nullable Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof CallCenterStatusEvent)) {
                return false;
            }
            return this.isEnabled == ((CallCenterStatusEvent) obj).isEnabled;
        }

        public int hashCode() {
            boolean z = this.isEnabled;
            boolean z2 = z;
            if (z) {
                z2 = true;
            }
            int i = z2 ? 1 : 0;
            int i2 = z2 ? 1 : 0;
            return i;
        }

        public final boolean isEnabled() {
            return this.isEnabled;
        }

        @NotNull
        public String toString() {
            return "CallCenterStatusEvent(isEnabled=" + this.isEnabled + ")";
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\b¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CallResolutionType;", "", "(Ljava/lang/String;I)V", BlockingManager.MATCHVALUE_UNKNOWN, "ANSWERED", "BLOCKED", "DECLINED", "MISSED", "VM", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CallResolutionType.class */
    public enum CallResolutionType {
        UNKNOWN,
        ANSWERED,
        BLOCKED,
        DECLINED,
        MISSED,
        VM
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CallerIdentifierBlock;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CallerIdentifierBlock.class */
    public static final class CallerIdentifierBlock extends Event {
        public static final CallerIdentifierBlock INSTANCE = new CallerIdentifierBlock();

        private CallerIdentifierBlock() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CallerIdentifierClose;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CallerIdentifierClose.class */
    public static final class CallerIdentifierClose extends Event {
        public static final CallerIdentifierClose INSTANCE = new CallerIdentifierClose();

        private CallerIdentifierClose() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CallerIdentifierPopup;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CallerIdentifierPopup.class */
    public static final class CallerIdentifierPopup extends Event {
        public static final CallerIdentifierPopup INSTANCE = new CallerIdentifierPopup();

        private CallerIdentifierPopup() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0013\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\b6\u0018�� \u000f2\u00020\u0001:\n\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018B'\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u0007\u001a\u00020\u0005¢\u0006\u0002\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\t\u0010\nR\u0011\u0010\u0007\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\r\u0010\fR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000e\u0010\f\u0082\u0001\t\u0019\u001a\u001b\u001c\u001d\u001e\u001f !¨\u0006\""}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign;", "", "batchId", "", "sendEvent", "Lcom/privacystar/core/service/analytics/Event;", "readEvent", "clickEvent", "(Ljava/lang/String;Lcom/privacystar/core/service/analytics/Event;Lcom/privacystar/core/service/analytics/Event;Lcom/privacystar/core/service/analytics/Event;)V", "getBatchId", "()Ljava/lang/String;", "getClickEvent", "()Lcom/privacystar/core/service/analytics/Event;", "getReadEvent", "getSendEvent", "Companion", "FreeUserBiweeklyLocalCampaign", "InactiveUseLocalCampaign", "LookupSecondDayLocalCampaign", "RateAppSeventhDayLocalCampaign", "RemoteCampaign", "ReportingFourthDayLocalCampaign", "SpamCallBlockingMilestoneLocalCampaign", "WeeklyReportLocalCampaign", "WelcomeSubscriberLocalCampaign", "Lcom/privacystar/core/service/analytics/Event$Campaign$WelcomeSubscriberLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$InactiveUseLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$RateAppSeventhDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$FreeUserBiweeklyLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$ReportingFourthDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$LookupSecondDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$WeeklyReportLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$SpamCallBlockingMilestoneLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign$RemoteCampaign;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign.class */
    public static abstract class Campaign {
        public static final Companion Companion = new Companion(null);
        @NotNull
        private final String batchId;
        @NotNull
        private final Event clickEvent;
        @NotNull
        private final Event readEvent;
        @NotNull
        private final Event sendEvent;

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$Companion;", "", "()V", "valueOf", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "batchId", "", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$Companion.class */
        public static final class Companion {
            private Companion() {
            }

            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            @NotNull
            public final Campaign valueOf(@NotNull String batchId) {
                Intrinsics.checkParameterIsNotNull(batchId, "batchId");
                return Intrinsics.areEqual(batchId, WelcomeSubscriberLocalCampaign.INSTANCE.getBatchId()) ? WelcomeSubscriberLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, InactiveUseLocalCampaign.INSTANCE.getBatchId()) ? InactiveUseLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, FreeUserBiweeklyLocalCampaign.INSTANCE.getBatchId()) ? FreeUserBiweeklyLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, ReportingFourthDayLocalCampaign.INSTANCE.getBatchId()) ? ReportingFourthDayLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, LookupSecondDayLocalCampaign.INSTANCE.getBatchId()) ? LookupSecondDayLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, RateAppSeventhDayLocalCampaign.INSTANCE.getBatchId()) ? RateAppSeventhDayLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, WeeklyReportLocalCampaign.INSTANCE.getBatchId()) ? WeeklyReportLocalCampaign.INSTANCE : Intrinsics.areEqual(batchId, SpamCallBlockingMilestoneLocalCampaign.INSTANCE.getBatchId()) ? SpamCallBlockingMilestoneLocalCampaign.INSTANCE : new RemoteCampaign(batchId);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$FreeUserBiweeklyLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$FreeUserBiweeklyLocalCampaign.class */
        public static final class FreeUserBiweeklyLocalCampaign extends Campaign {
            public static final FreeUserBiweeklyLocalCampaign INSTANCE = new FreeUserBiweeklyLocalCampaign();

            private FreeUserBiweeklyLocalCampaign() {
                super("local_campaign-4", InboxAndId4Sent.INSTANCE, InboxAndId4Read.INSTANCE, InboxAndId4CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$InactiveUseLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$InactiveUseLocalCampaign.class */
        public static final class InactiveUseLocalCampaign extends Campaign {
            public static final InactiveUseLocalCampaign INSTANCE = new InactiveUseLocalCampaign();

            private InactiveUseLocalCampaign() {
                super("local_campaign-2", InboxAndId2Sent.INSTANCE, InboxAndId2Read.INSTANCE, InboxAndId2CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$LookupSecondDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$LookupSecondDayLocalCampaign.class */
        public static final class LookupSecondDayLocalCampaign extends Campaign {
            public static final LookupSecondDayLocalCampaign INSTANCE = new LookupSecondDayLocalCampaign();

            private LookupSecondDayLocalCampaign() {
                super("local_campaign-6", InboxAndId6Sent.INSTANCE, InboxAndId6Read.INSTANCE, InboxAndId6CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$RateAppSeventhDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$RateAppSeventhDayLocalCampaign.class */
        public static final class RateAppSeventhDayLocalCampaign extends Campaign {
            public static final RateAppSeventhDayLocalCampaign INSTANCE = new RateAppSeventhDayLocalCampaign();

            private RateAppSeventhDayLocalCampaign() {
                super("local_campaign-3", InboxAndId3Sent.INSTANCE, InboxAndId3Read.INSTANCE, InboxAndId3CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004¨\u0006\u0005"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$RemoteCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "batchId", "", "(Ljava/lang/String;)V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$RemoteCampaign.class */
        public static final class RemoteCampaign extends Campaign {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public RemoteCampaign(@NotNull String batchId) {
                super(batchId, InboxRemoteSent.INSTANCE, InboxRemoteRead.INSTANCE, InboxRemoteCtaClick.INSTANCE, null);
                Intrinsics.checkParameterIsNotNull(batchId, "batchId");
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$ReportingFourthDayLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$ReportingFourthDayLocalCampaign.class */
        public static final class ReportingFourthDayLocalCampaign extends Campaign {
            public static final ReportingFourthDayLocalCampaign INSTANCE = new ReportingFourthDayLocalCampaign();

            private ReportingFourthDayLocalCampaign() {
                super("local_campaign-5", InboxAndId5Sent.INSTANCE, InboxAndId5Read.INSTANCE, InboxAndId5CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$SpamCallBlockingMilestoneLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$SpamCallBlockingMilestoneLocalCampaign.class */
        public static final class SpamCallBlockingMilestoneLocalCampaign extends Campaign {
            public static final SpamCallBlockingMilestoneLocalCampaign INSTANCE = new SpamCallBlockingMilestoneLocalCampaign();

            private SpamCallBlockingMilestoneLocalCampaign() {
                super("local_campaign-8", InboxAndId8Sent.INSTANCE, InboxAndId8Read.INSTANCE, InboxAndId8CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$WeeklyReportLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$WeeklyReportLocalCampaign.class */
        public static final class WeeklyReportLocalCampaign extends Campaign {
            public static final WeeklyReportLocalCampaign INSTANCE = new WeeklyReportLocalCampaign();

            private WeeklyReportLocalCampaign() {
                super("local_campaign-7", InboxAndId7Sent.INSTANCE, InboxAndId7Read.INSTANCE, InboxAndId7CtaClick.INSTANCE, null);
            }
        }

        @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$Campaign$WelcomeSubscriberLocalCampaign;", "Lcom/privacystar/core/service/analytics/Event$Campaign;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
        /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$Campaign$WelcomeSubscriberLocalCampaign.class */
        public static final class WelcomeSubscriberLocalCampaign extends Campaign {
            public static final WelcomeSubscriberLocalCampaign INSTANCE = new WelcomeSubscriberLocalCampaign();

            private WelcomeSubscriberLocalCampaign() {
                super("local_campaign-1", InboxAndId1Sent.INSTANCE, InboxAndId1Read.INSTANCE, InboxAndId1CtaClick.INSTANCE, null);
            }
        }

        private Campaign(String str, Event event, Event event2, Event event3) {
            this.batchId = str;
            this.sendEvent = event;
            this.readEvent = event2;
            this.clickEvent = event3;
        }

        public /* synthetic */ Campaign(@NotNull String str, @NotNull Event event, @NotNull Event event2, @NotNull Event event3, DefaultConstructorMarker defaultConstructorMarker) {
            this(str, event, event2, event3);
        }

        @NotNull
        public final String getBatchId() {
            return this.batchId;
        }

        @NotNull
        public final Event getClickEvent() {
            return this.clickEvent;
        }

        @NotNull
        public final Event getReadEvent() {
            return this.readEvent;
        }

        @NotNull
        public final Event getSendEvent() {
            return this.sendEvent;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\n\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$CategoryType;", "", "(Ljava/lang/String;I)V", "SCAM", "NUISANCE", "TELEMARKETER", "ACCOUNT_SERVICES", "POLITICAL", "SURVEY", "CHARITY", "PRISON", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$CategoryType.class */
    public enum CategoryType {
        SCAM,
        NUISANCE,
        TELEMARKETER,
        ACCOUNT_SERVICES,
        POLITICAL,
        SURVEY,
        CHARITY,
        PRISON
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ComplaintFeedback;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ComplaintFeedback.class */
    public static final class ComplaintFeedback extends Event {
        public static final ComplaintFeedback INSTANCE = new ComplaintFeedback();

        private ComplaintFeedback() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u000b\n\u0002\b\b\u0018��2\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0003¢\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\u0006\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\n\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\f¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ComplaintFeedbackEvent;", "Lcom/privacystar/core/service/analytics/Event;", "number", "", "wasRobocall", "", "tag", "(Ljava/lang/String;ZLjava/lang/String;)V", "getNumber", "()Ljava/lang/String;", "getTag", "getWasRobocall", "()Z", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ComplaintFeedbackEvent.class */
    public static final class ComplaintFeedbackEvent extends Event {
        @NotNull
        private final String number;
        @NotNull
        private final String tag;
        private final boolean wasRobocall;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ComplaintFeedbackEvent(@NotNull String number, boolean z, @NotNull String tag) {
            super(null);
            Intrinsics.checkParameterIsNotNull(number, "number");
            Intrinsics.checkParameterIsNotNull(tag, "tag");
            this.number = number;
            this.wasRobocall = z;
            this.tag = tag;
        }

        @NotNull
        public final String getNumber() {
            return this.number;
        }

        @NotNull
        public final String getTag() {
            return this.tag;
        }

        public final boolean getWasRobocall() {
            return this.wasRobocall;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ComplaintFiled;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ComplaintFiled.class */
    public static final class ComplaintFiled extends Event {
        public static final ComplaintFiled INSTANCE = new ComplaintFiled();

        private ComplaintFiled() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ComplaintFromHomeEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ComplaintFromHomeEvent.class */
    public static final class ComplaintFromHomeEvent extends Event {
        public static final ComplaintFromHomeEvent INSTANCE = new ComplaintFromHomeEvent();

        private ComplaintFromHomeEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ComplaintFromOthersEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ComplaintFromOthersEvent.class */
    public static final class ComplaintFromOthersEvent extends Event {
        public static final ComplaintFromOthersEvent INSTANCE = new ComplaintFromOthersEvent();

        private ComplaintFromOthersEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$DashboardPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$DashboardPageView.class */
    public static final class DashboardPageView extends Event {
        public static final DashboardPageView INSTANCE = new DashboardPageView();

        private DashboardPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$DismissCallCenterEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$DismissCallCenterEvent.class */
    public static final class DismissCallCenterEvent extends Event {
        public static final DismissCallCenterEvent INSTANCE = new DismissCallCenterEvent();

        private DismissCallCenterEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$DropdownNotificationBlock;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$DropdownNotificationBlock.class */
    public static final class DropdownNotificationBlock extends Event {
        public static final DropdownNotificationBlock INSTANCE = new DropdownNotificationBlock();

        private DropdownNotificationBlock() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$DropdownNotificationClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$DropdownNotificationClick.class */
    public static final class DropdownNotificationClick extends Event {
        public static final DropdownNotificationClick INSTANCE = new DropdownNotificationClick();

        private DropdownNotificationClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$DropdownNotificationReport;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$DropdownNotificationReport.class */
    public static final class DropdownNotificationReport extends Event {
        public static final DropdownNotificationReport INSTANCE = new DropdownNotificationReport();

        private DropdownNotificationReport() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$EulaAcceptedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$EulaAcceptedEvent.class */
    public static final class EulaAcceptedEvent extends Event {
        public static final EulaAcceptedEvent INSTANCE = new EulaAcceptedEvent();

        private EulaAcceptedEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$EulaReadEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$EulaReadEvent.class */
    public static final class EulaReadEvent extends Event {
        public static final EulaReadEvent INSTANCE = new EulaReadEvent();

        private EulaReadEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\t\n\u0002\b\u000e\u0018��2\u00020\u0001B5\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\b\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\t¢\u0006\u0002\u0010\fR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0010R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0012\u0010\u0013R\u0011\u0010\n\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\u0014\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0017"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ExtendedCallInformationEvent;", "Lcom/privacystar/core/service/analytics/Event;", "oppositeNumber", "Lcom/privacystar/core/util/ParsedPhoneNumber;", "resolutionType", "Lcom/privacystar/core/service/analytics/Event$CallResolutionType;", "blockReason", "", "incomingTime", "", "resolutionTime", "endTime", "(Lcom/privacystar/core/util/ParsedPhoneNumber;Lcom/privacystar/core/service/analytics/Event$CallResolutionType;Ljava/lang/String;JJJ)V", "getBlockReason", "()Ljava/lang/String;", "getEndTime", "()J", "getIncomingTime", "getOppositeNumber", "()Lcom/privacystar/core/util/ParsedPhoneNumber;", "getResolutionTime", "getResolutionType", "()Lcom/privacystar/core/service/analytics/Event$CallResolutionType;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ExtendedCallInformationEvent.class */
    public static final class ExtendedCallInformationEvent extends Event {
        @NotNull
        private final String blockReason;
        private final long endTime;
        private final long incomingTime;
        @NotNull
        private final ParsedPhoneNumber oppositeNumber;
        private final long resolutionTime;
        @NotNull
        private final CallResolutionType resolutionType;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ExtendedCallInformationEvent(@NotNull ParsedPhoneNumber oppositeNumber, @NotNull CallResolutionType resolutionType, @NotNull String blockReason, long j, long j2, long j3) {
            super(null);
            Intrinsics.checkParameterIsNotNull(oppositeNumber, "oppositeNumber");
            Intrinsics.checkParameterIsNotNull(resolutionType, "resolutionType");
            Intrinsics.checkParameterIsNotNull(blockReason, "blockReason");
            this.oppositeNumber = oppositeNumber;
            this.resolutionType = resolutionType;
            this.blockReason = blockReason;
            this.incomingTime = j;
            this.resolutionTime = j2;
            this.endTime = j3;
        }

        @NotNull
        public final String getBlockReason() {
            return this.blockReason;
        }

        public final long getEndTime() {
            return this.endTime;
        }

        public final long getIncomingTime() {
            return this.incomingTime;
        }

        @NotNull
        public final ParsedPhoneNumber getOppositeNumber() {
            return this.oppositeNumber;
        }

        public final long getResolutionTime() {
            return this.resolutionTime;
        }

        @NotNull
        public final CallResolutionType getResolutionType() {
            return this.resolutionType;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$FcmErrorEvent;", "Lcom/privacystar/core/service/analytics/Event;", "errorMessage", "", "(Ljava/lang/String;)V", "getErrorMessage", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$FcmErrorEvent.class */
    public static final class FcmErrorEvent extends Event {
        @NotNull
        private final String errorMessage;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public FcmErrorEvent(@NotNull String errorMessage) {
            super(null);
            Intrinsics.checkParameterIsNotNull(errorMessage, "errorMessage");
            this.errorMessage = errorMessage;
        }

        @NotNull
        public final String getErrorMessage() {
            return this.errorMessage;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$FcmRegistrationEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$FcmRegistrationEvent.class */
    public static final class FcmRegistrationEvent extends Event {
        public static final FcmRegistrationEvent INSTANCE = new FcmRegistrationEvent();

        private FcmRegistrationEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$HotlistCallEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$HotlistCallEvent.class */
    public static final class HotlistCallEvent extends Event {
        public static final HotlistCallEvent INSTANCE = new HotlistCallEvent();

        private HotlistCallEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId1CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId1CtaClick.class */
    public static final class InboxAndId1CtaClick extends Event {
        public static final InboxAndId1CtaClick INSTANCE = new InboxAndId1CtaClick();

        private InboxAndId1CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId1Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId1Read.class */
    public static final class InboxAndId1Read extends Event {
        public static final InboxAndId1Read INSTANCE = new InboxAndId1Read();

        private InboxAndId1Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId1Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId1Sent.class */
    public static final class InboxAndId1Sent extends Event {
        public static final InboxAndId1Sent INSTANCE = new InboxAndId1Sent();

        private InboxAndId1Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId2CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId2CtaClick.class */
    public static final class InboxAndId2CtaClick extends Event {
        public static final InboxAndId2CtaClick INSTANCE = new InboxAndId2CtaClick();

        private InboxAndId2CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId2Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId2Read.class */
    public static final class InboxAndId2Read extends Event {
        public static final InboxAndId2Read INSTANCE = new InboxAndId2Read();

        private InboxAndId2Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId2Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId2Sent.class */
    public static final class InboxAndId2Sent extends Event {
        public static final InboxAndId2Sent INSTANCE = new InboxAndId2Sent();

        private InboxAndId2Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId3CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId3CtaClick.class */
    public static final class InboxAndId3CtaClick extends Event {
        public static final InboxAndId3CtaClick INSTANCE = new InboxAndId3CtaClick();

        private InboxAndId3CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId3Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId3Read.class */
    public static final class InboxAndId3Read extends Event {
        public static final InboxAndId3Read INSTANCE = new InboxAndId3Read();

        private InboxAndId3Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId3Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId3Sent.class */
    public static final class InboxAndId3Sent extends Event {
        public static final InboxAndId3Sent INSTANCE = new InboxAndId3Sent();

        private InboxAndId3Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId4CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId4CtaClick.class */
    public static final class InboxAndId4CtaClick extends Event {
        public static final InboxAndId4CtaClick INSTANCE = new InboxAndId4CtaClick();

        private InboxAndId4CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId4Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId4Read.class */
    public static final class InboxAndId4Read extends Event {
        public static final InboxAndId4Read INSTANCE = new InboxAndId4Read();

        private InboxAndId4Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId4Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId4Sent.class */
    public static final class InboxAndId4Sent extends Event {
        public static final InboxAndId4Sent INSTANCE = new InboxAndId4Sent();

        private InboxAndId4Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId5CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId5CtaClick.class */
    public static final class InboxAndId5CtaClick extends Event {
        public static final InboxAndId5CtaClick INSTANCE = new InboxAndId5CtaClick();

        private InboxAndId5CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId5Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId5Read.class */
    public static final class InboxAndId5Read extends Event {
        public static final InboxAndId5Read INSTANCE = new InboxAndId5Read();

        private InboxAndId5Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId5Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId5Sent.class */
    public static final class InboxAndId5Sent extends Event {
        public static final InboxAndId5Sent INSTANCE = new InboxAndId5Sent();

        private InboxAndId5Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId6CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId6CtaClick.class */
    public static final class InboxAndId6CtaClick extends Event {
        public static final InboxAndId6CtaClick INSTANCE = new InboxAndId6CtaClick();

        private InboxAndId6CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId6Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId6Read.class */
    public static final class InboxAndId6Read extends Event {
        public static final InboxAndId6Read INSTANCE = new InboxAndId6Read();

        private InboxAndId6Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId6Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId6Sent.class */
    public static final class InboxAndId6Sent extends Event {
        public static final InboxAndId6Sent INSTANCE = new InboxAndId6Sent();

        private InboxAndId6Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId7CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId7CtaClick.class */
    public static final class InboxAndId7CtaClick extends Event {
        public static final InboxAndId7CtaClick INSTANCE = new InboxAndId7CtaClick();

        private InboxAndId7CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId7Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId7Read.class */
    public static final class InboxAndId7Read extends Event {
        public static final InboxAndId7Read INSTANCE = new InboxAndId7Read();

        private InboxAndId7Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId7Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId7Sent.class */
    public static final class InboxAndId7Sent extends Event {
        public static final InboxAndId7Sent INSTANCE = new InboxAndId7Sent();

        private InboxAndId7Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId8CtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId8CtaClick.class */
    public static final class InboxAndId8CtaClick extends Event {
        public static final InboxAndId8CtaClick INSTANCE = new InboxAndId8CtaClick();

        private InboxAndId8CtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId8Read;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId8Read.class */
    public static final class InboxAndId8Read extends Event {
        public static final InboxAndId8Read INSTANCE = new InboxAndId8Read();

        private InboxAndId8Read() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxAndId8Sent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxAndId8Sent.class */
    public static final class InboxAndId8Sent extends Event {
        public static final InboxAndId8Sent INSTANCE = new InboxAndId8Sent();

        private InboxAndId8Sent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxRemoteCtaClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxRemoteCtaClick.class */
    public static final class InboxRemoteCtaClick extends Event {
        public static final InboxRemoteCtaClick INSTANCE = new InboxRemoteCtaClick();

        private InboxRemoteCtaClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxRemoteRead;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxRemoteRead.class */
    public static final class InboxRemoteRead extends Event {
        public static final InboxRemoteRead INSTANCE = new InboxRemoteRead();

        private InboxRemoteRead() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InboxRemoteSent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InboxRemoteSent.class */
    public static final class InboxRemoteSent extends Event {
        public static final InboxRemoteSent INSTANCE = new InboxRemoteSent();

        private InboxRemoteSent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$IncomingCallBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$IncomingCallBlockedEvent.class */
    public static final class IncomingCallBlockedEvent extends Event {
        public static final IncomingCallBlockedEvent INSTANCE = new IncomingCallBlockedEvent();

        private IncomingCallBlockedEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$IncomingCallerTypeEvent;", "Lcom/privacystar/core/service/analytics/Event;", "caller", "Lcom/privacystar/core/data/call/caller/Caller;", "(Lcom/privacystar/core/data/call/caller/Caller;)V", "getCaller", "()Lcom/privacystar/core/data/call/caller/Caller;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$IncomingCallerTypeEvent.class */
    public static final class IncomingCallerTypeEvent extends Event {
        @NotNull
        private final Caller caller;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public IncomingCallerTypeEvent(@NotNull Caller caller) {
            super(null);
            Intrinsics.checkParameterIsNotNull(caller, "caller");
            this.caller = caller;
        }

        @NotNull
        public final Caller getCaller() {
            return this.caller;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$IncomingMessageBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$IncomingMessageBlockedEvent.class */
    public static final class IncomingMessageBlockedEvent extends Event {
        public static final IncomingMessageBlockedEvent INSTANCE = new IncomingMessageBlockedEvent();

        private IncomingMessageBlockedEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InitiatedCallEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InitiatedCallEvent.class */
    public static final class InitiatedCallEvent extends Event {
        public static final InitiatedCallEvent INSTANCE = new InitiatedCallEvent();

        private InitiatedCallEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InitiatedMessageEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InitiatedMessageEvent.class */
    public static final class InitiatedMessageEvent extends Event {
        public static final InitiatedMessageEvent INSTANCE = new InitiatedMessageEvent();

        private InitiatedMessageEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$InstalledDeviceImeiEvent;", "Lcom/privacystar/core/service/analytics/Event;", "imei", "", "(Ljava/lang/String;)V", "getImei", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$InstalledDeviceImeiEvent.class */
    public static final class InstalledDeviceImeiEvent extends Event {
        @NotNull
        private final String imei;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public InstalledDeviceImeiEvent(@NotNull String imei) {
            super(null);
            Intrinsics.checkParameterIsNotNull(imei, "imei");
            this.imei = imei;
        }

        @NotNull
        public final String getImei() {
            return this.imei;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$LookupEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$LookupEvent.class */
    public static final class LookupEvent extends Event {
        public static final LookupEvent INSTANCE = new LookupEvent();

        private LookupEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ManualLookupEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ManualLookupEvent.class */
    public static final class ManualLookupEvent extends Event {
        public static final ManualLookupEvent INSTANCE = new ManualLookupEvent();

        private ManualLookupEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$MissedCallEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$MissedCallEvent.class */
    public static final class MissedCallEvent extends Event {
        public static final MissedCallEvent INSTANCE = new MissedCallEvent();

        private MissedCallEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NetworkTypeEvent;", "Lcom/privacystar/core/service/analytics/Event;", "type", "", "(Ljava/lang/String;)V", "getType", "()Ljava/lang/String;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NetworkTypeEvent.class */
    public static final class NetworkTypeEvent extends Event {
        @NotNull
        private final String type;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NetworkTypeEvent(@NotNull String type) {
            super(null);
            Intrinsics.checkParameterIsNotNull(type, "type");
            this.type = type;
        }

        @NotNull
        public final String getType() {
            return this.type;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NotificationsMessageDelete;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NotificationsMessageDelete.class */
    public static final class NotificationsMessageDelete extends Event {
        public static final NotificationsMessageDelete INSTANCE = new NotificationsMessageDelete();

        private NotificationsMessageDelete() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NotificationsMessageRead;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NotificationsMessageRead.class */
    public static final class NotificationsMessageRead extends Event {
        public static final NotificationsMessageRead INSTANCE = new NotificationsMessageRead();

        private NotificationsMessageRead() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NotificationsPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NotificationsPageView.class */
    public static final class NotificationsPageView extends Event {
        public static final NotificationsPageView INSTANCE = new NotificationsPageView();

        private NotificationsPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsAddContact;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsAddContact.class */
    public static final class NumberDetailsAddContact extends Event {
        public static final NumberDetailsAddContact INSTANCE = new NumberDetailsAddContact();

        private NumberDetailsAddContact() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsAllow;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsAllow.class */
    public static final class NumberDetailsAllow extends Event {
        public static final NumberDetailsAllow INSTANCE = new NumberDetailsAllow();

        private NumberDetailsAllow() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsBlock;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsBlock.class */
    public static final class NumberDetailsBlock extends Event {
        public static final NumberDetailsBlock INSTANCE = new NumberDetailsBlock();

        private NumberDetailsBlock() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsCall;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsCall.class */
    public static final class NumberDetailsCall extends Event {
        public static final NumberDetailsCall INSTANCE = new NumberDetailsCall();

        private NumberDetailsCall() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsCategorySurveyClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsCategorySurveyClick.class */
    public static final class NumberDetailsCategorySurveyClick extends Event {
        public static final NumberDetailsCategorySurveyClick INSTANCE = new NumberDetailsCategorySurveyClick();

        private NumberDetailsCategorySurveyClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsReport;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsReport.class */
    public static final class NumberDetailsReport extends Event {
        public static final NumberDetailsReport INSTANCE = new NumberDetailsReport();

        private NumberDetailsReport() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsRoboSurveyClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsRoboSurveyClick.class */
    public static final class NumberDetailsRoboSurveyClick extends Event {
        public static final NumberDetailsRoboSurveyClick INSTANCE = new NumberDetailsRoboSurveyClick();

        private NumberDetailsRoboSurveyClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsText;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsText.class */
    public static final class NumberDetailsText extends Event {
        public static final NumberDetailsText INSTANCE = new NumberDetailsText();

        private NumberDetailsText() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberDetailsView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberDetailsView.class */
    public static final class NumberDetailsView extends Event {
        public static final NumberDetailsView INSTANCE = new NumberDetailsView();

        private NumberDetailsView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberReportSubmit;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberReportSubmit.class */
    public static final class NumberReportSubmit extends Event {
        public static final NumberReportSubmit INSTANCE = new NumberReportSubmit();

        private NumberReportSubmit() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$NumberReportView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$NumberReportView.class */
    public static final class NumberReportView extends Event {
        public static final NumberReportView INSTANCE = new NumberReportView();

        private NumberReportView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0006\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007¨\u0006\t"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OffenderListSyncEvent;", "Lcom/privacystar/core/service/analytics/Event;", "currentControlNumber", "", "newControlNumber", "(JJ)V", "getCurrentControlNumber", "()J", "getNewControlNumber", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OffenderListSyncEvent.class */
    public static final class OffenderListSyncEvent extends Event {
        private final long currentControlNumber;
        private final long newControlNumber;

        public OffenderListSyncEvent(long j, long j2) {
            super(null);
            this.currentControlNumber = j;
            this.newControlNumber = j2;
        }

        public final long getCurrentControlNumber() {
            return this.currentControlNumber;
        }

        public final long getNewControlNumber() {
            return this.newControlNumber;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OnboardingSubscription;", "Lcom/privacystar/core/service/analytics/Event;", BlockingManager.ACTION_CONSTANT, "Lcom/privacystar/core/service/analytics/Event$OnboardingSubscriptionAction;", "(Lcom/privacystar/core/service/analytics/Event$OnboardingSubscriptionAction;)V", "getAction", "()Lcom/privacystar/core/service/analytics/Event$OnboardingSubscriptionAction;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OnboardingSubscription.class */
    public static final class OnboardingSubscription extends Event {
        @NotNull
        private final OnboardingSubscriptionAction action;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public OnboardingSubscription(@NotNull OnboardingSubscriptionAction action) {
            super(null);
            Intrinsics.checkParameterIsNotNull(action, "action");
            this.action = action;
        }

        @NotNull
        public final OnboardingSubscriptionAction getAction() {
            return this.action;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OnboardingSubscriptionAction;", "", "label", "", "(Ljava/lang/String;ILjava/lang/String;)V", "NOT_NOW", "ALREADY_PAID", "SUBSCRIBE", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OnboardingSubscriptionAction.class */
    public enum OnboardingSubscriptionAction {
        NOT_NOW(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_VALUE_NOT_NOW),
        ALREADY_PAID(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_VALUE_ALREADY_PAID),
        SUBSCRIBE(ApptentiveConstants.ONBOARDING_SUBSCRIPTION_VALUE_SUBSCRIBE);

        OnboardingSubscriptionAction(@NotNull String label) {
            Intrinsics.checkParameterIsNotNull(label, "label");
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OpenedContactsEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OpenedContactsEvent.class */
    public static final class OpenedContactsEvent extends Event {
        public static final OpenedContactsEvent INSTANCE = new OpenedContactsEvent();

        private OpenedContactsEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OpenedFromAppNotifEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OpenedFromAppNotifEvent.class */
    public static final class OpenedFromAppNotifEvent extends Event {
        public static final OpenedFromAppNotifEvent INSTANCE = new OpenedFromAppNotifEvent();

        private OpenedFromAppNotifEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$OpenedFromCampaignNotifEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$OpenedFromCampaignNotifEvent.class */
    public static final class OpenedFromCampaignNotifEvent extends Event {
        public static final OpenedFromCampaignNotifEvent INSTANCE = new OpenedFromCampaignNotifEvent();

        private OpenedFromCampaignNotifEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\f\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000e¨\u0006\u000f"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PaymentInterface;", "", "interfaceName", "", "(Ljava/lang/String;ILjava/lang/String;)V", "getInterfaceName", "()Ljava/lang/String;", "GP", "ATT", "SPRINT", "BOOST", "VMU", "NTELOS", "WMODE", "METRO", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PaymentInterface.class */
    public enum PaymentInterface {
        GP("gp"),
        ATT("att"),
        SPRINT("sprint"),
        BOOST("boost"),
        VMU("vmu"),
        NTELOS("ntelos"),
        WMODE("wmode"),
        METRO("metro");
        
        @NotNull
        private final String interfaceName;

        PaymentInterface(@NotNull String interfaceName) {
            Intrinsics.checkParameterIsNotNull(interfaceName, "interfaceName");
            this.interfaceName = interfaceName;
        }

        @NotNull
        public final String getInterfaceName() {
            return this.interfaceName;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PaymentResultEvent;", "Lcom/privacystar/core/service/analytics/Event;", "paymentSucceeded", "", "(Z)V", "getPaymentSucceeded", "()Z", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PaymentResultEvent.class */
    public static final class PaymentResultEvent extends Event {
        private final boolean paymentSucceeded;

        public PaymentResultEvent(boolean z) {
            super(null);
            this.paymentSucceeded = z;
        }

        public final boolean getPaymentSucceeded() {
            return this.paymentSucceeded;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PaymentStartedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "paymentInterface", "Lcom/privacystar/core/service/analytics/Event$PaymentInterface;", "(Lcom/privacystar/core/service/analytics/Event$PaymentInterface;)V", "getPaymentInterface", "()Lcom/privacystar/core/service/analytics/Event$PaymentInterface;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PaymentStartedEvent.class */
    public static final class PaymentStartedEvent extends Event {
        @NotNull
        private final PaymentInterface paymentInterface;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public PaymentStartedEvent(@NotNull PaymentInterface paymentInterface) {
            super(null);
            Intrinsics.checkParameterIsNotNull(paymentInterface, "paymentInterface");
            this.paymentInterface = paymentInterface;
        }

        @NotNull
        public final PaymentInterface getPaymentInterface() {
            return this.paymentInterface;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionRequiredToggleClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionRequiredToggleClick.class */
    public static final class PermissionRequiredToggleClick extends Event {
        public static final PermissionRequiredToggleClick INSTANCE = new PermissionRequiredToggleClick();

        private PermissionRequiredToggleClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionRequiredView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionRequiredView.class */
    public static final class PermissionRequiredView extends Event {
        public static final PermissionRequiredView INSTANCE = new PermissionRequiredView();

        private PermissionRequiredView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionSmsDeny;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionSmsDeny.class */
    public static final class PermissionSmsDeny extends Event {
        public static final PermissionSmsDeny INSTANCE = new PermissionSmsDeny();

        private PermissionSmsDeny() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsAllowClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsAllowClick.class */
    public static final class PermissionsAllowClick extends Event {
        public static final PermissionsAllowClick INSTANCE = new PermissionsAllowClick();

        private PermissionsAllowClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsAllow;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsCallLogsAllow.class */
    public static final class PermissionsCallLogsAllow extends Event {
        public static final PermissionsCallLogsAllow INSTANCE = new PermissionsCallLogsAllow();

        private PermissionsCallLogsAllow() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsDeny;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsCallLogsDeny.class */
    public static final class PermissionsCallLogsDeny extends Event {
        public static final PermissionsCallLogsDeny INSTANCE = new PermissionsCallLogsDeny();

        private PermissionsCallLogsDeny() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsCallLogsPopupView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsCallLogsPopupView.class */
    public static final class PermissionsCallLogsPopupView extends Event {
        public static final PermissionsCallLogsPopupView INSTANCE = new PermissionsCallLogsPopupView();

        private PermissionsCallLogsPopupView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsCloseClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsCloseClick.class */
    public static final class PermissionsCloseClick extends Event {
        public static final PermissionsCloseClick INSTANCE = new PermissionsCloseClick();

        private PermissionsCloseClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsContactsAllow;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsContactsAllow.class */
    public static final class PermissionsContactsAllow extends Event {
        public static final PermissionsContactsAllow INSTANCE = new PermissionsContactsAllow();

        private PermissionsContactsAllow() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsContactsDeny;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsContactsDeny.class */
    public static final class PermissionsContactsDeny extends Event {
        public static final PermissionsContactsDeny INSTANCE = new PermissionsContactsDeny();

        private PermissionsContactsDeny() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsContactsPopupView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsContactsPopupView.class */
    public static final class PermissionsContactsPopupView extends Event {
        public static final PermissionsContactsPopupView INSTANCE = new PermissionsContactsPopupView();

        private PermissionsContactsPopupView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsAllow;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsManageCallsAllow.class */
    public static final class PermissionsManageCallsAllow extends Event {
        public static final PermissionsManageCallsAllow INSTANCE = new PermissionsManageCallsAllow();

        private PermissionsManageCallsAllow() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsDeny;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsManageCallsDeny.class */
    public static final class PermissionsManageCallsDeny extends Event {
        public static final PermissionsManageCallsDeny INSTANCE = new PermissionsManageCallsDeny();

        private PermissionsManageCallsDeny() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsManageCallsPopupView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsManageCallsPopupView.class */
    public static final class PermissionsManageCallsPopupView extends Event {
        public static final PermissionsManageCallsPopupView INSTANCE = new PermissionsManageCallsPopupView();

        private PermissionsManageCallsPopupView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsPageView.class */
    public static final class PermissionsPageView extends Event {
        public static final PermissionsPageView INSTANCE = new PermissionsPageView();

        private PermissionsPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsSmsAllow;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsSmsAllow.class */
    public static final class PermissionsSmsAllow extends Event {
        public static final PermissionsSmsAllow INSTANCE = new PermissionsSmsAllow();

        private PermissionsSmsAllow() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PermissionsSmsPopupView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PermissionsSmsPopupView.class */
    public static final class PermissionsSmsPopupView extends Event {
        public static final PermissionsSmsPopupView INSTANCE = new PermissionsSmsPopupView();

        private PermissionsSmsPopupView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PingEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PingEvent.class */
    public static final class PingEvent extends Event {
        public static final PingEvent INSTANCE = new PingEvent();

        private PingEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PreCallCenterFiredEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PreCallCenterFiredEvent.class */
    public static final class PreCallCenterFiredEvent extends Event {
        public static final PreCallCenterFiredEvent INSTANCE = new PreCallCenterFiredEvent();

        private PreCallCenterFiredEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PrivacyPolicyContinueClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PrivacyPolicyContinueClick.class */
    public static final class PrivacyPolicyContinueClick extends Event {
        public static final PrivacyPolicyContinueClick INSTANCE = new PrivacyPolicyContinueClick();

        private PrivacyPolicyContinueClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$PrivacyPolicyView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$PrivacyPolicyView.class */
    public static final class PrivacyPolicyView extends Event {
        public static final PrivacyPolicyView INSTANCE = new PrivacyPolicyView();

        private PrivacyPolicyView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$ScammerBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$ScammerBlockedEvent.class */
    public static final class ScammerBlockedEvent extends Event {
        public static final ScammerBlockedEvent INSTANCE = new ScammerBlockedEvent();

        private ScammerBlockedEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsAbout;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsAbout.class */
    public static final class SettingsAbout extends Event {
        public static final SettingsAbout INSTANCE = new SettingsAbout();

        private SettingsAbout() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsAccountServicesOff.class */
    public static final class SettingsAccountServicesOff extends Event {
        public static final SettingsAccountServicesOff INSTANCE = new SettingsAccountServicesOff();

        private SettingsAccountServicesOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsAccountServicesOn.class */
    public static final class SettingsAccountServicesOn extends Event {
        public static final SettingsAccountServicesOn INSTANCE = new SettingsAccountServicesOn();

        private SettingsAccountServicesOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsAccountServicesUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsAccountServicesUpsellClick.class */
    public static final class SettingsAccountServicesUpsellClick extends Event {
        public static final SettingsAccountServicesUpsellClick INSTANCE = new SettingsAccountServicesUpsellClick();

        private SettingsAccountServicesUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsCharityOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsCharityOff.class */
    public static final class SettingsCharityOff extends Event {
        public static final SettingsCharityOff INSTANCE = new SettingsCharityOff();

        private SettingsCharityOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsCharityOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsCharityOn.class */
    public static final class SettingsCharityOn extends Event {
        public static final SettingsCharityOn INSTANCE = new SettingsCharityOn();

        private SettingsCharityOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsCharityUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsCharityUpsellClick.class */
    public static final class SettingsCharityUpsellClick extends Event {
        public static final SettingsCharityUpsellClick INSTANCE = new SettingsCharityUpsellClick();

        private SettingsCharityUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsHelp;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsHelp.class */
    public static final class SettingsHelp extends Event {
        public static final SettingsHelp INSTANCE = new SettingsHelp();

        private SettingsHelp() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsNuisanceOff.class */
    public static final class SettingsNuisanceOff extends Event {
        public static final SettingsNuisanceOff INSTANCE = new SettingsNuisanceOff();

        private SettingsNuisanceOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsNuisanceOn.class */
    public static final class SettingsNuisanceOn extends Event {
        public static final SettingsNuisanceOn INSTANCE = new SettingsNuisanceOn();

        private SettingsNuisanceOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsNuisanceUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsNuisanceUpsellClick.class */
    public static final class SettingsNuisanceUpsellClick extends Event {
        public static final SettingsNuisanceUpsellClick INSTANCE = new SettingsNuisanceUpsellClick();

        private SettingsNuisanceUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPageView.class */
    public static final class SettingsPageView extends Event {
        public static final SettingsPageView INSTANCE = new SettingsPageView();

        private SettingsPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPoliticalOff.class */
    public static final class SettingsPoliticalOff extends Event {
        public static final SettingsPoliticalOff INSTANCE = new SettingsPoliticalOff();

        private SettingsPoliticalOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPoliticalOn.class */
    public static final class SettingsPoliticalOn extends Event {
        public static final SettingsPoliticalOn INSTANCE = new SettingsPoliticalOn();

        private SettingsPoliticalOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPoliticalUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPoliticalUpsellClick.class */
    public static final class SettingsPoliticalUpsellClick extends Event {
        public static final SettingsPoliticalUpsellClick INSTANCE = new SettingsPoliticalUpsellClick();

        private SettingsPoliticalUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPrisonOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPrisonOff.class */
    public static final class SettingsPrisonOff extends Event {
        public static final SettingsPrisonOff INSTANCE = new SettingsPrisonOff();

        private SettingsPrisonOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPrisonOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPrisonOn.class */
    public static final class SettingsPrisonOn extends Event {
        public static final SettingsPrisonOn INSTANCE = new SettingsPrisonOn();

        private SettingsPrisonOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsPrisonUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsPrisonUpsellClick.class */
    public static final class SettingsPrisonUpsellClick extends Event {
        public static final SettingsPrisonUpsellClick INSTANCE = new SettingsPrisonUpsellClick();

        private SettingsPrisonUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsRate;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsRate.class */
    public static final class SettingsRate extends Event {
        public static final SettingsRate INSTANCE = new SettingsRate();

        private SettingsRate() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsScamOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsScamOff.class */
    public static final class SettingsScamOff extends Event {
        public static final SettingsScamOff INSTANCE = new SettingsScamOff();

        private SettingsScamOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsScamOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsScamOn.class */
    public static final class SettingsScamOn extends Event {
        public static final SettingsScamOn INSTANCE = new SettingsScamOn();

        private SettingsScamOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsShare;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsShare.class */
    public static final class SettingsShare extends Event {
        public static final SettingsShare INSTANCE = new SettingsShare();

        private SettingsShare() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsSurveyOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsSurveyOff.class */
    public static final class SettingsSurveyOff extends Event {
        public static final SettingsSurveyOff INSTANCE = new SettingsSurveyOff();

        private SettingsSurveyOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsSurveyOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsSurveyOn.class */
    public static final class SettingsSurveyOn extends Event {
        public static final SettingsSurveyOn INSTANCE = new SettingsSurveyOn();

        private SettingsSurveyOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsSurveyUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsSurveyUpsellClick.class */
    public static final class SettingsSurveyUpsellClick extends Event {
        public static final SettingsSurveyUpsellClick INSTANCE = new SettingsSurveyUpsellClick();

        private SettingsSurveyUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingOff;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsTelemarketingOff.class */
    public static final class SettingsTelemarketingOff extends Event {
        public static final SettingsTelemarketingOff INSTANCE = new SettingsTelemarketingOff();

        private SettingsTelemarketingOff() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingOn;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsTelemarketingOn.class */
    public static final class SettingsTelemarketingOn extends Event {
        public static final SettingsTelemarketingOn INSTANCE = new SettingsTelemarketingOn();

        private SettingsTelemarketingOn() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SettingsTelemarketingUpsellClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SettingsTelemarketingUpsellClick.class */
    public static final class SettingsTelemarketingUpsellClick extends Event {
        public static final SettingsTelemarketingUpsellClick INSTANCE = new SettingsTelemarketingUpsellClick();

        private SettingsTelemarketingUpsellClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SharedLinkEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SharedLinkEvent.class */
    public static final class SharedLinkEvent extends Event {
        public static final SharedLinkEvent INSTANCE = new SharedLinkEvent();

        private SharedLinkEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuActivity;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuActivity.class */
    public static final class SideMenuActivity extends Event {
        public static final SideMenuActivity INSTANCE = new SideMenuActivity();

        private SideMenuActivity() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuBlockAllowList;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuBlockAllowList.class */
    public static final class SideMenuBlockAllowList extends Event {
        public static final SideMenuBlockAllowList INSTANCE = new SideMenuBlockAllowList();

        private SideMenuBlockAllowList() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuClick.class */
    public static final class SideMenuClick extends Event {
        public static final SideMenuClick INSTANCE = new SideMenuClick();

        private SideMenuClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuDashboard;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuDashboard.class */
    public static final class SideMenuDashboard extends Event {
        public static final SideMenuDashboard INSTANCE = new SideMenuDashboard();

        private SideMenuDashboard() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuNotification;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuNotification.class */
    public static final class SideMenuNotification extends Event {
        public static final SideMenuNotification INSTANCE = new SideMenuNotification();

        private SideMenuNotification() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuSetting;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuSetting.class */
    public static final class SideMenuSetting extends Event {
        public static final SideMenuSetting INSTANCE = new SideMenuSetting();

        private SideMenuSetting() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SideMenuView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SideMenuView.class */
    public static final class SideMenuView extends Event {
        public static final SideMenuView INSTANCE = new SideMenuView();

        private SideMenuView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SkippedPhoneVerification;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SkippedPhoneVerification.class */
    public static final class SkippedPhoneVerification extends Event {
        public static final SkippedPhoneVerification INSTANCE = new SkippedPhoneVerification();

        private SkippedPhoneVerification() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$StartupApplicationEvent;", "Lcom/privacystar/core/service/analytics/Event;", "firstRun", "", "(Z)V", "getFirstRun", "()Z", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$StartupApplicationEvent.class */
    public static final class StartupApplicationEvent extends Event {
        private final boolean firstRun;

        public StartupApplicationEvent(boolean z) {
            super(null);
            this.firstRun = z;
        }

        public final boolean getFirstRun() {
            return this.firstRun;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0002\u0010\u0005¨\u0006\u0006"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$SubscriberStatusEvent;", "Lcom/privacystar/core/service/analytics/Event;", "isActive", "", "(Z)V", "()Z", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$SubscriberStatusEvent.class */
    public static final class SubscriberStatusEvent extends Event {
        private final boolean isActive;

        public SubscriberStatusEvent(boolean z) {
            super(null);
            this.isActive = z;
        }

        public final boolean isActive() {
            return this.isActive;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$UserNumberBlockedEvent;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$UserNumberBlockedEvent.class */
    public static final class UserNumberBlockedEvent extends Event {
        public static final UserNumberBlockedEvent INSTANCE = new UserNumberBlockedEvent();

        private UserNumberBlockedEvent() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u000f\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WalkthroughSkipAction;", "", "label", "", "(Ljava/lang/String;ILjava/lang/String;)V", "WELCOME", "IDENTIFY", "BLOCKED", "LOOKUP", "REPORTING", BlockingManager.MATCHVALUE_INVALID, "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WalkthroughSkipAction.class */
    public enum WalkthroughSkipAction {
        WELCOME(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_WELCOME),
        IDENTIFY(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_IDENTIFY),
        BLOCKED(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_BLOCK),
        LOOKUP(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_LOOKUP),
        REPORTING(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_REPORTING),
        INVALID(ApptentiveConstants.WALKTHROUGH_SKIP_VALUE_INVALID);

        WalkthroughSkipAction(@NotNull String label) {
            Intrinsics.checkParameterIsNotNull(label, "label");
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WalkthroughSkippedEvent;", "Lcom/privacystar/core/service/analytics/Event;", BlockingManager.ACTION_CONSTANT, "Lcom/privacystar/core/service/analytics/Event$WalkthroughSkipAction;", "(Lcom/privacystar/core/service/analytics/Event$WalkthroughSkipAction;)V", "getAction", "()Lcom/privacystar/core/service/analytics/Event$WalkthroughSkipAction;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WalkthroughSkippedEvent.class */
    public static final class WalkthroughSkippedEvent extends Event {
        @NotNull
        private final WalkthroughSkipAction action;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public WalkthroughSkippedEvent(@NotNull WalkthroughSkipAction action) {
            super(null);
            Intrinsics.checkParameterIsNotNull(action, "action");
            this.action = action;
        }

        @NotNull
        public final WalkthroughSkipAction getAction() {
            return this.action;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WalkthroughViewed;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WalkthroughViewed.class */
    public static final class WalkthroughViewed extends Event {
        public static final WalkthroughViewed INSTANCE = new WalkthroughViewed();

        private WalkthroughViewed() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeLogoSplashPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeLogoSplashPageView.class */
    public static final class WelcomeLogoSplashPageView extends Event {
        public static final WelcomeLogoSplashPageView INSTANCE = new WelcomeLogoSplashPageView();

        private WelcomeLogoSplashPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserBackClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserBackClick.class */
    public static final class WelcomeUpsellFreeUserBackClick extends Event {
        public static final WelcomeUpsellFreeUserBackClick INSTANCE = new WelcomeUpsellFreeUserBackClick();

        private WelcomeUpsellFreeUserBackClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserCloseClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserCloseClick.class */
    public static final class WelcomeUpsellFreeUserCloseClick extends Event {
        public static final WelcomeUpsellFreeUserCloseClick INSTANCE = new WelcomeUpsellFreeUserCloseClick();

        private WelcomeUpsellFreeUserCloseClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPageView.class */
    public static final class WelcomeUpsellFreeUserPageView extends Event {
        public static final WelcomeUpsellFreeUserPageView INSTANCE = new WelcomeUpsellFreeUserPageView();

        private WelcomeUpsellFreeUserPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPpClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserPpClick.class */
    public static final class WelcomeUpsellFreeUserPpClick extends Event {
        public static final WelcomeUpsellFreeUserPpClick INSTANCE = new WelcomeUpsellFreeUserPpClick();

        private WelcomeUpsellFreeUserPpClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTacClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTacClick.class */
    public static final class WelcomeUpsellFreeUserTacClick extends Event {
        public static final WelcomeUpsellFreeUserTacClick INSTANCE = new WelcomeUpsellFreeUserTacClick();

        private WelcomeUpsellFreeUserTacClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTrialClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellFreeUserTrialClick.class */
    public static final class WelcomeUpsellFreeUserTrialClick extends Event {
        public static final WelcomeUpsellFreeUserTrialClick INSTANCE = new WelcomeUpsellFreeUserTrialClick();

        private WelcomeUpsellFreeUserTrialClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserBackClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserBackClick.class */
    public static final class WelcomeUpsellPremiumUserBackClick extends Event {
        public static final WelcomeUpsellPremiumUserBackClick INSTANCE = new WelcomeUpsellPremiumUserBackClick();

        private WelcomeUpsellPremiumUserBackClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserContinueClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserContinueClick.class */
    public static final class WelcomeUpsellPremiumUserContinueClick extends Event {
        public static final WelcomeUpsellPremiumUserContinueClick INSTANCE = new WelcomeUpsellPremiumUserContinueClick();

        private WelcomeUpsellPremiumUserContinueClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPageView;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPageView.class */
    public static final class WelcomeUpsellPremiumUserPageView extends Event {
        public static final WelcomeUpsellPremiumUserPageView INSTANCE = new WelcomeUpsellPremiumUserPageView();

        private WelcomeUpsellPremiumUserPageView() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPpClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserPpClick.class */
    public static final class WelcomeUpsellPremiumUserPpClick extends Event {
        public static final WelcomeUpsellPremiumUserPpClick INSTANCE = new WelcomeUpsellPremiumUserPpClick();

        private WelcomeUpsellPremiumUserPpClick() {
            super(null);
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002¨\u0006\u0003"}, m254d2 = {"Lcom/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserTacClick;", "Lcom/privacystar/core/service/analytics/Event;", "()V", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/analytics/Event$WelcomeUpsellPremiumUserTacClick.class */
    public static final class WelcomeUpsellPremiumUserTacClick extends Event {
        public static final WelcomeUpsellPremiumUserTacClick INSTANCE = new WelcomeUpsellPremiumUserTacClick();

        private WelcomeUpsellPremiumUserTacClick() {
            super(null);
        }
    }

    private Event() {
    }

    public /* synthetic */ Event(DefaultConstructorMarker defaultConstructorMarker) {
        this();
    }
}
