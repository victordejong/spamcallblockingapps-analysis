.class final Lcom/google/android/gms/ads/internal/util/l0;
.super Lcom/google/android/gms/internal/ads/g04;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# instance fields
.field final synthetic r:[B

.field final synthetic s:Ljava/util/Map;

.field final synthetic t:Lcom/google/android/gms/internal/ads/di0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/util/r0;ILjava/lang/String;Lcom/google/android/gms/internal/ads/iz3;Lcom/google/android/gms/internal/ads/hz3;[BLjava/util/Map;Lcom/google/android/gms/internal/ads/di0;)V
    .locals 0

    .line 1
    iput-object p6, p0, Lcom/google/android/gms/ads/internal/util/l0;->r:[B

    iput-object p7, p0, Lcom/google/android/gms/ads/internal/util/l0;->s:Ljava/util/Map;

    iput-object p8, p0, Lcom/google/android/gms/ads/internal/util/l0;->t:Lcom/google/android/gms/internal/ads/di0;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gms/internal/ads/g04;-><init>(ILjava/lang/String;Lcom/google/android/gms/internal/ads/iz3;Lcom/google/android/gms/internal/ads/hz3;)V

    return-void
.end method


# virtual methods
.method protected final B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/l0;->t:Lcom/google/android/gms/internal/ads/di0;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/di0;->e(Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/g04;->B(Ljava/lang/String;)V

    return-void
.end method

.method public final p()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/l0;->s:Ljava/util/Map;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final q()[B
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/util/l0;->r:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic v(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/g04;->B(Ljava/lang/String;)V

    return-void
.end method
