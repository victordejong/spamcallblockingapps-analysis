.class final Lcom/google/android/gms/internal/ads/zzfsz;
.super Lcom/google/android/gms/internal/ads/zzfsl;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzfsl<",
        "Lcom/google/android/gms/internal/ads/r03;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/e13;

.field private final zzb:Lcom/google/android/gms/internal/ads/tz2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e13;Lcom/google/android/gms/internal/ads/tz2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/e13;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzfsl;-><init>()V

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/tz2;

    return-void
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/tz2;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/tz2;->zza()Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/tz2;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    .line 2
    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/xu2;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zzb:Lcom/google/android/gms/internal/ads/tz2;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/e13;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/fz2;->isDone()Z

    move-result v0

    return v0
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/r03;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/e13;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fz2;->w(Lcom/google/android/gms/internal/ads/r03;)Z

    return-void
.end method

.method final zzg(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfsz;->zza:Lcom/google/android/gms/internal/ads/e13;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/fz2;->v(Ljava/lang/Throwable;)Z

    return-void
.end method
