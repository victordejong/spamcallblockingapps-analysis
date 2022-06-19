.class public final Lcom/google/android/gms/auth/api/signin/internal/w;
.super Lcom/google/android/gms/auth/api/signin/internal/q;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# instance fields
.field private final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/q;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    .line 3
    return-void
.end method

.method private final c()V
    .locals 4

    .prologue
    .line 19
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/util/r;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/SecurityException;

    .line 21
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x34

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Calling UID "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not Google Play services."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/w;->c()V

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/c;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v2

    .line 8
    sget-object v0, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    .line 9
    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/google/android/gms/auth/api/signin/internal/c;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object v0

    .line 11
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/google/android/gms/auth/api/signin/a;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Lcom/google/android/gms/auth/api/signin/c;

    move-result-object v0

    .line 12
    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->c()Lcom/google/android/gms/tasks/g;

    .line 15
    :goto_0
    return-void

    .line 14
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/c;->b()Lcom/google/android/gms/tasks/g;

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/auth/api/signin/internal/w;->c()V

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/auth/api/signin/internal/w;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a()V

    .line 18
    return-void
.end method
