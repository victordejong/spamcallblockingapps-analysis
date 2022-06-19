package com.google.android.gms.internal.auth;
/* renamed from: com.google.android.gms.internal.auth.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/j.class */
public enum EnumC13124j {
    CLIENT_LOGIN_DISABLED("ClientLoginDisabled"),
    DEVICE_MANAGEMENT_REQUIRED("DeviceManagementRequiredOrSyncDisabled"),
    SOCKET_TIMEOUT("SocketTimeout"),
    SUCCESS("Ok"),
    UNKNOWN_ERROR("UNKNOWN_ERR"),
    NETWORK_ERROR("NetworkError"),
    SERVICE_UNAVAILABLE("ServiceUnavailable"),
    INTNERNAL_ERROR("InternalError"),
    BAD_AUTHENTICATION("BadAuthentication"),
    EMPTY_CONSUMER_PKG_OR_SIG("EmptyConsumerPackageOrSig"),
    NEEDS_2F("InvalidSecondFactor"),
    NEEDS_POST_SIGN_IN_FLOW("PostSignInFlowRequired"),
    NEEDS_BROWSER("NeedsBrowser"),
    UNKNOWN("Unknown"),
    NOT_VERIFIED("NotVerified"),
    TERMS_NOT_AGREED("TermsNotAgreed"),
    ACCOUNT_DISABLED("AccountDisabled"),
    CAPTCHA("CaptchaRequired"),
    ACCOUNT_DELETED("AccountDeleted"),
    SERVICE_DISABLED("ServiceDisabled"),
    NEED_PERMISSION("NeedPermission"),
    NEED_REMOTE_CONSENT("NeedRemoteConsent"),
    INVALID_SCOPE("INVALID_SCOPE"),
    USER_CANCEL("UserCancel"),
    PERMISSION_DENIED("PermissionDenied"),
    INVALID_AUDIENCE("INVALID_AUDIENCE"),
    UNREGISTERED_ON_API_CONSOLE("UNREGISTERED_ON_API_CONSOLE"),
    THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED("ThirdPartyDeviceManagementRequired"),
    DM_INTERNAL_ERROR("DeviceManagementInternalError"),
    DM_SYNC_DISABLED("DeviceManagementSyncDisabled"),
    DM_ADMIN_BLOCKED("DeviceManagementAdminBlocked"),
    DM_ADMIN_PENDING_APPROVAL("DeviceManagementAdminPendingApproval"),
    DM_STALE_SYNC_REQUIRED("DeviceManagementStaleSyncRequired"),
    DM_DEACTIVATED("DeviceManagementDeactivated"),
    DM_SCREENLOCK_REQUIRED("DeviceManagementScreenlockRequired"),
    DM_REQUIRED("DeviceManagementRequired"),
    ALREADY_HAS_GMAIL("ALREADY_HAS_GMAIL"),
    BAD_PASSWORD("WeakPassword"),
    BAD_REQUEST("BadRequest"),
    BAD_USERNAME("BadUsername"),
    DELETED_GMAIL("DeletedGmail"),
    EXISTING_USERNAME("ExistingUsername"),
    LOGIN_FAIL("LoginFail"),
    NOT_LOGGED_IN("NotLoggedIn"),
    NO_GMAIL("NoGmail"),
    REQUEST_DENIED("RequestDenied"),
    SERVER_ERROR("ServerError"),
    USERNAME_UNAVAILABLE("UsernameUnavailable"),
    GPLUS_OTHER("GPlusOther"),
    GPLUS_NICKNAME("GPlusNickname"),
    GPLUS_INVALID_CHAR("GPlusInvalidChar"),
    GPLUS_INTERSTITIAL("GPlusInterstitial"),
    GPLUS_PROFILE_ERROR("ProfileUpgradeError");
    
    private final String zzek;

    EnumC13124j(String str) {
        this.zzek = str;
    }

    public static boolean zza(EnumC13124j enumC13124j) {
        return BAD_AUTHENTICATION.equals(enumC13124j) || CAPTCHA.equals(enumC13124j) || NEED_PERMISSION.equals(enumC13124j) || NEED_REMOTE_CONSENT.equals(enumC13124j) || NEEDS_BROWSER.equals(enumC13124j) || USER_CANCEL.equals(enumC13124j) || DEVICE_MANAGEMENT_REQUIRED.equals(enumC13124j) || DM_INTERNAL_ERROR.equals(enumC13124j) || DM_SYNC_DISABLED.equals(enumC13124j) || DM_ADMIN_BLOCKED.equals(enumC13124j) || DM_ADMIN_PENDING_APPROVAL.equals(enumC13124j) || DM_STALE_SYNC_REQUIRED.equals(enumC13124j) || DM_DEACTIVATED.equals(enumC13124j) || DM_REQUIRED.equals(enumC13124j) || THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(enumC13124j) || DM_SCREENLOCK_REQUIRED.equals(enumC13124j);
    }

    public static final EnumC13124j zzc(String str) {
        EnumC13124j[] values;
        EnumC13124j enumC13124j = null;
        for (EnumC13124j enumC13124j2 : values()) {
            if (enumC13124j2.zzek.equals(str)) {
                enumC13124j = enumC13124j2;
            }
        }
        return enumC13124j;
    }
}
