.class public Lcom/google/android/gms/internal/ads/zzask;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "InternalQueryInfoGenerator.class"
    .end annotation
.end field


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzacw:Lcom/google/android/gms/internal/ads/zzzk;

.field private final zzdtm:Lcom/google/android/gms/ads/AdFormat;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/ads/AdFormat;Lcom/google/android/gms/internal/ads/zzzk;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtm:Lcom/google/android/gms/ads/AdFormat;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzask;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    return-void
.end method

.method public static zzp(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxy;
    .locals 3

    const-class v0, Lcom/google/android/gms/internal/ads/zzask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqo()Lcom/google/android/gms/internal/ads/zzwc;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzanf;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzanf;-><init>()V

    invoke-virtual {v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzwc;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzane;)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object p0

    sput-object p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtn:Lcom/google/android/gms/internal/ads/zzaxy;

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
.method public final zza(Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzask;->zzp(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzaxy;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Internal Error, query info generator is null."

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;->onFailure(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzask;->zzacw:Lcom/google/android/gms/internal/ads/zzzk;

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzvo;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzvo;-><init>()V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzvo;->zzqd()Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzask;->context:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzvq;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzzk;)Lcom/google/android/gms/internal/ads/zzvl;

    move-result-object v2

    :goto_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzaye;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzask;->zzdtm:Lcom/google/android/gms/ads/AdFormat;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, v5, v4, v5, v2}, Lcom/google/android/gms/internal/ads/zzaye;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvs;Lcom/google/android/gms/internal/ads/zzvl;)V

    :try_start_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zzasn;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/zzasn;-><init>(Lcom/google/android/gms/internal/ads/zzask;Lcom/google/android/gms/ads/query/QueryInfoGenerationCallback;)V

    invoke-interface {v0, v1, v3, v2}, Lcom/google/android/gms/internal/ads/zzaxy;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaye;Lcom/google/android/gms/internal/ads/zzaxx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Internal Error."

    goto :goto_0
.end method
