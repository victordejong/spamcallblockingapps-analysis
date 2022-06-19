.class final Lcom/mopub/common/privacy/PersonalInfoManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/common/privacy/MoPubIdentifier$AdvertisingIdChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mopub/common/privacy/PersonalInfoManager;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/common/SdkInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/privacy/PersonalInfoManager;


# direct methods
.method constructor <init>(Lcom/mopub/common/privacy/PersonalInfoManager;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onIdChanged(Lcom/mopub/common/privacy/AdvertisingId;Lcom/mopub/common/privacy/AdvertisingId;)V
    .locals 1

    .line 102
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 103
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->DNT:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DENIED_BY_DNT_ON:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    .line 110
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->requestSync(Z)V

    return-void

    .line 112
    :cond_1
    invoke-virtual {p1}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Lcom/mopub/common/privacy/AdvertisingId;->isDoNotTrack()Z

    move-result p1

    if-nez p1, :cond_3

    .line 113
    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 114
    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p2

    .line 1418
    iget-object p2, p2, Lcom/mopub/common/privacy/b;->i:Lcom/mopub/common/privacy/ConsentStatus;

    .line 113
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 115
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_NO:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 119
    :cond_2
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->DNT_OFF:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    return-void

    .line 125
    :cond_3
    iget-object p1, p2, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 2088
    iget-object p1, p2, Lcom/mopub/common/privacy/AdvertisingId;->a:Ljava/lang/String;

    .line 126
    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p2

    .line 2400
    iget-object p2, p2, Lcom/mopub/common/privacy/b;->g:Ljava/lang/String;

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/mopub/common/privacy/ConsentStatus;->EXPLICIT_YES:Lcom/mopub/common/privacy/ConsentStatus;

    iget-object p2, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    .line 128
    invoke-static {p2}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p2

    .line 3224
    iget-object p2, p2, Lcom/mopub/common/privacy/b;->c:Lcom/mopub/common/privacy/ConsentStatus;

    .line 127
    invoke-virtual {p1, p2}, Lcom/mopub/common/privacy/ConsentStatus;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 129
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    const/4 p2, 0x0

    .line 3238
    iput-object p2, p1, Lcom/mopub/common/privacy/b;->d:Lcom/mopub/common/privacy/ConsentStatus;

    .line 130
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    invoke-static {p1}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;)Lcom/mopub/common/privacy/b;

    move-result-object p1

    .line 3413
    iput-object p2, p1, Lcom/mopub/common/privacy/b;->h:Ljava/lang/String;

    .line 131
    iget-object p1, p0, Lcom/mopub/common/privacy/PersonalInfoManager$1;->a:Lcom/mopub/common/privacy/PersonalInfoManager;

    sget-object p2, Lcom/mopub/common/privacy/ConsentStatus;->UNKNOWN:Lcom/mopub/common/privacy/ConsentStatus;

    sget-object v0, Lcom/mopub/common/privacy/ConsentChangeReason;->IFA_CHANGED:Lcom/mopub/common/privacy/ConsentChangeReason;

    invoke-static {p1, p2, v0}, Lcom/mopub/common/privacy/PersonalInfoManager;->a(Lcom/mopub/common/privacy/PersonalInfoManager;Lcom/mopub/common/privacy/ConsentStatus;Lcom/mopub/common/privacy/ConsentChangeReason;)V

    :cond_4
    return-void
.end method
