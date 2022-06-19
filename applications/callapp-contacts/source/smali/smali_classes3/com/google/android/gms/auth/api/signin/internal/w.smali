.class public final Lcom/google/android/gms/auth/api/signin/internal/w;
.super Lcom/google/android/gms/auth/api/signin/internal/t;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/t;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    return-void
.end method

.method private final c()V
    .locals 4

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/s;->a(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/w;->c()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/b;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->DEFAULT_SIGN_IN:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/b;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v2

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 2000
    iget-object v1, v0, Lcom/google/android/gms/common/api/f;->f:Lcom/google/android/gms/common/api/g;

    .line 3000
    iget-object v2, v0, Lcom/google/android/gms/common/api/f;->a:Landroid/content/Context;

    .line 1038
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->a()I

    move-result v0

    sget v3, Lcom/google/android/gms/auth/api/signin/c$a;->c:I

    if-ne v0, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1039
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/google/android/gms/auth/api/signin/internal/j;->b(Lcom/google/android/gms/common/api/g;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/j;

    move-result-object v0

    .line 1040
    invoke-static {v0}, Lcom/google/android/gms/common/internal/n;->a(Lcom/google/android/gms/common/api/j;)Lcom/google/android/gms/tasks/h;

    return-void

    .line 14
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->d()Lcom/google/android/gms/tasks/h;

    return-void
.end method

.method public final b()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/w;->c()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/r;->a()V

    return-void
.end method
