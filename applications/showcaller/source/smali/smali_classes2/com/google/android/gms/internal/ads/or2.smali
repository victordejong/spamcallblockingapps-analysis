.class public abstract Lcom/google/android/gms/internal/ads/or2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/nr2;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/qr2;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/qr2;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/qr2;->b(Z)Lcom/google/android/gms/internal/ads/nr2;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/nr2;->c(Z)Lcom/google/android/gms/internal/ads/nr2;

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method
