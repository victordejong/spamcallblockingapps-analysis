.class public Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source ""


# instance fields
.field public final e:Landroid/content/Context;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public h:Ljava/lang/Boolean;

.field public i:Z

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/gdpr_consent_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->h(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->f:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->g:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nv"

    const-string v0, "5.15.0"

    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->d()V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->e()V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->h:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->i:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->j:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->k:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/BaseUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/mopub/common/BaseUrlGenerator;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->k:Ljava/lang/String;

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->j:Ljava/lang/String;

    return-object p0
.end method

.method public o(Z)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0

    iput-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->i:Z

    return-object p0
.end method

.method public p(Ljava/lang/Boolean;)Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
    .locals 0

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->h:Ljava/lang/Boolean;

    return-object p0
.end method
