.class public final Lcom/google/android/gms/internal/ads/dsv;
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


# direct methods
.method private constructor <init>(Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dsv;->a:Ljava/util/List;

    .line 37
    iput p2, p0, Lcom/google/android/gms/internal/ads/dsv;->b:I

    .line 38
    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/dsk;)Lcom/google/android/gms/internal/ads/dsv;
    .locals 13

    .prologue
    const/4 v1, 0x0

    .line 1
    const/16 v0, 0x15

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v0

    and-int/lit8 v5, v0, 0x3

    .line 3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v6

    .line 5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v7

    move v3, v1

    move v4, v1

    .line 6
    :goto_0
    if-ge v3, v6, :cond_1

    .line 7
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 8
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v8

    move v0, v1

    move v2, v4

    .line 9
    :goto_1
    if-ge v0, v8, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v4

    .line 11
    add-int/lit8 v9, v4, 0x4

    add-int/2addr v2, v9

    .line 12
    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 14
    :cond_0
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v4, v2

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 16
    new-array v7, v4, [B

    move v3, v1

    move v2, v1

    .line 18
    :goto_2
    if-ge v3, v6, :cond_3

    .line 19
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 20
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v8

    move v0, v1

    .line 21
    :goto_3
    if-ge v0, v8, :cond_2

    .line 22
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->g()I

    move-result v9

    .line 23
    sget-object v10, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    const/4 v11, 0x0

    sget-object v12, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    array-length v12, v12

    invoke-static {v10, v11, v7, v2, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 24
    sget-object v10, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    array-length v10, v10

    add-int/2addr v2, v10

    .line 25
    iget-object v10, p0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 26
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dsk;->d()I

    move-result v11

    invoke-static {v10, v11, v7, v2, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    add-int/2addr v2, v9

    .line 28
    invoke-virtual {p0, v9}, Lcom/google/android/gms/internal/ads/dsk;->d(I)V

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 30
    :cond_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 31
    :cond_3
    if-nez v4, :cond_4

    const/4 v0, 0x0

    .line 32
    :goto_4
    new-instance v1, Lcom/google/android/gms/internal/ads/dsv;

    add-int/lit8 v2, v5, 0x1

    invoke-direct {v1, v0, v2}, Lcom/google/android/gms/internal/ads/dsv;-><init>(Ljava/util/List;I)V

    return-object v1

    .line 31
    :cond_4
    invoke-static {v7}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_4

    .line 33
    :catch_0
    move-exception v0

    .line 34
    new-instance v1, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v2, "Error parsing HEVC config"

    invoke-direct {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
