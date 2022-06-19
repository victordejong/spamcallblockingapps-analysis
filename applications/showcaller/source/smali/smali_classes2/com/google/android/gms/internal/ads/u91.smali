.class public final Lcom/google/android/gms/internal/ads/u91;
.super Lcom/google/android/gms/internal/ads/m81;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/w91;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/m81<",
        "Lcom/google/android/gms/internal/ads/w91;",
        ">;",
        "Lcom/google/android/gms/internal/ads/w91;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/google/android/gms/internal/ads/ja1<",
            "Lcom/google/android/gms/internal/ads/w91;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/m81;-><init>(Ljava/util/Set;)V

    return-void
.end method


# virtual methods
.method public final U(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/r91;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/r91;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final a()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/t91;->a:Lcom/google/android/gms/internal/ads/l81;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final e()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/s91;->a:Lcom/google/android/gms/internal/ads/l81;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/p91;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/p91;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method

.method public final r(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/q91;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/q91;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/m81;->Q0(Lcom/google/android/gms/internal/ads/l81;)V

    return-void
.end method
