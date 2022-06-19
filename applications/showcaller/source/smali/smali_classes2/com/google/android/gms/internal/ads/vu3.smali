.class final Lcom/google/android/gms/internal/ads/vu3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/hv2;

.field private static final b:Lcom/google/android/gms/internal/ads/hv2;


# instance fields
.field private final c:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x3a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku2;->b(C)Lcom/google/android/gms/internal/ads/ku2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv2;->b(Lcom/google/android/gms/internal/ads/ku2;)Lcom/google/android/gms/internal/ads/hv2;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/vu3;->a:Lcom/google/android/gms/internal/ads/hv2;

    const/16 v0, 0x2a

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/ku2;->b(C)Lcom/google/android/gms/internal/ads/ku2;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/hv2;->b(Lcom/google/android/gms/internal/ads/ku2;)Lcom/google/android/gms/internal/ads/hv2;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/vu3;->b:Lcom/google/android/gms/internal/ads/hv2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/vu3;->c:Ljava/util/List;

    return-void
.end method
