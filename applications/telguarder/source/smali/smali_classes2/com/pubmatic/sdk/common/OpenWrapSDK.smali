.class public Lcom/pubmatic/sdk/common/OpenWrapSDK;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allowAdvertisingId(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->allowAdvertisingId(Z)V

    return-void
.end method

.method public static allowLocationAccess(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->allowLocationAccess(Z)V

    return-void
.end method

.method public static getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "1.8.2"

    return-object v0
.end method

.method public static setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setApplicationInfo(Lcom/pubmatic/sdk/common/models/POBApplicationInfo;)V

    return-void
.end method

.method public static setCCPA(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setCCPA(Ljava/lang/String;)V

    return-void
.end method

.method public static setCoppa(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setCoppa(Z)V

    return-void
.end method

.method public static setGDPRConsent(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setGdprConsent(Ljava/lang/String;)V

    return-void
.end method

.method public static setGDPREnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setGdprEnabled(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setLocation(Lcom/pubmatic/sdk/common/models/POBLocation;)V

    return-void
.end method

.method public static setLogLevel(Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V
    .locals 0

    invoke-static {p0}, Lcom/pubmatic/sdk/common/log/PMLog;->setLogLevel(Lcom/pubmatic/sdk/common/OpenWrapSDK$LogLevel;)V

    return-void
.end method

.method public static setSSLEnabled(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setRequestSecureCreative(Z)V

    return-void
.end method

.method public static setUseInternalBrowser(Z)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setUseInternalBrowser(Z)V

    return-void
.end method

.method public static setUserInfo(Lcom/pubmatic/sdk/common/models/POBUserInfo;)V
    .locals 1

    invoke-static {}, Lcom/pubmatic/sdk/common/POBInstanceProvider;->getSdkConfig()Lcom/pubmatic/sdk/common/POBSDKConfig;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pubmatic/sdk/common/POBSDKConfig;->setUserInfo(Lcom/pubmatic/sdk/common/models/POBUserInfo;)V

    return-void
.end method
