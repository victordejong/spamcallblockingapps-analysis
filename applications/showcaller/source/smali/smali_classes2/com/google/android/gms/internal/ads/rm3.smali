.class public final Lcom/google/android/gms/internal/ads/rm3;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/google/android/gms/internal/ads/rm3;",
        ">;"
    }
.end annotation


# instance fields
.field private final d:Z

.field private final e:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/u4;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget p1, p1, Lcom/google/android/gms/internal/ads/u4;->f:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/rm3;->d:Z

    .line 2
    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zm3;->k(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/rm3;->e:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/rm3;)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/uw2;->i()Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rm3;->e:Z

    iget-boolean v2, p1, Lcom/google/android/gms/internal/ads/rm3;->e:Z

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/rm3;->d:Z

    .line 2
    iget-boolean p1, p1, Lcom/google/android/gms/internal/ads/rm3;->d:Z

    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/uw2;->d(ZZ)Lcom/google/android/gms/internal/ads/uw2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/uw2;->e()I

    move-result p1

    return p1
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/ads/rm3;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/rm3;->a(Lcom/google/android/gms/internal/ads/rm3;)I

    move-result p1

    return p1
.end method
