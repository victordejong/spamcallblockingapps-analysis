.class public final Lcom/google/android/gms/internal/ads/a50;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/google/android/gms/internal/ads/h50;)Lcom/google/android/gms/internal/ads/ne0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/h50;",
            ")",
            "Lcom/google/android/gms/internal/ads/ne0<",
            "Lcom/google/android/gms/internal/ads/la0;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/ne0;

    sget-object v1, Lcom/google/android/gms/internal/ads/zo;->f:Lcom/google/android/gms/internal/ads/sz1;

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/ne0;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method
