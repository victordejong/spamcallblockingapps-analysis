.class final Lcom/google/android/gms/common/n;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-basement@@17.1.1"


# annotations
.annotation runtime Ljavax/annotation/CheckReturnValue;
.end annotation


# static fields
.field private static volatile a:Lcom/google/android/gms/common/internal/as;

.field private static final b:Ljava/lang/Object;

.field private static c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/n;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;
    .locals 2

    .prologue
    .line 6
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 7
    :try_start_0
    invoke-static {p0, p1, p2, p3}, Lcom/google/android/gms/common/n;->b(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 8
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 9
    return-object v1

    .line 10
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method static final synthetic a(ZLjava/lang/String;Lcom/google/android/gms/common/o;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 37
    if-nez p0, :cond_0

    .line 38
    invoke-static {p1, p2, v0, v1}, Lcom/google/android/gms/common/n;->b(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;

    move-result-object v2

    .line 39
    iget-boolean v2, v2, Lcom/google/android/gms/common/w;->a:Z

    .line 40
    if-eqz v2, :cond_0

    .line 41
    :goto_0
    invoke-static {p1, p2, p0, v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v0, v1

    .line 40
    goto :goto_0
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 1
    const-class v1, Lcom/google/android/gms/common/n;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 2
    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 4
    :cond_1
    :try_start_1
    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "GoogleCertificates has been initialized already"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static b(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)Lcom/google/android/gms/common/w;
    .locals 4

    .prologue
    .line 11
    :try_start_0
    sget-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/internal/as;

    if-nez v0, :cond_1

    .line 12
    sget-object v0, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/google/android/gms/common/n;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    :try_start_1
    sget-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/internal/as;

    if-nez v0, :cond_0

    .line 15
    sget-object v0, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;

    sget-object v2, Lcom/google/android/gms/dynamite/DynamiteModule;->d:Lcom/google/android/gms/dynamite/DynamiteModule$a;

    const-string/jumbo v3, "com.google.android.gms.googlecertificates"

    .line 16
    invoke-static {v0, v2, v3}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$a;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    move-result-object v0

    .line 17
    const-string/jumbo v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    .line 18
    invoke-virtual {v0, v2}, Lcom/google/android/gms/dynamite/DynamiteModule;->a(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lcom/google/android/gms/common/internal/ar;->a(Landroid/os/IBinder;)Lcom/google/android/gms/common/internal/as;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/internal/as;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 25
    :cond_1
    sget-object v0, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    new-instance v0, Lcom/google/android/gms/common/u;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/gms/common/u;-><init>(Ljava/lang/String;Lcom/google/android/gms/common/o;ZZ)V

    .line 27
    :try_start_2
    sget-object v1, Lcom/google/android/gms/common/n;->a:Lcom/google/android/gms/common/internal/as;

    sget-object v2, Lcom/google/android/gms/common/n;->c:Landroid/content/Context;

    .line 28
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v2

    .line 29
    invoke-interface {v1, v0, v2}, Lcom/google/android/gms/common/internal/as;->a(Lcom/google/android/gms/common/u;Lcom/google/android/gms/dynamic/a;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    .line 34
    if-eqz v0, :cond_3

    .line 35
    invoke-static {}, Lcom/google/android/gms/common/w;->a()Lcom/google/android/gms/common/w;

    move-result-object v0

    .line 36
    :goto_0
    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_4 .. :try_end_4} :catch_0

    .line 22
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 23
    const-string/jumbo v0, "GoogleCertificates"

    const-string/jumbo v2, "Failed to get Google certificates from remote"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    const-string/jumbo v2, "module init: "

    invoke-virtual {v1}, Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-static {v0, v1}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 31
    :catch_1
    move-exception v0

    .line 32
    const-string/jumbo v1, "GoogleCertificates"

    const-string/jumbo v2, "Failed to get Google certificates from remote"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    const-string/jumbo v1, "module call"

    invoke-static {v1, v0}, Lcom/google/android/gms/common/w;->a(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0

    .line 36
    :cond_3
    new-instance v0, Lcom/google/android/gms/common/p;

    invoke-direct {v0, p2, p0, p1}, Lcom/google/android/gms/common/p;-><init>(ZLjava/lang/String;Lcom/google/android/gms/common/o;)V

    invoke-static {v0}, Lcom/google/android/gms/common/w;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/common/w;

    move-result-object v0

    goto :goto_0
.end method
