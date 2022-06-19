.class public final Lcom/google/android/gms/internal/ads/dc0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@20.5.0"


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/yg0;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Lcom/google/android/gms/ads/AdFormat;

.field private final d:Lcom/google/android/gms/internal/ads/pu;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/pu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dc0;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/dc0;->c:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/dc0;->d:Lcom/google/android/gms/internal/ads/pu;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/yg0;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/dc0;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/dc0;->a:Lcom/google/android/gms/internal/ads/yg0;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/wr;->b()Lcom/google/android/gms/internal/ads/ur;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/p70;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/p70;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/ur;->o(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s70;)Lcom/google/android/gms/internal/ads/yg0;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/dc0;->a:Lcom/google/android/gms/internal/ads/yg0;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/dc0;->a:Lcom/google/android/gms/internal/ads/yg0;

    .line 2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/y/c;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dc0;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dc0;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/yg0;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 2
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dc0;->b:Landroid/content/Context;

    .line 3
    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->m2(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dc0;->d:Lcom/google/android/gms/internal/ads/pu;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/uq;

    .line 4
    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/uq;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/uq;->a()Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    goto :goto_0

    .line 5
    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/xq;->a:Lcom/google/android/gms/internal/ads/xq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dc0;->b:Landroid/content/Context;

    .line 6
    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/xq;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/pu;)Lcom/google/android/gms/internal/ads/zzbdg;

    move-result-object v2

    .line 7
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzcfr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dc0;->c:Lcom/google/android/gms/ads/AdFormat;

    .line 8
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzcfr;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdl;Lcom/google/android/gms/internal/ads/zzbdg;)V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/cc0;

    .line 9
    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/cc0;-><init>(Lcom/google/android/gms/internal/ads/dc0;Lcom/google/android/gms/ads/y/c;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/yg0;->w6(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzcfr;Lcom/google/android/gms/internal/ads/vg0;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    .line 10
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->a(Ljava/lang/String;)V

    return-void
.end method
