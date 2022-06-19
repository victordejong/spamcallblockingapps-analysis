.class public Lcom/google/android/gms/internal/ads/zzask;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# static fields
.field private static zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzzk;

.field private final zzdtm:Lcom/google/android/gms/ads/AdFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtm:Lcom/google/android/gms/ads/AdFormat;

    .line 9
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzask;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    return-void
.end method

.method public static zzp(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/zzask;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

    if-nez v1, :cond_0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

    .line 4
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 6

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzask;->zzp(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    .line 13
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzask;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    if-nez v2, :cond_1

    .line 17
    new-instance v2, Lcom/google/android/gms/internal/ads/zzvo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvo;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvo;->zzqd()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v2

    goto :goto_0

    .line 18
    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v2

    .line 19
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtm:Lcom/google/android/gms/ads/AdFormat;

    .line 20
    invoke-virtual {v4}, Lcom/google/android/gms/ads/AdFormat;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzvl;)V

    .line 21
    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasn;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzask;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaxy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaye;Lcom/google/android/gms/internal/ads/zzaxx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    .line 24
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void
.end method
