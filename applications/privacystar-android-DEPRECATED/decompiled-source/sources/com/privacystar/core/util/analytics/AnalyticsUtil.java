package com.privacystar.core.util.analytics;

import com.google.firebase.analytics.FirebaseAnalytics;
import com.google.firebase.messaging.FirebaseMessaging;
import kotlin.Metadata;
import kotlin.jvm.JvmOverloads;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\f\bÆ\u0002\u0018��2\u00020\u0001:\u0006'()*+,B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007J\u001a\u0010\b\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\n2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u000e\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000fJ\u0016\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0012\u001a\u00020\fJ\u001a\u0010\u0013\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00142\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u0006\u0010\u0015\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0004J\u0018\u0010\u0017\u001a\u00020\u00042\b\u0010\u0018\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0019\u001a\u00020\u0007J\u001a\u0010\u001a\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u001b2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u001a\u0010\u001c\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u001d2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u001a\u0010\u001e\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u001f2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u001a\u0010 \u001a\u00020\u00042\u0006\u0010\t\u001a\u00020!2\b\b\u0002\u0010\u000b\u001a\u00020\fH\u0007J\u0010\u0010\"\u001a\u00020\u00042\b\b\u0002\u0010#\u001a\u00020\u000fJ\u000e\u0010$\u001a\u00020\u00042\u0006\u0010%\u001a\u00020\u0007J\u0006\u0010&\u001a\u00020\u0004¨\u0006-"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil;", "", "()V", "startTrackingSmsValidation", "", "trackCYDReregistration", "alreadyRegistered", "", "trackCallerID", "event", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$CallerIDAnalyticsEvent;", FirebaseAnalytics.Param.VALUE, "", "trackDetailView", "viewName", "", "trackInvalidCallDate", "callTime", "currentTime", "trackLicenseCheck", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$LicenseCheckAnalyticsEvent;", "trackNotRegisteredNotificationOpened", "trackNotRegisteredNotificationSent", "trackNumberLookup", "number", "numberValid", "trackPurchase", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$PurchaseAnalyticsEvent;", "trackPushMessageResponse", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$PushMessageAnalyticsEvent;", "trackRegistration", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$RegistrationAnalyticsEvent;", "trackResync", "Lcom/privacystar/core/util/analytics/AnalyticsUtil$ResyncAnalyticsEvent;", "trackShare", "shareMethod", "trackSmsValidation", "success", "trackUnsubscribeEngaged", "CallerIDAnalyticsEvent", "LicenseCheckAnalyticsEvent", "PurchaseAnalyticsEvent", "PushMessageAnalyticsEvent", "RegistrationAnalyticsEvent", "ResyncAnalyticsEvent", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil.class */
public final class AnalyticsUtil {
    public static final AnalyticsUtil INSTANCE = new AnalyticsUtil();

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$CallerIDAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "WINDOW_OPEN", "WINDOW_CLOSE", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$CallerIDAnalyticsEvent.class */
    public enum CallerIDAnalyticsEvent {
        WINDOW_OPEN("CallerID-Window", "CallerID-Window-Open"),
        WINDOW_CLOSE("CallerID-Window", "CallerID-Window-Close");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        CallerIDAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$LicenseCheckAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "FAILURE_TIMEOUT", "FAILURE_REJECT", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$LicenseCheckAnalyticsEvent.class */
    public enum LicenseCheckAnalyticsEvent {
        FAILURE_TIMEOUT("License-LicenseCheck", "License-LicenseCheck-RemoteFailureTimeout"),
        FAILURE_REJECT("License-LicenseCheck", "License-LicenseCheck-RemoteFailureReject");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        LicenseCheckAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\r\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000f¨\u0006\u0010"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$PurchaseAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "CANCEL", "STATUS_CHANGE", "FINAL_PAGE_CANCEL", "FINAL_PAGE_SUCCESS", "FINAL_PAGE_FAILURE", "PAGE_SUCCESS", "PAGE_FAILURE", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$PurchaseAnalyticsEvent.class */
    public enum PurchaseAnalyticsEvent {
        CANCEL("Cancel", ""),
        STATUS_CHANGE("Payment-GooglePlayStatusChange", "Payment-GooglePlayStatusChange-EventReceived"),
        FINAL_PAGE_CANCEL("Payment-GooglePlayFinalPage", "Payment-GooglePlayFinalPage-Cancel"),
        FINAL_PAGE_SUCCESS("Payment-GooglePlayFinalPage", "Payment-GooglePlayFinalPage-VerifySuccess"),
        FINAL_PAGE_FAILURE("Payment-GooglePlayFinalPage", "Payment-GooglePlayFinalPage-VerifyFailure"),
        PAGE_SUCCESS("Payment-GooglePlayPage", "Payment-GooglePlayPage-WebServiceCallSuccess"),
        PAGE_FAILURE("Payment-GooglePlayPage", "Payment-GooglePlayPage-WebServiceCallFailure");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        PurchaseAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\b\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\n¨\u0006\u000b"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$PushMessageAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "OPENED", "ACTION_TAKEN", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$PushMessageAnalyticsEvent.class */
    public enum PushMessageAnalyticsEvent {
        OPENED("FCM-PushMessageTracking", "FCM-PushMessageTracking-Opened"),
        ACTION_TAKEN("FCM-PushMessageTracking", "FCM-PushMessageTracking-ActionTaken");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        PushMessageAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\u000e\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000bj\u0002\b\fj\u0002\b\rj\u0002\b\u000ej\u0002\b\u000fj\u0002\b\u0010¨\u0006\u0011"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$RegistrationAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "FAILURE_NO_PHONE_NUMBER", "FAILURE_NO_PIN", "FAILURE_TIMEOUT", "FAILURE_REJECT", "EULA_ACCEPT", "EULA_READ", "NOTIFICATION_SENT", "NOTIFICATION_OPENED", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$RegistrationAnalyticsEvent.class */
    public enum RegistrationAnalyticsEvent {
        FAILURE_NO_PHONE_NUMBER("Registration-DeviceInfo", "Registration-DeviceInfo-FailurePhoneNumber"),
        FAILURE_NO_PIN("Registration-DeviceInfo", "Registration-DeviceInfo-FailureHID"),
        FAILURE_TIMEOUT("Registration-WebService", "Registration-WebService-FailureTimeout"),
        FAILURE_REJECT("Registration-WebService", "Registration-WebService-FailureReject"),
        EULA_ACCEPT("Registration EULA Page", "Registration EULA Accept"),
        EULA_READ("Registration EULA Page", "Registration EULA Read"),
        NOTIFICATION_SENT("Registration-NotRegistered", "Registration-NotRegistered-NotificationSent"),
        NOTIFICATION_OPENED("Registration-NotRegistered", "Registration-NotRegistered-NotificationOpened");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        RegistrationAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n��\n\u0002\u0010\u000e\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\u0017\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0006\u0010\u0007R\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\b\u0010\u0007j\u0002\b\tj\u0002\b\nj\u0002\b\u000b¨\u0006\f"}, m254d2 = {"Lcom/privacystar/core/util/analytics/AnalyticsUtil$ResyncAnalyticsEvent;", "", "actionName", "", "label", "(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V", "getActionName", "()Ljava/lang/String;", "getLabel", "SUCCESS", "FAILURE_TIMEOUT", "FAILURE_REJECT", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/analytics/AnalyticsUtil$ResyncAnalyticsEvent.class */
    public enum ResyncAnalyticsEvent {
        SUCCESS("Resync-WebService", "Resync-WebService-Success"),
        FAILURE_TIMEOUT("Resync-WebService", "Resync-WebService-FailureTimeout"),
        FAILURE_REJECT("Resync-WebService", "Resync-WebService-FailureReject");
        
        @NotNull
        private final String actionName;
        @NotNull
        private final String label;

        ResyncAnalyticsEvent(@NotNull String actionName, @NotNull String label) {
            Intrinsics.checkParameterIsNotNull(actionName, "actionName");
            Intrinsics.checkParameterIsNotNull(label, "label");
            this.actionName = actionName;
            this.label = label;
        }

        @NotNull
        public final String getActionName() {
            return this.actionName;
        }

        @NotNull
        public final String getLabel() {
            return this.label;
        }
    }

    private AnalyticsUtil() {
    }

    @JvmOverloads
    public static /* synthetic */ void trackCallerID$default(AnalyticsUtil analyticsUtil, CallerIDAnalyticsEvent callerIDAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackCallerID(callerIDAnalyticsEvent, j);
    }

    @JvmOverloads
    public static /* synthetic */ void trackLicenseCheck$default(AnalyticsUtil analyticsUtil, LicenseCheckAnalyticsEvent licenseCheckAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackLicenseCheck(licenseCheckAnalyticsEvent, j);
    }

    @JvmOverloads
    public static /* synthetic */ void trackPurchase$default(AnalyticsUtil analyticsUtil, PurchaseAnalyticsEvent purchaseAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackPurchase(purchaseAnalyticsEvent, j);
    }

    @JvmOverloads
    public static /* synthetic */ void trackPushMessageResponse$default(AnalyticsUtil analyticsUtil, PushMessageAnalyticsEvent pushMessageAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackPushMessageResponse(pushMessageAnalyticsEvent, j);
    }

    @JvmOverloads
    public static /* synthetic */ void trackRegistration$default(AnalyticsUtil analyticsUtil, RegistrationAnalyticsEvent registrationAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackRegistration(registrationAnalyticsEvent, j);
    }

    @JvmOverloads
    public static /* synthetic */ void trackResync$default(AnalyticsUtil analyticsUtil, ResyncAnalyticsEvent resyncAnalyticsEvent, long j, int i, Object obj) {
        if ((i & 2) != 0) {
            j = 0;
        }
        analyticsUtil.trackResync(resyncAnalyticsEvent, j);
    }

    public static /* synthetic */ void trackShare$default(AnalyticsUtil analyticsUtil, String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = "system_share";
        }
        analyticsUtil.trackShare(str);
    }

    public final void startTrackingSmsValidation() {
        AnswersUtil.INSTANCE.startTrackingSmsValidation();
    }

    public final void trackCYDReregistration(boolean z) {
        AnswersUtil.INSTANCE.trackCYDReregistration(z);
    }

    @JvmOverloads
    public final void trackCallerID(@NotNull CallerIDAnalyticsEvent callerIDAnalyticsEvent) {
        trackCallerID$default(this, callerIDAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackCallerID(@NotNull CallerIDAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent("CallerID", event.getActionName(), event.getLabel(), j);
    }

    public final void trackDetailView(@NotNull String viewName) {
        Intrinsics.checkParameterIsNotNull(viewName, "viewName");
        AnswersUtil.INSTANCE.trackDetailView(viewName);
        GoogleAnalyticsUtil.trackPageView(viewName);
    }

    public final void trackInvalidCallDate(long j, long j2) {
        AnswersUtil.INSTANCE.trackInvalidCallDate(j, j2);
    }

    @JvmOverloads
    public final void trackLicenseCheck(@NotNull LicenseCheckAnalyticsEvent licenseCheckAnalyticsEvent) {
        trackLicenseCheck$default(this, licenseCheckAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackLicenseCheck(@NotNull LicenseCheckAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent("License", event.getActionName(), event.getLabel(), j);
    }

    public final void trackNotRegisteredNotificationOpened() {
        trackRegistration$default(this, RegistrationAnalyticsEvent.NOTIFICATION_OPENED, 0L, 2, null);
        AnswersUtil.INSTANCE.trackNotRegisteredNotification("opened");
    }

    public final void trackNotRegisteredNotificationSent() {
        trackRegistration$default(this, RegistrationAnalyticsEvent.NOTIFICATION_SENT, 0L, 2, null);
        AnswersUtil.INSTANCE.trackNotRegisteredNotification("sent");
    }

    public final void trackNumberLookup(@Nullable String str, boolean z) {
        AnswersUtil.INSTANCE.trackNumberLookup(str, z);
    }

    @JvmOverloads
    public final void trackPurchase(@NotNull PurchaseAnalyticsEvent purchaseAnalyticsEvent) {
        trackPurchase$default(this, purchaseAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackPurchase(@NotNull PurchaseAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent("Payment", event.getActionName(), event.getLabel(), j);
    }

    @JvmOverloads
    public final void trackPushMessageResponse(@NotNull PushMessageAnalyticsEvent pushMessageAnalyticsEvent) {
        trackPushMessageResponse$default(this, pushMessageAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackPushMessageResponse(@NotNull PushMessageAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent(FirebaseMessaging.INSTANCE_ID_SCOPE, event.getActionName(), event.getLabel(), j);
    }

    @JvmOverloads
    public final void trackRegistration(@NotNull RegistrationAnalyticsEvent registrationAnalyticsEvent) {
        trackRegistration$default(this, registrationAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackRegistration(@NotNull RegistrationAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent("Registration", event.getActionName(), event.getLabel(), j);
    }

    @JvmOverloads
    public final void trackResync(@NotNull ResyncAnalyticsEvent resyncAnalyticsEvent) {
        trackResync$default(this, resyncAnalyticsEvent, 0L, 2, null);
    }

    @JvmOverloads
    public final void trackResync(@NotNull ResyncAnalyticsEvent event, long j) {
        Intrinsics.checkParameterIsNotNull(event, "event");
        GoogleAnalyticsUtil.trackEvent("Resync", event.getActionName(), event.getLabel(), j);
    }

    public final void trackShare(@NotNull String shareMethod) {
        Intrinsics.checkParameterIsNotNull(shareMethod, "shareMethod");
        AnswersUtil.INSTANCE.trackShare(shareMethod);
    }

    public final void trackSmsValidation(boolean z) {
        AnswersUtil.INSTANCE.trackSmsValidation(z);
    }

    public final void trackUnsubscribeEngaged() {
        AnswersUtil.INSTANCE.trackUnsubscribeEngaged();
    }
}
