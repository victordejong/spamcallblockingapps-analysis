.class public final Lcom/google/android/gms/internal/ads/zzeqf;
.super Lcom/google/android/gms/internal/ads/zzepx;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/zzepx<",
        "TK;TV;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzepx;-><init>(I)V

    return-void
.end method

.method synthetic constructor <init>(ILcom/google/android/gms/internal/ads/zzeqg;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzeqf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzepx;
    .locals 0

    .line 5
    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzepx;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzeqo;)Lcom/google/android/gms/internal/ads/zzepx;

    return-object p0
.end method

.method public final zzbmn()Lcom/google/android/gms/internal/ads/zzeqd;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzeqd<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzeqd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqf;->zzjbv:Ljava/util/LinkedHashMap;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/zzeqg;)V

    return-object v0
.end method
