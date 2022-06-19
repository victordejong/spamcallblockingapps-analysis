.class public Lio/bidmachine/BidMachine;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NAME:Ljava/lang/String; = "BidMachine"

.field public static final VERSION:Ljava/lang/String; = "1.7.1"

.field public static final VERSION_CODE:I = 0x5f767c7


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "BidMachine"

    .line 17
    invoke-static {v0}, Lio/bidmachine/core/Logger;->setTag(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-static {p0, p1, v0}, Lio/bidmachine/BidMachine;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V
    .locals 1

    .line 40
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lio/bidmachine/d;->initialize(Landroid/content/Context;Ljava/lang/String;Lio/bidmachine/InitializationCallback;)V

    return-void
.end method

.method public static isInitialized()Z
    .locals 1

    .line 49
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->isInitialized()Z

    move-result v0

    return v0
.end method

.method public static registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1

    .line 156
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->registerAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method

.method public static registerNetworks(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 152
    invoke-static {p0, p1}, Lio/bidmachine/f;->registerNetworks(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs registerNetworks([Lio/bidmachine/NetworkConfig;)V
    .locals 0

    .line 142
    invoke-static {p0}, Lio/bidmachine/f;->registerNetworks([Lio/bidmachine/NetworkConfig;)V

    return-void
.end method

.method public static setConsentConfig(ZLjava/lang/String;)V
    .locals 1

    .line 96
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lio/bidmachine/UserRestrictionParams;->setConsentConfig(ZLjava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    return-void
.end method

.method public static setCoppa(Ljava/lang/Boolean;)V
    .locals 1

    .line 114
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/UserRestrictionParams;->setCoppa(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    return-void
.end method

.method public static setEndpoint(Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->setEndpoint(Ljava/lang/String;)V

    return-void
.end method

.method public static setLoggingEnabled(Z)V
    .locals 0

    .line 67
    invoke-static {p0}, Lio/bidmachine/core/Logger;->setLoggingEnabled(Z)V

    .line 68
    invoke-static {p0}, Lio/bidmachine/f;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static setPublisher(Lio/bidmachine/Publisher;)V
    .locals 1

    .line 133
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->setPublisher(Lio/bidmachine/Publisher;)V

    return-void
.end method

.method public static setSubjectToGDPR(Ljava/lang/Boolean;)V
    .locals 1

    .line 105
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/UserRestrictionParams;->setSubjectToGDPR(Ljava/lang/Boolean;)Lio/bidmachine/UserRestrictionParams;

    return-void
.end method

.method public static setTargetingParams(Lio/bidmachine/TargetingParams;)V
    .locals 1

    .line 84
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->setTargetingParams(Lio/bidmachine/TargetingParams;)V

    return-void
.end method

.method public static setTestMode(Z)V
    .locals 1

    .line 77
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->setTestMode(Z)V

    return-void
.end method

.method public static setUSPrivacyString(Ljava/lang/String;)V
    .locals 1

    .line 124
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/d;->getUserRestrictionParams()Lio/bidmachine/UserRestrictionParams;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/UserRestrictionParams;->setUSPrivacyString(Ljava/lang/String;)Lio/bidmachine/UserRestrictionParams;

    return-void
.end method

.method public static unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V
    .locals 1

    .line 160
    invoke-static {}, Lio/bidmachine/d;->get()Lio/bidmachine/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lio/bidmachine/d;->unregisterAdRequestListener(Lio/bidmachine/AdRequest$AdRequestListener;)V

    return-void
.end method
