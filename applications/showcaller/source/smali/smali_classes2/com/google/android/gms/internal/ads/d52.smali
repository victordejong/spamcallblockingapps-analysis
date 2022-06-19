.class public final Lcom/google/android/gms/internal/ads/d52;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wa2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/wa2<",
        "Lcom/google/android/gms/internal/ads/e52;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/common/util/e;

.field private final b:Lcom/google/android/gms/internal/ads/xj2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/util/e;Lcom/google/android/gms/internal/ads/xj2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d52;->a:Lcom/google/android/gms/common/util/e;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/d52;->b:Lcom/google/android/gms/internal/ads/xj2;

    return-void
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/r03;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "Lcom/google/android/gms/internal/ads/e52;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/e52;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/d52;->b:Lcom/google/android/gms/internal/ads/xj2;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/d52;->a:Lcom/google/android/gms/common/util/e;

    invoke-interface {v2}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/e52;-><init>(Lcom/google/android/gms/internal/ads/xj2;J)V

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/k03;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/r03;

    move-result-object v0

    return-object v0
.end method
