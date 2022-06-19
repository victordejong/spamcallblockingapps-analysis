.class public abstract Lcom/google/android/gms/internal/ads/clu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/clt;
    .locals 2

    .prologue
    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/clx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/clx;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/clt;->a(Z)Lcom/google/android/gms/internal/ads/clt;

    move-result-object v0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/clt;->b(Z)Lcom/google/android/gms/internal/ads/clt;

    move-result-object v0

    .line 5
    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method
