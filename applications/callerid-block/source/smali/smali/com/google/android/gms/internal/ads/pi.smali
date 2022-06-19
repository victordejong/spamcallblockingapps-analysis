.class public final Lcom/google/android/gms/internal/ads/pi;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static d:Lcom/google/android/gms/internal/ads/ln;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalQueryInfoGenerator.class"
    .end annotation
.end field


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/google/android/gms/ads/AdFormat;

.field private final c:Lcom/google/android/gms/internal/ads/s1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/pi;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pi;->b:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/pi;->c:Lcom/google/android/gms/internal/ads/s1;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ln;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/pi;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/pi;->d:Lcom/google/android/gms/internal/ads/ln;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/m03;->b()Lcom/google/android/gms/internal/ads/k03;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/de;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/de;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/k03;->g(Landroid/content/Context;Lcom/google/android/gms/internal/ads/he;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/pi;->d:Lcom/google/android/gms/internal/ads/ln;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/pi;->d:Lcom/google/android/gms/internal/ads/ln;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/ads/y/c;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pi;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/pi;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ln;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/y/c;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/pi;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/b;->g3(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/a;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/pi;->c:Lcom/google/android/gms/internal/ads/s1;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/pz2;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/pz2;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/pz2;->a()Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/google/android/gms/internal/ads/sz2;->a:Lcom/google/android/gms/internal/ads/sz2;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pi;->a:Landroid/content/Context;

    invoke-virtual {v3, v4, v2}, Lcom/google/android/gms/internal/ads/sz2;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/s1;)Lcom/google/android/gms/internal/ads/zzys;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzbak;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/pi;->b:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzbak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzyx;Lcom/google/android/gms/internal/ads/zzys;)V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/ni;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/ni;-><init>(Lcom/google/android/gms/internal/ads/pi;Lcom/google/android/gms/ads/y/c;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/ln;->I2(Lcom/google/android/gms/dynamic/a;Lcom/google/android/gms/internal/ads/zzbak;Lcom/google/android/gms/internal/ads/in;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    goto :goto_0
.end method
