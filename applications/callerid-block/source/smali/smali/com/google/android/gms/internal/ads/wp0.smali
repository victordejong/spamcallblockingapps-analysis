.class public final Lcom/google/android/gms/internal/ads/wp0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/eh2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/eh2<",
        "Lcom/google/android/gms/internal/ads/rq0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/wp0;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/vp0;->a()Lcom/google/android/gms/internal/ads/wp0;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/rq0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzui;->j:Lcom/google/android/gms/internal/ads/zzui;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzui;->k:Lcom/google/android/gms/internal/ads/zzui;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzui;->H:Lcom/google/android/gms/internal/ads/zzui;

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/rq0;-><init>(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzui;)V

    return-object v0
.end method
