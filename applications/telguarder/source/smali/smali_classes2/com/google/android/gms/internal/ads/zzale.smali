.class final Lcom/google/android/gms/internal/ads/zzale;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzaif;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzaif<",
        "Lcom/google/android/gms/internal/ads/zzalx;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdju:Lcom/google/android/gms/internal/ads/zzalq;

.field private final synthetic zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

.field private final synthetic zzdjw:Lcom/google/android/gms/internal/ads/zzakz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;Lcom/google/android/gms/internal/ads/zzakm;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    .line 2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzalx;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 4
    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbad;->getStatus()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzbad;->getStatus()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;I)I

    .line 8
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzakz;->zzc(Lcom/google/android/gms/internal/ads/zzakz;)Lcom/google/android/gms/ads/internal/util/zzar;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-interface {p2, v0}, Lcom/google/android/gms/ads/internal/util/zzar;->zzg(Ljava/lang/Object;)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjv:Lcom/google/android/gms/internal/ads/zzakm;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbad;->zzl(Ljava/lang/Object;)V

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzale;->zzdju:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/internal/ads/zzalq;

    const-string p2, "Successfully loaded JS Engine."

    .line 11
    invoke-static {p2}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    .line 12
    monitor-exit p1

    return-void

    .line 6
    :cond_1
    :goto_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
