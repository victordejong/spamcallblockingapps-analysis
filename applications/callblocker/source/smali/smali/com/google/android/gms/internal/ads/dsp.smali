.class public final Lcom/google/android/gms/internal/ads/dsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:F

.field private final d:I

.field private final e:I


# direct methods
.method private constructor <init>(Ljava/util/List;IIIF)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;IIIF)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsp;->a:Ljava/util/List;

    .line 28
    iput p2, p0, Lcom/google/android/gms/internal/ads/dsp;->b:I

    .line 29
    iput p3, p0, Lcom/google/android/gms/internal/ads/dsp;->d:I

    .line 30
    iput p4, p0, Lcom/google/android/gms/internal/ads/dsp;->e:I

    .line 31
    iput p5, p0, Lcom/google/android/gms/internal/ads/dsp;->c:F

    .line 32
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsk;)Lcom/google/android/gms/internal/ads/dsp;
    .locals 7

    .prologue
    const/4 v0, -0x1

    const/4 v3, 0x0

    .line 1
    const/4 v1, 0x4

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    add-int/lit8 v2, v1, 0x1

    .line 3
    const/4 v1, 0x3

    if-ne v2, v1, :cond_0

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v2, "Error parsing AVC config"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 5
    :cond_0
    :try_start_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v4

    and-int/lit8 v6, v4, 0x1f

    move v4, v3

    .line 7
    :goto_0
    if-ge v4, v6, :cond_1

    .line 8
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dsp;->b(Lcom/google/android/gms/internal/ads/dsk;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v4

    .line 11
    :goto_1
    if-ge v3, v4, :cond_2

    .line 12
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/dsp;->b(Lcom/google/android/gms/internal/ads/dsk;)[B

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 16
    :cond_2
    const/high16 v5, 0x3f800000    # 1.0f

    .line 17
    if-lez v6, :cond_3

    .line 18
    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 19
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    array-length v0, v0

    invoke-static {v3, v2, v0}, Lcom/google/android/gms/internal/ads/dsf;->a([BII)Lcom/google/android/gms/internal/ads/dsi;

    move-result-object v0

    .line 20
    iget v3, v0, Lcom/google/android/gms/internal/ads/dsi;->a:I

    .line 21
    iget v4, v0, Lcom/google/android/gms/internal/ads/dsi;->b:I

    .line 22
    iget v5, v0, Lcom/google/android/gms/internal/ads/dsi;->c:F

    .line 23
    :goto_2
    new-instance v0, Lcom/google/android/gms/internal/ads/dsp;

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dsp;-><init>(Ljava/util/List;IIIF)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :cond_3
    move v4, v0

    move v3, v0

    goto :goto_2
.end method

.method private static b(Lcom/google/android/gms/internal/ads/dsk;)[B
    .locals 3

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v0

    .line 34
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v1

    .line 35
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 36
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/dsc;->a([BII)[B

    move-result-object v0

    return-object v0
.end method
