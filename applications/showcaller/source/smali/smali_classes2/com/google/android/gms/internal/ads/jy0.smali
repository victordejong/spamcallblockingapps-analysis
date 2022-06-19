.class public final Lcom/google/android/gms/internal/ads/jy0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/cj3;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/cj3<",
        "Ljava/lang/Runnable;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/iy0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/iy0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/jy0;->a:Lcom/google/android/gms/internal/ads/iy0;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy0;->a:Lcom/google/android/gms/internal/ads/iy0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iy0;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jy0;->a:Lcom/google/android/gms/internal/ads/iy0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/iy0;->b()Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method
