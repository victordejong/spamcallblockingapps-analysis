.class public Lcom/google/android/gms/b/a/a;
.super Lcom/google/android/gms/common/internal/h;
.source "com.google.android.gms:play-services-base@@17.1.0"

# interfaces
.implements Lcom/google/android/gms/b/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/h",
        "<",
        "Lcom/google/android/gms/b/a/f;",
        ">;",
        "Lcom/google/android/gms/b/d;"
    }
.end annotation


# instance fields
.field private final e:Z

.field private final f:Lcom/google/android/gms/common/internal/d;

.field private final g:Landroid/os/Bundle;

.field private h:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 7

    .prologue
    .line 1
    const/16 v3, 0x2c

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/common/internal/h;-><init>(Landroid/content/Context;Landroid/os/Looper;ILcom/google/android/gms/common/internal/d;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/b/a/a;->e:Z

    .line 3
    iput-object p4, p0, Lcom/google/android/gms/b/a/a;->f:Lcom/google/android/gms/common/internal/d;

    .line 4
    iput-object p5, p0, Lcom/google/android/gms/b/a/a;->g:Landroid/os/Bundle;

    .line 5
    invoke-virtual {p4}, Lcom/google/android/gms/common/internal/d;->i()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/b/a/a;->h:Ljava/lang/Integer;

    .line 6
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Lcom/google/android/gms/b/a;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V
    .locals 8

    .prologue
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-static {p4}, Lcom/google/android/gms/b/a/a;->a(Lcom/google/android/gms/common/internal/d;)Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v6, p6

    move-object v7, p7

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/b/a/a;-><init>(Landroid/content/Context;Landroid/os/Looper;ZLcom/google/android/gms/common/internal/d;Landroid/os/Bundle;Lcom/google/android/gms/common/api/d$a;Lcom/google/android/gms/common/api/d$b;)V

    .line 10
    return-void
.end method

.method public static a(Lcom/google/android/gms/common/internal/d;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 50
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->h()Lcom/google/android/gms/b/a;

    move-result-object v0

    .line 51
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->i()Ljava/lang/Integer;

    move-result-object v1

    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    const-string/jumbo v3, "com.google.android.gms.signin.internal.clientRequestedAccount"

    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/d;->b()Landroid/accounts/Account;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 54
    if-eqz v1, :cond_0

    .line 55
    const-string/jumbo v3, "com.google.android.gms.common.internal.ClientSettings.sessionId"

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    :cond_0
    if-eqz v0, :cond_2

    .line 57
    const-string/jumbo v1, "com.google.android.gms.signin.internal.offlineAccessRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->a()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 58
    const-string/jumbo v1, "com.google.android.gms.signin.internal.idTokenRequested"

    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->b()Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    const-string/jumbo v1, "com.google.android.gms.signin.internal.serverClientId"

    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const-string/jumbo v1, "com.google.android.gms.signin.internal.usePromptModeForAuthCode"

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    const-string/jumbo v1, "com.google.android.gms.signin.internal.forceCodeForRefreshToken"

    .line 62
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->d()Z

    move-result v3

    .line 63
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string/jumbo v1, "com.google.android.gms.signin.internal.hostedDomain"

    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string/jumbo v1, "com.google.android.gms.signin.internal.logSessionId"

    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string/jumbo v1, "com.google.android.gms.signin.internal.waitForAccessTokenRefresh"

    .line 67
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->g()Z

    move-result v3

    .line 68
    invoke-virtual {v2, v1, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->h()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 70
    const-string/jumbo v1, "com.google.android.gms.signin.internal.authApiSignInModuleVersion"

    .line 71
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->h()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 72
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 73
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->i()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 74
    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientLibraryVersion"

    .line 75
    invoke-virtual {v0}, Lcom/google/android/gms/b/a;->i()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 76
    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 77
    :cond_2
    return-object v2
.end method


# virtual methods
.method protected synthetic a(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 2

    .prologue
    .line 79
    .line 81
    if-nez p1, :cond_0

    .line 82
    const/4 v0, 0x0

    .line 87
    :goto_0
    return-object v0

    .line 83
    :cond_0
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 84
    instance-of v1, v0, Lcom/google/android/gms/b/a/f;

    if-eqz v1, :cond_1

    .line 85
    check-cast v0, Lcom/google/android/gms/b/a/f;

    goto :goto_0

    .line 86
    :cond_1
    new-instance v0, Lcom/google/android/gms/b/a/h;

    invoke-direct {v0, p1}, Lcom/google/android/gms/b/a/h;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method

.method protected a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "com.google.android.gms.signin.service.START"

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/b/a/d;)V
    .locals 4

    .prologue
    .line 23
    const-string/jumbo v0, "Expecting a valid ISignInCallbacks"

    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/b/a/a;->f:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->c()Landroid/accounts/Account;

    move-result-object v1

    .line 26
    const/4 v0, 0x0

    .line 27
    const-string/jumbo v2, "<<default account>>"

    iget-object v3, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/google/android/gms/b/a/a;->p()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->a(Landroid/content/Context;)Lcom/google/android/gms/auth/api/signin/internal/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/auth/api/signin/internal/c;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object v0

    .line 29
    :cond_0
    new-instance v2, Lcom/google/android/gms/common/internal/t;

    iget-object v3, p0, Lcom/google/android/gms/b/a/a;->h:Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v2, v1, v3, v0}, Lcom/google/android/gms/common/internal/t;-><init>(Landroid/accounts/Account;ILcom/google/android/gms/auth/api/signin/GoogleSignInAccount;)V

    .line 31
    invoke-virtual {p0}, Lcom/google/android/gms/b/a/a;->v()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/b/a/f;

    new-instance v1, Lcom/google/android/gms/b/a/j;

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/a/j;-><init>(Lcom/google/android/gms/common/internal/t;)V

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/b/a/f;->a(Lcom/google/android/gms/b/a/j;Lcom/google/android/gms/b/a/d;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "Remote service probably died when signIn is called"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_1
    new-instance v1, Lcom/google/android/gms/b/a/l;

    const/16 v2, 0x8

    invoke-direct {v1, v2}, Lcom/google/android/gms/b/a/l;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/google/android/gms/b/a/d;->a(Lcom/google/android/gms/b/a/l;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    const-string/jumbo v1, "SignInClientImpl"

    const-string/jumbo v2, "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    const-string/jumbo v0, "com.google.android.gms.signin.internal.ISignInService"

    return-object v0
.end method

.method public final c()V
    .locals 1

    .prologue
    .line 48
    new-instance v0, Lcom/google/android/gms/common/internal/c$d;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/internal/c$d;-><init>(Lcom/google/android/gms/common/internal/c;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/b/a/a;->a(Lcom/google/android/gms/common/internal/c$c;)V

    .line 49
    return-void
.end method

.method public d()I
    .locals 1

    .prologue
    .line 78
    const v0, 0xbdfcb8

    return v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/google/android/gms/b/a/a;->e:Z

    return v0
.end method

.method protected s()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/gms/b/a/a;->f:Lcom/google/android/gms/common/internal/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/internal/d;->f()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gms/b/a/a;->p()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/google/android/gms/b/a/a;->g:Landroid/os/Bundle;

    const-string/jumbo v1, "com.google.android.gms.signin.internal.realClientPackageName"

    iget-object v2, p0, Lcom/google/android/gms/b/a/a;->f:Lcom/google/android/gms/common/internal/d;

    .line 45
    invoke-virtual {v2}, Lcom/google/android/gms/common/internal/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/b/a/a;->g:Landroid/os/Bundle;

    return-object v0
.end method
