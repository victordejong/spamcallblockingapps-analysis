.class public final Lcom/google/android/gms/internal/ads/yx0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/zx0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/yx0;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/xx0;->a()Lcom/google/android/gms/internal/ads/yx0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zx0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzduy;->b:Lcom/google/android/gms/internal/ads/zzduy;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzduy;->e:Lcom/google/android/gms/internal/ads/zzduy;

    const-string v3, "ttc"

    invoke-direct {v0, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zx0;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzduy;Lcom/google/android/gms/internal/ads/zzduy;)V

    return-object v0
.end method
