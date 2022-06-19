.class final Lcom/google/android/gms/internal/ads/zzenp;
.super Lcom/google/android/gms/internal/ads/zzenv;
.source "com.google.android.gms:play-services-gass@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzenv;"
    }
.end annotation


# instance fields
.field private final synthetic zzius:Lcom/google/android/gms/internal/ads/zzeno;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzeno;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzius:Lcom/google/android/gms/internal/ads/zzeno;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzenv;-><init>(Lcom/google/android/gms/internal/ads/zzeno;Lcom/google/android/gms/internal/ads/zzenn;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzeno;Lcom/google/android/gms/internal/ads/zzenn;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzenp;-><init>(Lcom/google/android/gms/internal/ads/zzeno;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzenq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzenp;->zzius:Lcom/google/android/gms/internal/ads/zzeno;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzenq;-><init>(Lcom/google/android/gms/internal/ads/zzeno;Lcom/google/android/gms/internal/ads/zzenn;)V

    return-object v0
.end method
