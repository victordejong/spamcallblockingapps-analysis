.class final synthetic Lcom/google/android/gms/internal/ads/abi;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dni;


# static fields
.field static final a:Lcom/google/android/gms/internal/ads/dni;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/abi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/abi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/abi;->a:Lcom/google/android/gms/internal/ads/dni;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/android/gms/internal/ads/dnh;
    .locals 3

    .prologue
    .line 1
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dnh;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/dop;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dop;-><init>()V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/google/android/gms/internal/ads/dny;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dny;-><init>()V

    aput-object v2, v0, v1

    .line 2
    return-object v0
.end method
