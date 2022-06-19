.class public Lcom/google/android/gms/internal/ads/d03;
.super Lcom/google/android/gms/internal/ads/e03;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/e03<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/r03;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/internal/ads/r03;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/e03;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/d03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-object v0
.end method

.method protected final bridge synthetic f()Ljava/util/concurrent/Future;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-object v0
.end method

.method protected final g()Lcom/google/android/gms/internal/ads/r03;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/r03<",
            "TV;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/d03;->d:Lcom/google/android/gms/internal/ads/r03;

    return-object v0
.end method
