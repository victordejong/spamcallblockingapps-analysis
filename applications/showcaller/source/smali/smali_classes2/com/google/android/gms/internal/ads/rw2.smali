.class final Lcom/google/android/gms/internal/ads/rw2;
.super Lcom/google/android/gms/internal/ads/uw2;
.source "com.google.android.gms:play-services-ads@@20.5.0"


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/uw2;-><init>(Lcom/google/android/gms/internal/ads/tw2;)V

    return-void
.end method

.method static final j(I)Lcom/google/android/gms/internal/ads/uw2;
    .locals 0

    if-gez p0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->g()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p0

    goto :goto_0

    :cond_0
    if-lez p0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->h()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->f()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/uw2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lcom/google/android/gms/internal/ads/uw2;"
        }
    .end annotation

    .line 1
    invoke-interface {p3, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rw2;->j(I)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    return-object p1
.end method

.method public final b(II)Lcom/google/android/gms/internal/ads/uw2;
    .locals 0

    if-ge p1, p2, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rw2;->j(I)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    return-object p1
.end method

.method public final c(ZZ)Lcom/google/android/gms/internal/ads/uw2;
    .locals 0

    const/4 p1, 0x0

    invoke-static {p1, p1}, Lcom/google/android/gms/internal/ads/oy2;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rw2;->j(I)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    return-object p1
.end method

.method public final d(ZZ)Lcom/google/android/gms/internal/ads/uw2;
    .locals 0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/oy2;->a(ZZ)I

    move-result p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/rw2;->j(I)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
