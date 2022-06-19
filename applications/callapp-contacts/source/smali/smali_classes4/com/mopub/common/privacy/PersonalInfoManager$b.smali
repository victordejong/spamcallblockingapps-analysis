.class final Lcom/mopub/common/privacy/PersonalInfoManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/SyncRequest$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method private constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 631
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/PersonalInfoManager$1;)V
    .locals 0

    .line 631
    invoke-direct {p0, p1}, Lcom/mopub/common/privacy/PersonalInfoManager$b;-><init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V

    return-void
.end method


# virtual methods
.method public final onErrorResponse(Lcom/mopub/volley/VolleyError;)V
    .locals 4

    .line 731
    instance-of v0, p1, Lcom/mopub/network/MoPubNetworkError;

    if-eqz v0, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/mopub/network/MoPubNetworkError;

    .line 732
    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError;->getReason()Lcom/mopub/network/MoPubNetworkError$Reason;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mopub/network/MoPubNetworkError$Reason;->ordinal()I

    move-result v1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 733
    invoke-virtual {v1}, Lcom/mopub/mobileads/MoPubErrorCode;->getIntCode()I

    move-result v1

    :goto_0
    if-eqz v0, :cond_1

    .line 735
    invoke-virtual {p1}, Lcom/mopub/volley/VolleyError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/mopub/mobileads/MoPubErrorCode;->UNSPECIFIED:Lcom/mopub/mobileads/MoPubErrorCode;

    .line 736
    invoke-virtual {p1}, Lcom/mopub/mobileads/MoPubErrorCode;->toString()Ljava/lang/String;

    move-result-object p1

    .line 737
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

    .line 739
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->l(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    .line 740
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->f(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 741
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v1, [Ljava/lang/Object;

    const-string v1, "Personal Info Manager initialization finished but ran into errors."

    aput-object v1, v0, v3

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 742
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->f(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 743
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    :cond_2
    return-void
.end method

.method public final onSuccess(Lcom/mopub/common/privacy/SyncResponse;)V
    .locals 8

    .line 635
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->SYNC_COMPLETED:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 637
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v0

    .line 638
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    .line 1382
    iget-object v2, v2, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 639
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isGdprRegion()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    .line 1386
    iput-object v3, v2, Lcom/mopub/common/privacy/b;->u:Ljava/lang/Boolean;

    .line 641
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceGdprApplies()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 642
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 643
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    .line 1395
    iput-boolean v3, v2, Lcom/mopub/common/privacy/b;->f:Z

    .line 644
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->canCollectPersonalInformation()Z

    move-result v2

    if-eq v0, v2, :cond_1

    .line 646
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v4

    .line 2224
    iget-object v4, v4, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 646
    iget-object v5, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 647
    invoke-static {v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v5

    .line 3224
    iget-object v5, v5, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 646
    invoke-static {v0, v4, v5, v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentStatus;Z)V

    .line 651
    :cond_1
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 652
    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    .line 4205
    iget-object v0, v0, Lcom/mopub/common/privacy/b;->b:Ljava/lang/String;

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 654
    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    .line 5196
    iget-object v2, v2, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 654
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    .line 5200
    iput-object v0, v2, Lcom/mopub/common/privacy/b;->a:Ljava/lang/String;

    .line 657
    :cond_2
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->h(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v2

    .line 5238
    iput-object v2, v0, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 658
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isWhitelisted()Z

    move-result v2

    .line 5246
    iput-boolean v2, v0, Lcom/mopub/common/privacy/b;->j:Z

    .line 659
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListVersion()Ljava/lang/String;

    move-result-object v2

    .line 5256
    iput-object v2, v0, Lcom/mopub/common/privacy/b;->k:Ljava/lang/String;

    .line 660
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListLink()Ljava/lang/String;

    move-result-object v2

    .line 5273
    iput-object v2, v0, Lcom/mopub/common/privacy/b;->l:Ljava/lang/String;

    .line 661
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    .line 662
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyVersion()Ljava/lang/String;

    move-result-object v2

    .line 5283
    iput-object v2, v0, Lcom/mopub/common/privacy/b;->m:Ljava/lang/String;

    .line 663
    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentPrivacyPolicyLink()Ljava/lang/String;

    move-result-object v2

    .line 5300
    iput-object v2, v0, Lcom/mopub/common/privacy/b;->n:Ljava/lang/String;

    .line 664
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabHash()Ljava/lang/String;

    move-result-object v0

    .line 665
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCurrentVendorListIabFormat()Ljava/lang/String;

    move-result-object v2

    .line 666
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 667
    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v4

    .line 5315
    iget-object v4, v4, Lcom/mopub/common/privacy/b;->p:Ljava/lang/String;

    .line 666
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 667
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 669
    iget-object v4, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v4}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v4

    .line 6310
    iput-object v2, v4, Lcom/mopub/common/privacy/b;->o:Ljava/lang/String;

    .line 670
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    .line 6319
    iput-object v0, v2, Lcom/mopub/common/privacy/b;->p:Ljava/lang/String;

    .line 7091
    :cond_3
    iget-object v0, p1, Lcom/mopub/common/privacy/SyncResponse;->a:Ljava/lang/String;

    .line 673
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 674
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/mopub/common/privacy/b;->setExtras(Ljava/lang/String;)V

    .line 676
    :cond_4
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getConsentChangeReason()Ljava/lang/String;

    move-result-object v0

    .line 679
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isForceExplicitNo()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 680
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->i(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onForceExplicitNo(Ljava/lang/String;)V

    goto :goto_0

    .line 681
    :cond_5
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isInvalidateConsent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 682
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->i(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onInvalidateConsent(Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_6
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->isReacquireConsent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 684
    iget-object v2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v2}, Lcom/mopub/common/privacy/PersonalInfoManager;->i(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/mopub/network/MultiAdResponse$ServerOverrideListener;->onReacquireConsent(Ljava/lang/String;)V

    .line 687
    :cond_7
    :goto_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/SyncResponse;->getCallAgainAfterSecs()Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 690
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 692
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    invoke-static {p1, v4, v5}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;J)J

    goto :goto_1

    .line 694
    :cond_8
    sget-object v0, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v4, "callAgainAfterSecs is not positive: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v0, v2}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 697
    :catch_0
    sget-object p1, Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;->CUSTOM:Lcom/mopub/common/logging/MoPubLog$ConsentLogEvent;

    new-array v0, v3, [Ljava/lang/Object;

    const-string v2, "Unable to parse callAgainAfterSecs. Ignoring value"

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lcom/mopub/common/logging/MoPubLog;->log(Lcom/mopub/common/logging/MoPubLog$MPLogEventType;[Ljava/lang/Object;)V

    .line 703
    :cond_9
    :goto_1
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->h(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 704
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    const/4 v0, 0x0

    .line 7404
    iput-object v0, p1, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 707
    :cond_a
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->j(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 708
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Z)Z

    .line 709
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->k(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    .line 712
    :cond_b
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/privacy/b;->a()V

    .line 714
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->l(Lcom/mopub/common/privacy/PersonalInfoManager;)Z

    .line 716
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->POTENTIAL_WHITELIST:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object v0, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 717
    invoke-static {v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->h(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/ConsentStatus;

    move-result-object v0

    .line 716
    invoke-virtual {p1, v0}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 717
    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    .line 8242
    iget-boolean p1, p1, Lcom/mopub/common/privacy/b;->j:Z

    if-eqz p1, :cond_c

    .line 718
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object v0, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v1, Lcom/mopub/common/privacy/ConsentChangeReason;->GRANTED_BY_WHITELISTED_PUB:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, v0, v1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 720
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-virtual {p1, v3}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    .line 723
    :cond_c
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->f(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 724
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->f(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/mopub/common/SdkInitializationListener;->onInitializationFinished()V

    .line 725
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$b;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->g(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/SdkInitializationListener;

    :cond_d
    return-void
.end method
