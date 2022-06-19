.class public final Lcom/google/android/gms/internal/ads/wr1;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/yr1;

.field private final b:Lcom/google/android/gms/internal/ads/xr1;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/yr1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/yr1;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/wr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    new-instance v1, Lcom/google/android/gms/internal/ads/xr1;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/xr1;-><init>(Lcom/google/android/gms/internal/ads/vr1;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/wr1;->b:Lcom/google/android/gms/internal/ads/xr1;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/vr1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr1;->b:Lcom/google/android/gms/internal/ads/xr1;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/vr1;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wr1;->a:Lcom/google/android/gms/internal/ads/yr1;

    return-object v0
.end method
