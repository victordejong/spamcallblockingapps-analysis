.class public final Lcom/google/android/gms/internal/ads/zzblw;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zza:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzblv;",
            ">;"
        }
    .end annotation
.end field

.field private final zzb:Lcom/google/android/gms/internal/ads/zzbly;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbly;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzb:Lcom/google/android/gms/internal/ads/zzbly;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzblw;->zza:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzbly;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzb:Lcom/google/android/gms/internal/ads/zzbly;

    return-object v0
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzblv;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblw;->zza:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzblw;->zzb:Lcom/google/android/gms/internal/ads/zzbly;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzblw;->zza:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzblv;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzbly;->zze(Lcom/google/android/gms/internal/ads/zzblv;J[Ljava/lang/String;)Z

    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzblw;->zza:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzblv;

    const/4 v1, 0x0

    invoke-direct {v0, p3, p4, v1, v1}, Lcom/google/android/gms/internal/ads/zzblv;-><init>(JLjava/lang/String;Lcom/google/android/gms/internal/ads/zzblv;)V

    .line 3
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
