.class public final Lcom/google/android/gms/internal/ads/zzali;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbae;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzbae<",
        "Lcom/google/android/gms/internal/ads/zzakm;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

.field private final synthetic zzdka:Lcom/google/android/gms/internal/ads/zzalq;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdka:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zzg(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzakm;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;I)I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakz;->zzb(Lcom/google/android/gms/internal/ads/zzakz;)Lcom/google/android/gms/internal/ads/zzalq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdka:Lcom/google/android/gms/internal/ads/zzalq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzakz;->zzb(Lcom/google/android/gms/internal/ads/zzakz;)Lcom/google/android/gms/internal/ads/zzalq;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string v0, "New JS engine is loaded, marking previous one as destroyable."

    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzeb(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzakz;->zzb(Lcom/google/android/gms/internal/ads/zzakz;)Lcom/google/android/gms/internal/ads/zzalq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzalq;->zzuo()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdjw:Lcom/google/android/gms/internal/ads/zzakz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzali;->zzdka:Lcom/google/android/gms/internal/ads/zzalq;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzakz;->zza(Lcom/google/android/gms/internal/ads/zzakz;Lcom/google/android/gms/internal/ads/zzalq;)Lcom/google/android/gms/internal/ads/zzalq;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
