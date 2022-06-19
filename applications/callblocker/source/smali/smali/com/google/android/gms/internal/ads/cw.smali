.class public final Lcom/google/android/gms/internal/ads/cw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/b/i;


# static fields
.field private static a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/google/android/gms/internal/ads/cw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/google/android/gms/internal/ads/cr;

.field private final c:Lcom/google/android/gms/ads/b/b;

.field private final d:Lcom/google/android/gms/ads/p;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cw;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/cr;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/ads/p;

    invoke-direct {v0}, Lcom/google/android/gms/ads/p;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/cw;->d:Lcom/google/android/gms/ads/p;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cw;->b:Lcom/google/android/gms/internal/ads/cr;

    .line 5
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/cr;->f()Lcom/google/android/gms/dynamic/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Lcom/google/android/gms/dynamic/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v0

    .line 10
    :goto_0
    if-eqz v2, :cond_1

    .line 12
    new-instance v0, Lcom/google/android/gms/ads/b/b;

    invoke-direct {v0, v2}, Lcom/google/android/gms/ads/b/b;-><init>(Landroid/content/Context;)V

    .line 14
    :try_start_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/cw;->b:Lcom/google/android/gms/internal/ads/cr;

    invoke-static {v0}, Lcom/google/android/gms/dynamic/b;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/dynamic/a;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_0

    move-object v0, v1

    :cond_0
    move-object v1, v0

    .line 21
    :cond_1
    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/cw;->c:Lcom/google/android/gms/ads/b/b;

    .line 22
    return-void

    .line 7
    :catch_0
    move-exception v0

    .line 8
    :goto_2
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    goto :goto_0

    .line 17
    :catch_1
    move-exception v0

    .line 20
    const-string/jumbo v2, ""

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 7
    :catch_2
    move-exception v0

    goto :goto_2
.end method

.method public static a(Lcom/google/android/gms/internal/ads/cr;)Lcom/google/android/gms/internal/ads/cw;
    .locals 4

    .prologue
    .line 23
    sget-object v1, Lcom/google/android/gms/internal/ads/cw;->a:Ljava/util/WeakHashMap;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/google/android/gms/internal/ads/cw;->a:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/cr;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/cw;

    .line 25
    if-eqz v0, :cond_0

    .line 26
    monitor-exit v1

    .line 29
    :goto_0
    return-object v0

    .line 27
    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/cw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/cw;-><init>(Lcom/google/android/gms/internal/ads/cr;)V

    .line 28
    sget-object v2, Lcom/google/android/gms/internal/ads/cw;->a:Ljava/util/WeakHashMap;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/cr;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    monitor-exit v1

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cw;->b:Lcom/google/android/gms/internal/ads/cr;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/cr;->b()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 58
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    const-string/jumbo v1, ""

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/yb;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 58
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/cr;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cw;->b:Lcom/google/android/gms/internal/ads/cr;

    return-object v0
.end method
