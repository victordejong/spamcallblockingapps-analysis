.class public Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;
.super Lcom/mopub/common/BaseUrlGenerator;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/Boolean;

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/mopub/common/BaseUrlGenerator;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 42
    invoke-static {p2}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 43
    invoke-static {p3}, Lcom/mopub/common/Preconditions;->checkNotNull(Ljava/lang/Object;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    .line 46
    iput-object p2, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->f:Ljava/lang/String;

    .line 47
    iput-object p3, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public generateUrlString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "/m/gdpr_consent_dialog"

    .line 74
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->f:Ljava/lang/String;

    const-string v0, "id"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->g:Ljava/lang/String;

    const-string v0, "current_consent_status"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nv"

    const-string v0, "5.16.4"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->d()V

    .line 80
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e()V

    .line 81
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getCurrentLanguage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "language"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->a:Ljava/lang/Boolean;

    const-string v0, "gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 83
    iget-boolean p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "force_gdpr_applies"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 84
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->c:Ljava/lang/String;

    const-string v0, "consented_vendor_list_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->d:Ljava/lang/String;

    const-string v0, "consented_privacy_policy_version"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->e:Landroid/content/Context;

    invoke-static {p1}, Lcom/mopub/common/ClientMetadata;->getInstance(Landroid/content/Context;)Lcom/mopub/common/ClientMetadata;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mopub/common/ClientMetadata;->getAppPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bundle"

    invoke-virtual {p0, v0, p1}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/mopub/common/privacy/ConsentDialogUrlGenerator;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
