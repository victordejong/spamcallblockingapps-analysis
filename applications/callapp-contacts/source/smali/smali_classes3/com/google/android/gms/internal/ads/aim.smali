.class public final Lcom/google/android/gms/internal/ads/aim;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dsi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/dsi<",
        "Lcom/google/android/gms/internal/ads/eha;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/google/android/gms/internal/ads/eha;
    .locals 1

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/eha;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/eha;-><init>()V

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dso;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/eha;

    return-object v0
.end method


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 1

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/aim;->b()Lcom/google/android/gms/internal/ads/eha;

    move-result-object v0

    return-object v0
.end method
