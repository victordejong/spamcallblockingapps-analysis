.class final Lcom/google/android/gms/internal/ads/zzegj;
.super Lcom/google/android/gms/internal/ads/zzefv;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzefv<",
        "Lcom/google/android/gms/internal/ads/rz1;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic zza:Lcom/google/android/gms/internal/ads/e02;

.field private final zzb:Lcom/google/android/gms/internal/ads/ty1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/e02;Lcom/google/android/gms/internal/ads/ty1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Lcom/google/android/gms/internal/ads/e02;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzefv;-><init>()V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/ty1;

    return-void
.end method


# virtual methods
.method final bridge synthetic zza()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/ty1;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/ty1;->zza()Lcom/google/android/gms/internal/ads/rz1;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/ty1;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/nw1;->c(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zzb:Lcom/google/android/gms/internal/ads/ty1;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final zzd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Lcom/google/android/gms/internal/ads/e02;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/wx1;->isDone()Z

    move-result v0

    return v0
.end method

.method final bridge synthetic zzf(Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/rz1;

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Lcom/google/android/gms/internal/ads/e02;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/wx1;->o(Lcom/google/android/gms/internal/ads/rz1;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzegj;->zza:Lcom/google/android/gms/internal/ads/e02;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/wx1;->n(Ljava/lang/Throwable;)Z

    return-void
.end method
