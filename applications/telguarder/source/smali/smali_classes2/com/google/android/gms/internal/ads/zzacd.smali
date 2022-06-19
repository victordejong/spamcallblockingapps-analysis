.class public final Lcom/google/android/gms/internal/ads/zzacd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzdbh:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/zzaca;",
            ">;"
        }
    .end annotation
.end field

.field private final zzdbi:Lcom/google/android/gms/internal/ads/zzacc;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzacc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbi:Lcom/google/android/gms/internal/ads/zzacc;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbh:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzaca;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbh:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbi:Lcom/google/android/gms/internal/ads/zzacc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbh:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaca;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, p2, p3, p4, v1}, Lcom/google/android/gms/internal/ads/zzacc;->zza(Lcom/google/android/gms/internal/ads/zzaca;J[Ljava/lang/String;)Z

    .line 12
    :cond_1
    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbh:Ljava/util/Map;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbi:Lcom/google/android/gms/internal/ads/zzacc;

    if-nez v0, :cond_2

    const/4 p3, 0x0

    goto :goto_1

    .line 15
    :cond_2
    invoke-virtual {v0, p3, p4}, Lcom/google/android/gms/internal/ads/zzacc;->zzex(J)Lcom/google/android/gms/internal/ads/zzaca;

    move-result-object p3

    .line 16
    :goto_1
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final zzsp()Lcom/google/android/gms/internal/ads/zzacc;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacd;->zzdbi:Lcom/google/android/gms/internal/ads/zzacc;

    return-object v0
.end method
