.class final Lcom/google/android/gms/internal/ads/dnx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dni;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()[Lcom/google/android/gms/internal/ads/dnh;
    .locals 3

    .prologue
    .line 2
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/dnh;

    const/4 v1, 0x0

    new-instance v2, Lcom/google/android/gms/internal/ads/dny;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/dny;-><init>()V

    aput-object v2, v0, v1

    return-object v0
.end method
