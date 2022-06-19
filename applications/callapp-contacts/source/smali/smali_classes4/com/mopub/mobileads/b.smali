.class final Lcom/mopub/mobileads/b;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/Boolean;

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/mopub/mobileads/b;->a:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/mopub/mobileads/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 88
    iget-object v0, p0, Lcom/mopub/mobileads/b;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object v0

    const-string v1, "/m/open"

    .line 90
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "6"

    .line 91
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/b;->a(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getAppVersion()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p0}, Lcom/mopub/mobileads/b;->c()V

    const-string p1, "os"

    const-string v1, "android"

    .line 95
    invoke-virtual {p0, p1, v1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/mopub/mobileads/b;->b:Ljava/lang/String;

    const-string v1, "adunit"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p1, p0, Lcom/mopub/mobileads/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "id"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/mopub/mobileads/b;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "bundle"

    invoke-virtual {p0, v1, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x3

    new-array p1, p1, [Ljava/lang/String;

    .line 99
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceManufacturer()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p1, v2

    .line 100
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceModel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p1, v2

    .line 101
    invoke-virtual {v0}, Lcom/mopub/common/ClientMetadata;->getDeviceProduct()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aput-object v0, p1, v1

    .line 99
    invoke-virtual {p0, p1}, Lcom/mopub/mobileads/b;->a([Ljava/lang/String;)V

    .line 102
    iget-boolean p1, p0, Lcom/mopub/mobileads/b;->h:Z

    if-eqz p1, :cond_0

    .line 103
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "st"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    :cond_0
    const-string p1, "nv"

    const-string v0, "5.16.4"

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/mopub/mobileads/b;->d()V

    .line 107
    invoke-virtual {p0}, Lcom/mopub/mobileads/b;->e()V

    .line 108
    iget-object p1, p0, Lcom/mopub/mobileads/b;->c:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-object p1, p0, Lcom/mopub/mobileads/b;->d:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/mopub/mobileads/b;->e:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/mopub/mobileads/b;->f:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 112
    iget-boolean p1, p0, Lcom/mopub/mobileads/b;->g:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/mobileads/b;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    invoke-virtual {p0}, Lcom/mopub/mobileads/b;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/mobileads/b;
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/mopub/mobileads/b;->e:Ljava/lang/String;

    return-object p0
.end method

.method public final withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/mobileads/b;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/mopub/mobileads/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public final withCurrentConsentStatus(Ljava/lang/String;)Lcom/mopub/mobileads/b;
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/mopub/mobileads/b;->c:Ljava/lang/String;

    return-object p0
.end method

.method public final withForceGdprApplies(Z)Lcom/mopub/mobileads/b;
    .locals 0

    .line 67
    iput-boolean p1, p0, Lcom/mopub/mobileads/b;->g:Z

    return-object p0
.end method

.method public final withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/mobileads/b;
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/mopub/mobileads/b;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public final withSessionTracker(Z)Lcom/mopub/mobileads/b;
    .locals 0

    .line 82
    iput-boolean p1, p0, Lcom/mopub/mobileads/b;->h:Z

    return-object p0
.end method
