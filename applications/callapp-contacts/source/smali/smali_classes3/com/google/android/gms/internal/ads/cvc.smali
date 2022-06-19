.class public abstract Lcom/google/android/gms/internal/ads/cvc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d()Lcom/google/android/gms/internal/ads/cvb;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/cvg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cvg;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/cvb;->a(Z)Lcom/google/android/gms/internal/ads/cvb;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cvb;->a()Lcom/google/android/gms/internal/ads/cvb;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract a()Ljava/lang/String;
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method
