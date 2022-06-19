.class public Lt91;
.super Lv91;
.source ""


# instance fields
.field public f:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lv91;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lt91;->g:Ljava/lang/String;

    return-void
.end method

.method private synthetic o(Lt91;Ljava/lang/Void;)V
    .locals 0

    iget-object p2, p0, Lv91;->c:Lv91$b;

    invoke-interface {p2, p1}, Lv91$b;->d(Lv91;)V

    return-void
.end method

.method private synthetic q(Lt91;Ljava/lang/Exception;)V
    .locals 1

    iget-object p2, p0, Lv91;->c:Lv91$b;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lv91$b;->b(Lv91;Z)V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lt91;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(IILandroid/content/Intent;)V
    .locals 3

    const/16 v0, 0x2329

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getSignedInAccountFromIntent(Landroid/content/Intent;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleSignInResult GoogleSignInResult:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result p3

    const/4 v0, 0x0

    const-string v1, "error"

    const/4 v2, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    if-nez p1, :cond_1

    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv91;->c:Lv91$b;

    invoke-interface {p1, p0, v2}, Lv91$b;->b(Lv91;Z)V

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getServerAuthCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lt91;->g:Ljava/lang/String;

    new-array p2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;->getId()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v0

    iput-object p2, p0, Lv91;->a:[Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "signed in with google ID"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lv91;->a:[Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    iget-object p1, p0, Lv91;->c:Lv91$b;

    invoke-interface {p1, p0}, Lv91$b;->a(Lv91;)V

    goto :goto_0

    :cond_2
    invoke-static {p0, v1}, Lj91;->k(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lv91;->c:Lv91$b;

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    invoke-interface {p1, p0, v0}, Lv91$b;->b(Lv91;Z)V

    :goto_0
    return-void
.end method

.method public i()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    sget-object v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    invoke-direct {v0, v1}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    const-string v1, "758133388385.apps.googleusercontent.com"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->requestServerAuthCode(Ljava/lang/String;Z)Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions$Builder;->build()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    iget-object v1, p0, Lv91;->b:Landroid/app/Activity;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignIn;->getClient(Landroid/app/Activity;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    move-result-object v0

    iput-object v0, p0, Lt91;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    return-void
.end method

.method public l()V
    .locals 3

    iget-object v0, p0, Lt91;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->getSignInIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lv91;->b:Landroid/app/Activity;

    const/16 v2, 0x2329

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lt91;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/GoogleSignInClient;->signOut()Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lq91;

    invoke-direct {v1, p0, p0}, Lq91;-><init>(Lt91;Lt91;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lp91;

    invoke-direct {v1, p0, p0}, Lp91;-><init>(Lt91;Lt91;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method public synthetic p(Lt91;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt91;->o(Lt91;Ljava/lang/Void;)V

    return-void
.end method

.method public synthetic r(Lt91;Ljava/lang/Exception;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lt91;->q(Lt91;Ljava/lang/Exception;)V

    return-void
.end method
