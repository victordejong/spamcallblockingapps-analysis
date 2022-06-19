.class public Lcom/mopub/common/privacy/SyncUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/Boolean;

.field private m:Z

.field private n:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 72
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 73
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->a:Landroid/content/Context;

    .line 76
    iput-object p2, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/gdpr_sync"

    .line 145
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->b:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nv"

    const-string v0, "5.16.4"

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->d()V

    .line 150
    invoke-virtual {p0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->e()V

    .line 151
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->d:Ljava/lang/String;

    const-string v0, "last_changed_ms"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->e:Ljava/lang/String;

    const-string v0, "last_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->f:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->g:Ljava/lang/String;

    const-string v0, "consent_change_reason"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->h:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->i:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->j:Ljava/lang/String;

    const-string v0, "cached_vendor_list_iab_hash"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->k:Ljava/lang/String;

    const-string v0, "extras"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->c:Ljava/lang/String;

    const-string v0, "consent_ifa"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->l:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 161
    iget-boolean p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->m:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 162
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->n:Ljava/lang/Boolean;

    const-string v0, "forced_gdpr_applies_changed"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 163
    iget-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "dnt"

    const-string v0, "mp_tmpl_do_not_track"

    .line 164
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mid"

    const-string v0, "mp_tmpl_mopub_id"

    .line 165
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-virtual {p0}, Lcom/mopub/common/privacy/SyncUrlGenerator;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public withAdUnitId(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->b:Ljava/lang/String;

    return-object p0
.end method

.method public withCachedVendorListIabHash(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->j:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentChangeReason(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->g:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedIfa(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->c:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedPrivacyPolicyVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->i:Ljava/lang/String;

    return-object p0
.end method

.method public withConsentedVendorListVersion(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->h:Ljava/lang/String;

    return-object p0
.end method

.method public withExtras(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->k:Ljava/lang/String;

    return-object p0
.end method

.method public withForceGdprApplies(Z)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 95
    iput-boolean p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->m:Z

    return-object p0
.end method

.method public withForceGdprAppliesChanged(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->n:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withGdprApplies(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public withLastChangedMs(Ljava/lang/String;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->d:Ljava/lang/String;

    return-object p0
.end method

.method public withLastConsentStatus(Lcom/mopub/common/privacy/ConsentStatus;)Lcom/mopub/common/privacy/SyncUrlGenerator;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 111
    :cond_0
    invoke-virtual {p1}, Lcom/mopub/common/privacy/ConsentStatus;->getValue()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/mopub/common/privacy/SyncUrlGenerator;->e:Ljava/lang/String;

    return-object p0
.end method
