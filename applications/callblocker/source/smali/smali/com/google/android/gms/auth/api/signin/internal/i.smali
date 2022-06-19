.class public final Lcom/google/android/gms/auth/api/signin/internal/i;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-auth@@18.0.0"


# static fields
.field private static a:Lcom/google/android/gms/common/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 82
    new-instance v0, Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "GoogleSignInCommon"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/a/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "getSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/gms/auth/api/signin/internal/SignInConfiguration;-><init>(Ljava/lang/String;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)V

    .line 3
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.google.android.gms.auth.GOOGLE_SIGN_IN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    const-class v2, Lcom/google/android/gms/auth/api/signin/internal/SignInHubActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 6
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 7
    const-string/jumbo v3, "config"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    const-string/jumbo v0, "config"

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 9
    return-object v1
.end method

.method public static a(Landroid/content/Intent;)Lcom/google/android/gms/auth/api/signin/d;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance v0, Lcom/google/android/gms/auth/api/signin/d;

    sget-object v1, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v2, v1}, Lcom/google/android/gms/auth/api/signin/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    .line 81
    :goto_0
    return-object v0

    .line 74
    :cond_0
    const-string/jumbo v0, "googleSignInStatus"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/Status;

    .line 75
    const-string/jumbo v1, "googleSignInAccount"

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    .line 77
    if-nez v1, :cond_2

    .line 78
    new-instance v1, Lcom/google/android/gms/auth/api/signin/d;

    .line 79
    if-nez v0, :cond_1

    sget-object v0, Lcom/google/android/gms/common/api/Status;->c:Lcom/google/android/gms/common/api/Status;

    :cond_1
    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/auth/api/signin/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    move-object v0, v1

    .line 80
    goto :goto_0

    .line 81
    :cond_2
    new-instance v0, Lcom/google/android/gms/auth/api/signin/d;

    sget-object v2, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/auth/api/signin/d;-><init>(Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;Lcom/google/android/gms/common/api/Status;)V

    goto :goto_0
.end method

.method public static a(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/google/android/gms/common/api/e",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "Signing out"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 55
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Context;)V

    .line 56
    if-eqz p2, :cond_0

    .line 57
    sget-object v0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    invoke-static {v0, p0}, Lcom/google/android/gms/common/api/f;->a(Lcom/google/android/gms/common/api/Status;Lcom/google/android/gms/common/api/d;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/l;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/l;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/o;->a()V

    .line 67
    invoke-static {}, Lcom/google/android/gms/common/api/d;->a()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/d;

    .line 68
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->c()V

    goto :goto_0

    .line 70
    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/api/internal/f;->a()V

    .line 71
    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 10
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "getFallbackSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    .line 12
    const-string/jumbo v1, "com.google.android.gms.auth.APPAUTH_SIGN_IN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    return-object v0
.end method

.method public static b(Lcom/google/android/gms/common/api/d;Landroid/content/Context;Z)Lcom/google/android/gms/common/api/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/d;",
            "Landroid/content/Context;",
            "Z)",
            "Lcom/google/android/gms/common/api/e",
            "<",
            "Lcom/google/android/gms/common/api/Status;",
            ">;"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "Revoking access"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->c()Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-static {p1}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Context;)V

    .line 63
    if-eqz p2, :cond_0

    .line 64
    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/e;->a(Ljava/lang/String;)Lcom/google/android/gms/common/api/e;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/gms/auth/api/signin/internal/n;

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/api/signin/internal/n;-><init>(Lcom/google/android/gms/common/api/d;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/common/api/d;->a(Lcom/google/android/gms/common/api/internal/d$a;)Lcom/google/android/gms/common/api/internal/d$a;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/gms/auth/api/signin/internal/i;->a:Lcom/google/android/gms/common/a/a;

    const-string/jumbo v1, "getNoImplementationSignInIntent()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/common/a/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-static {p0, p1}, Lcom/google/android/gms/auth/api/signin/internal/i;->a(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Landroid/content/Intent;

    move-result-object v0

    .line 16
    const-string/jumbo v1, "com.google.android.gms.auth.NO_IMPL"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    return-object v0
.end method
