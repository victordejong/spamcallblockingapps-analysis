.class public final Lcom/google/android/gms/internal/ads/kg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/kg;


# instance fields
.field private b:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/kg;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 6
    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/kg;
    .locals 1

    .prologue
    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/kg;->a:Lcom/google/android/gms/internal/ads/kg;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/kg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/kg;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/kg;->a:Lcom/google/android/gms/internal/ads/kg;

    .line 3
    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/kg;->a:Lcom/google/android/gms/internal/ads/kg;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/google/android/gms/measurement/a/a;)V
    .locals 3

    .prologue
    .line 17
    :try_start_0
    const-string/jumbo v0, "com.google.android.gms.ads.measurement.DynamiteMeasurementManager"

    sget-object v1, Lcom/google/android/gms/internal/ads/kh;->a:Lcom/google/android/gms/internal/ads/yc;

    invoke-static {p0, v0, v1}, Lcom/google/android/gms/internal/ads/ya;->a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/yc;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/afd;

    .line 18
    invoke-static {p0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/kd;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/kd;-><init>(Lcom/google/android/gms/measurement/a/a;)V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/afd;->a(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/afb;)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzazx; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    :goto_0
    return-void

    .line 20
    :catch_0
    move-exception v0

    .line 21
    :goto_1
    const-string/jumbo v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 20
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 27
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ac:Lcom/google/android/gms/internal/ads/ect;

    .line 29
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 30
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/kg;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-static {p0}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/a/a;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/kg;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/a/a;)V

    .line 32
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 33
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/edi;->a(Landroid/content/Context;)V

    .line 34
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 35
    const-string/jumbo v2, "measurementEnabled"

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->X:Lcom/google/android/gms/internal/ads/ect;

    .line 37
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 39
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 40
    const-string/jumbo v0, "FA-Ads"

    const-string/jumbo v2, "am"

    .line 41
    invoke-static {p0, v0, v2, p1, v1}, Lcom/google/android/gms/measurement/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/google/android/gms/measurement/a/a;

    move-result-object v0

    .line 42
    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/kg;->a(Landroid/content/Context;Lcom/google/android/gms/measurement/a/a;)V

    .line 43
    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v1, "com.google.firebase.analytics.FirebaseAnalytics"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kg;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 13
    const/4 v0, 0x0

    .line 16
    :goto_0
    return-object v0

    .line 14
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/ki;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/internal/ads/ki;-><init>(Lcom/google/android/gms/internal/ads/kg;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 3

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kg;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/google/android/gms/internal/ads/kf;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/kf;-><init>(Lcom/google/android/gms/internal/ads/kg;Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 10
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
