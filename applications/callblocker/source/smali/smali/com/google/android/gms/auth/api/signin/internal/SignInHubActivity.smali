.class public Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;
.super Landroidx/fragment/app/d;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# annotations
.annotation build Lcom/google/android/gms/common/annotation/KeepName;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;
    }
.end annotation


# static fields
.field private static k:Z


# instance fields
.field private l:Z

.field private m:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

.field private n:Z

.field private o:I

.field private p:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/d;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:I

    return v0
.end method

.method private final a(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 85
    new-instance v0, Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    .line 86
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 87
    const-string/jumbo v2, "googleSignInStatus"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 88
    invoke-virtual {p0, v3, v1}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(ILandroid/content/Intent;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    .line 90
    sput-boolean v3, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k:Z

    .line 91
    return-void
.end method

.method static synthetic b(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Landroid/content/Intent;

    return-object v0
.end method

.method private final f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 82
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n()Landroidx/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;

    invoke-direct {v1, p0, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity$a;-><init>(Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;Lcom/google/android/gms/auth/api/signin/internal/y;)V

    invoke-virtual {v0, v2, v3, v1}, Landroidx/g/a/a;->a(ILandroid/os/Bundle;Landroidx/g/a/a$a;)Landroidx/g/b/b;

    .line 83
    sput-boolean v2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k:Z

    .line 84
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 53
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->l:Z

    if-eqz v0, :cond_0

    .line 80
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    .line 56
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 58
    :pswitch_0
    if-eqz p3, :cond_3

    .line 59
    const-string/jumbo v0, "signInAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/SignInAccount;

    .line 60
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/SignInAccount;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->m:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 63
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v3

    invoke-static {v1}, Lcom/google/android/gms/internal/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 64
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 65
    const-string/jumbo v0, "signInAccount"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 66
    const-string/jumbo v0, "googleSignInAccount"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:Z

    .line 68
    iput p2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:I

    .line 69
    iput-object p3, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Landroid/content/Intent;

    .line 70
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->f()V

    goto :goto_0

    .line 72
    :cond_1
    const-string/jumbo v0, "errorCode"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 73
    const-string/jumbo v0, "errorCode"

    .line 74
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 75
    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    .line 76
    const/16 v0, 0x30d5

    .line 77
    :cond_2
    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(I)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-direct {p0, v2}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(I)V

    goto :goto_0

    .line 56
    :pswitch_data_0
    .packed-switch 0xa002
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onCreate(Landroid/os/Bundle;)V

    .line 4
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 6
    const-string/jumbo v2, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    const/16 v0, 0x30d4

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 9
    :cond_1
    const-string/jumbo v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v2, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 10
    const-string/jumbo v2, "AuthSignInClient"

    const-string/jumbo v3, "Unknown action: "

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    goto :goto_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_3
    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 14
    const-string/jumbo v2, "config"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 15
    if-nez v1, :cond_4

    .line 16
    const-string/jumbo v0, "AuthSignInClient"

    const-string/jumbo v1, "Activity started with invalid configuration."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    .line 18
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->finish()V

    goto :goto_0

    .line 20
    :cond_4
    iput-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->m:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    .line 21
    if-nez p1, :cond_7

    .line 22
    sget-boolean v1, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k:Z

    if-eqz v1, :cond_5

    .line 23
    invoke-virtual {p0, v3}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->setResult(I)V

    .line 24
    const/16 v0, 0x30d6

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(I)V

    goto :goto_0

    .line 26
    :cond_5
    sput-boolean v4, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->k:Z

    .line 28
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string/jumbo v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    const-string/jumbo v0, "com.google.android.gms"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    :goto_2
    const-string/jumbo v0, "config"

    iget-object v2, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->m:Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 33
    const v0, 0xa002

    :try_start_0
    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 36
    :catch_0
    move-exception v0

    iput-boolean v4, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->l:Z

    .line 37
    const-string/jumbo v0, "AuthSignInClient"

    const-string/jumbo v1, "Could not launch sign in Intent. Google Play Service is probably being updated..."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    const/16 v0, 0x11

    invoke-direct {p0, v0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->a(I)V

    goto/16 :goto_0

    .line 31
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 40
    :cond_7
    const-string/jumbo v0, "signingInGoogleApiClients"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:Z

    .line 41
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:Z

    if-eqz v0, :cond_0

    .line 42
    const-string/jumbo v0, "signInResultCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:I

    .line 43
    const-string/jumbo v0, "signInResultData"

    .line 44
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {v0}, Lcom/google/android/gms/internal/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Landroid/content/Intent;

    .line 45
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->f()V

    goto/16 :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 48
    const-string/jumbo v0, "signingInGoogleApiClients"

    iget-boolean v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 49
    iget-boolean v0, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->n:Z

    if-eqz v0, :cond_0

    .line 50
    const-string/jumbo v0, "signInResultCode"

    iget v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->o:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 51
    const-string/jumbo v0, "signInResultData"

    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;->p:Landroid/content/Intent;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    :cond_0
    return-void
.end method
