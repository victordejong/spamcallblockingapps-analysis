.class public final Lcom/google/android/gms/internal/ads/csa;
.super Lcom/google/android/gms/internal/ads/cqf$j;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cqf$j",
        "<TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cqf$j;-><init>()V

    return-void
.end method

.method public static h()Lcom/google/android/gms/internal/ads/csa;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/csa",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/csa;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/csa;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 3
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cqf$j;->a(Ljava/lang/Throwable;)Z

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .prologue
    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cqf$j;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
