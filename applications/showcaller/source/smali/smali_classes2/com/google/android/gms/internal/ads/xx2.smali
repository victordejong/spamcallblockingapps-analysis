.class final Lcom/google/android/gms/internal/ads/xx2;
.super Lcom/google/android/gms/internal/ads/wx2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic a:Lcom/google/android/gms/internal/ads/yx2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/yx2;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xx2;->a:Lcom/google/android/gms/internal/ads/yx2;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/wx2;-><init>()V

    return-void
.end method


# virtual methods
.method public final c()Lcom/google/android/gms/internal/ads/kx2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/kx2<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xx2;->a:Lcom/google/android/gms/internal/ads/yx2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/yx2;->a()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfpm;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/zzfpm;-><init>(I)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzfps;

    .line 2
    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzfps;-><init>(Ljava/util/Map;Lcom/google/android/gms/internal/ads/jv2;)V

    return-object v2
.end method
