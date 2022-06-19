.class public Lcom/mopub/common/privacy/PersonalInfoManager$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/mopub/common/privacy/SyncRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field public final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method public constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$h;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-void
.end method


# virtual methods
.method public onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_FAILED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->j(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->n(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Personal Info Manager initialization finished but ran into errors."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->n(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->o(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_2
    return-void
.end method

.method public onSuccess(Lcom/mopub/common/privacy/SyncResponse;)V
    .locals 8

    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2}, Ldg1;->g()Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isGdprRegion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldg1;->C(Ljava/lang/Boolean;)V

    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceGdprApplies()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->p(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2, v3}, Ldg1;->B(Z)V

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v2

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v4

    invoke-virtual {v4}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v4

    iget-object v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v5

    invoke-virtual {v5}, Ldg1;->d()Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v5

    invoke-static {v0, v4, v5, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {v0}, Ldg1;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2}, Ldg1;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldg1;->n(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->b(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldg1;->F(Lcom/mopub/common/privacy/ConsentStatus;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isWhitelisted()Z

    move-result v2

    invoke-virtual {v0, v2}, Ldg1;->H(Z)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldg1;->A(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldg1;->z(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldg1;->w(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyLink()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ldg1;->v(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v4

    invoke-virtual {v4}, Ldg1;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v4

    invoke-virtual {v4, v2}, Ldg1;->x(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldg1;->y(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v2

    invoke-virtual {v2, v0}, Ldg1;->setExtras(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceExplicitNo()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isInvalidateConsent()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isReacquireConsent()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->c(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCallAgainAfterSecs()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {p1, v4, v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->m(Lcom/mopub/common/privacy/PersonalInfoManager;J)J

    goto :goto_1

    :cond_8
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callAgainAfterSecs is not positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Unable to parse callAgainAfterSecs. Ignoring value"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    :cond_9
    :goto_1
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->b(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {v0, v2}, Ldg1;->D(Ljava/lang/String;)V

    :cond_a
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->d(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->p(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->e(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    :cond_b
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {v0}, Ldg1;->K()V

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->j(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->b(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Ldg1;

    move-result-object v0

    invoke-virtual {v0}, Ldg1;->l()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {v0, p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->f(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    :cond_c
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->n(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->n(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$h;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->o(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/SdkInitializationListener;)Lcom/mopub/common/SdkInitializationListener;

    :cond_d
    return-void
.end method
