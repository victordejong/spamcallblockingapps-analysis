.class public Lcom/google/android/gms/auth/e;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field public static final b:Ljava/lang/String;

.field private static final c:[Ljava/lang/String;

.field private static final d:Landroid/content/ComponentName;

.field private static final e:Lcom/google/android/gms/common/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com.google"

    const-string v1, "com.google.work"

    const-string v2, "cn.google"

    .line 89
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/auth/e;->c:[Ljava/lang/String;

    const-string v0, "callerUid"

    .line 90
    sput-object v0, Lcom/google/android/gms/auth/e;->a:Ljava/lang/String;

    const-string v0, "androidPackageName"

    .line 92
    sput-object v0, Lcom/google/android/gms/auth/e;->b:Ljava/lang/String;

    .line 93
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.google.android.gms"

    const-string v2, "com.google.android.gms.auth.GetToken"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/auth/e;->d:Landroid/content/ComponentName;

    const-string v0, "GoogleAuthUtil"

    .line 94
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/google/android/gms/common/a/a;

    const-string v2, "Auth"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/common/a/a;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    .line 96
    sput-object v1, Lcom/google/android/gms/auth/e;->e:Lcom/google/android/gms/common/a/a;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()Lcom/google/android/gms/common/a/a;
    .locals 1

    .line 88
    sget-object v0, Lcom/google/android/gms/auth/e;->e:Lcom/google/android/gms/common/a/a;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/h;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Landroid/content/ComponentName;",
            "Lcom/google/android/gms/auth/h<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    const-string v0, "Error on service connection."

    .line 74
    new-instance v1, Lcom/google/android/gms/common/a;

    invoke-direct {v1}, Lcom/google/android/gms/common/a;-><init>()V

    .line 75
    invoke-static {p0}, Lcom/google/android/gms/common/internal/g;->a(Landroid/content/Context;)Lcom/google/android/gms/common/internal/g;

    move-result-object p0

    const-string v2, "GoogleAuthUtil"

    .line 76
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/gms/common/internal/g;->a(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "BlockingServiceConnection.getService() called on main thread"

    .line 2001
    invoke-static {v4}, Lcom/google/android/gms/common/internal/o;->c(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/google/android/gms/common/a;->a:Z

    if-nez v4, :cond_0

    .line 2002
    iput-boolean v3, v1, Lcom/google/android/gms/common/a;->a:Z

    iget-object v4, v1, Lcom/google/android/gms/common/a;->b:Ljava/util/concurrent/BlockingQueue;

    .line 2003
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    .line 77
    invoke-interface {p2, v4}, Lcom/google/android/gms/auth/h;->a(Landroid/os/IBinder;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/gms/common/internal/g;->b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    return-object p2

    .line 2001
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/IllegalStateException;

    const-string v4, "Cannot call get on this connection more than once"

    .line 2002
    invoke-direct {p2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p2

    .line 81
    :goto_0
    :try_start_2
    sget-object v4, Lcom/google/android/gms/auth/e;->e:Lcom/google/android/gms/common/a/a;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    aput-object p2, v5, v3

    .line 3001
    invoke-virtual {v4, v2, v5}, Lcom/google/android/gms/common/a/a;->d(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 83
    :goto_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/gms/common/internal/g;->b(Landroid/content/ComponentName;Landroid/content/ServiceConnection;Ljava/lang/String;)V

    throw p2

    .line 84
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Could not bind to service."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-object p0

    .line 3071
    :cond_0
    sget-object p0, Lcom/google/android/gms/auth/e;->e:Lcom/google/android/gms/common/a/a;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "Binder call returned null."

    aput-object v2, v0, v1

    const-string v1, "GoogleAuthUtil"

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/a/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3072
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service unavailable."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/android/gms/auth/UserRecoverableAuthException;,
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/auth/e;->a(Landroid/accounts/Account;)V

    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 1009
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->c(Ljava/lang/String;)V

    const-string v0, "Scope cannot be empty or null."

    .line 1010
    invoke-static {p2, v0}, Lcom/google/android/gms/common/internal/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    .line 1011
    invoke-static {p1}, Lcom/google/android/gms/auth/e;->a(Landroid/accounts/Account;)V

    .line 1012
    invoke-static {p0}, Lcom/google/android/gms/auth/e;->a(Landroid/content/Context;)V

    if-nez p3, :cond_0

    .line 1013
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    move-object p3, v0

    .line 1014
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "clientPackageName"

    .line 1015
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    sget-object v1, Lcom/google/android/gms/auth/e;->b:Ljava/lang/String;

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1017
    invoke-virtual {p3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "service_connection_start_time_millis"

    invoke-virtual {p3, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1019
    new-instance v0, Lcom/google/android/gms/auth/f;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gms/auth/f;-><init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1020
    sget-object p1, Lcom/google/android/gms/auth/e;->d:Landroid/content/ComponentName;

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/auth/e;->a(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/h;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/auth/TokenData;

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/auth/TokenData;->zzb()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Landroid/accounts/Account;)V
    .locals 5

    if-eqz p0, :cond_3

    .line 54
    iget-object v0, p0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 56
    sget-object v0, Lcom/google/android/gms/auth/e;->c:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    iget-object v4, p0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 60
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account type not supported"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 55
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account name cannot be empty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 53
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Account cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static a(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GoogleAuthException;
        }
    .end annotation

    .line 62
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x802c80

    .line 63
    invoke-static {p0, v0}, Lcom/google/android/gms/common/d;->ensurePlayServicesAvailable(Landroid/content/Context;I)V
    :try_end_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 69
    new-instance v0, Lcom/google/android/gms/auth/GoogleAuthException;

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/android/gms/auth/GoogleAuthException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception p0

    .line 66
    new-instance v0, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;

    .line 2000
    iget v1, p0, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->a:I

    .line 67
    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/common/GooglePlayServicesRepairableException;->a()Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;-><init>(ILjava/lang/String;Landroid/content/Intent;)V

    throw v0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/auth/GooglePlayServicesAvailabilityException;,
            Lcom/google/android/gms/auth/GoogleAuthException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Calling this from your main thread can lead to deadlock"

    .line 23
    invoke-static {v0}, Lcom/google/android/gms/common/internal/o;->c(Ljava/lang/String;)V

    .line 24
    invoke-static {p0}, Lcom/google/android/gms/auth/e;->a(Landroid/content/Context;)V

    .line 25
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 26
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "clientPackageName"

    .line 27
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    sget-object v2, Lcom/google/android/gms/auth/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 29
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :cond_0
    new-instance v1, Lcom/google/android/gms/auth/g;

    invoke-direct {v1, p1, v0}, Lcom/google/android/gms/auth/g;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 31
    sget-object p1, Lcom/google/android/gms/auth/e;->d:Landroid/content/ComponentName;

    invoke-static {p0, p1, v1}, Lcom/google/android/gms/auth/e;->a(Landroid/content/Context;Landroid/content/ComponentName;Lcom/google/android/gms/auth/h;)Ljava/lang/Object;

    return-void
.end method
