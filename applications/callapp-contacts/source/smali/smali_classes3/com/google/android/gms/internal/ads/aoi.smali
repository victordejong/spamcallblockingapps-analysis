.class public final Lcom/google/android/gms/internal/ads/aoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/cov;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/aof;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/aof;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/aoi;->a:Lcom/google/android/gms/internal/ads/aof;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/aoi;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/aoi;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/aoi;-><init>(Lcom/google/android/gms/internal/ads/aof;)V

    return-object v0
.end method

.method public static b(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/cov;
    .locals 0

    .line 1008
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/aof;->b:Lcom/google/android/gms/internal/ads/cov;

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/cov;

    return-object p0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/aoi;->a:Lcom/google/android/gms/internal/ads/aof;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/aoi;->b(Lcom/google/android/gms/internal/ads/aof;)Lcom/google/android/gms/internal/ads/cov;

    move-result-object v0

    return-object v0
.end method
