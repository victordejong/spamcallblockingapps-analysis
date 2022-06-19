.class public final Lcom/google/android/gms/internal/ads/zzcjx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzdrp;


# instance fields
.field private zzgkx:Lcom/google/android/gms/internal/ads/zztu;

.field private zzgld:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdrk;",
            "Lcom/google/android/gms/internal/ads/zzcjz;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zztu;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zztu;",
            "Ljava/util/Map<",
            "Lcom/google/android/gms/internal/ads/zzdrk;",
            "Lcom/google/android/gms/internal/ads/zzcjz;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgkx:Lcom/google/android/gms/internal/ads/zztu;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgkx:Lcom/google/android/gms/internal/ads/zztu;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjz;->zzgli:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    :cond_0
    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V
    .locals 1

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgkx:Lcom/google/android/gms/internal/ads/zztu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjz;->zzglg:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    :cond_0
    return-void
.end method

.method public final zzc(Lcom/google/android/gms/internal/ads/zzdrk;Ljava/lang/String;)V
    .locals 1

    .line 12
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgkx:Lcom/google/android/gms/internal/ads/zztu;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcjx;->zzgld:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcjz;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzcjz;->zzglh:Lcom/google/android/gms/internal/ads/zztw$zza$zza;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zztu;->zza(Lcom/google/android/gms/internal/ads/zztw$zza$zza;)V

    :cond_0
    return-void
.end method
