.class public final Lcom/google/android/gms/internal/ads/cyx;
.super Lcom/google/android/gms/internal/ads/cyw;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/internal/ads/cyw<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/cyx;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    const/4 p1, 0x4

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/cyw;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cyv;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cyw;->a(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/cyv;

    return-object p0
.end method

.method public final synthetic a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyv;
    .locals 0

    .line 15
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cyw;->b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyw;

    return-object p0
.end method

.method public final synthetic a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cyv;
    .locals 0

    .line 11
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/cyw;->a(Ljava/util/Iterator;)Lcom/google/android/gms/internal/ads/cyv;

    return-object p0
.end method

.method public final synthetic b(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyw;
    .locals 0

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/cyv;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/cyv;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/cyx;

    return-object p1
.end method
