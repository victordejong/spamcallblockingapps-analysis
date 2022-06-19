.class public final Lcom/google/android/gms/internal/ads/cqa;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-gass@@19.1.0"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Lcom/google/android/gms/internal/ads/cpz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/cpz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/cqa;->a:Ljava/io/OutputStream;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)[B
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v8, -0x1

    const v7, 0x7ffffff7

    .line 11
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/cor;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v4, Ljava/util/ArrayDeque;

    const/16 v0, 0x14

    invoke-direct {v4, v0}, Ljava/util/ArrayDeque;-><init>(I)V

    .line 13
    const/16 v0, 0x2000

    move v3, v0

    move v2, v1

    .line 14
    :goto_0
    if-ge v2, v7, :cond_2

    .line 15
    sub-int v0, v7, v2

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v5, v0, [B

    .line 16
    invoke-interface {v4, v5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    move v0, v1

    .line 18
    :goto_1
    array-length v6, v5

    if-ge v0, v6, :cond_1

    .line 19
    array-length v6, v5

    sub-int/2addr v6, v0

    invoke-virtual {p0, v5, v0, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    .line 20
    if-ne v6, v8, :cond_0

    .line 21
    invoke-static {v4, v2}, Lcom/google/android/gms/internal/ads/cqa;->a(Ljava/util/Deque;I)[B

    move-result-object v0

    .line 27
    :goto_2
    return-object v0

    .line 22
    :cond_0
    add-int/2addr v0, v6

    .line 23
    add-int/2addr v2, v6

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/4 v0, 0x2

    invoke-static {v3, v0}, Lcom/google/android/gms/internal/ads/cqb;->a(II)I

    move-result v0

    move v3, v0

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ne v0, v8, :cond_3

    .line 27
    invoke-static {v4, v7}, Lcom/google/android/gms/internal/ads/cqa;->a(Ljava/util/Deque;I)[B

    move-result-object v0

    goto :goto_2

    .line 28
    :cond_3
    new-instance v0, Ljava/lang/OutOfMemoryError;

    const-string/jumbo v1, "input is too large to fit in a byte array"

    invoke-direct {v0, v1}, Ljava/lang/OutOfMemoryError;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static a(Ljava/util/Deque;I)[B
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Deque",
            "<[B>;I)[B"
        }
    .end annotation

    .prologue
    .line 1
    new-array v2, p1, [B

    move v1, p1

    .line 3
    :goto_0
    if-lez v1, :cond_0

    .line 4
    invoke-interface {p0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 5
    array-length v3, v0

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 6
    sub-int v4, p1, v1

    .line 7
    const/4 v5, 0x0

    invoke-static {v0, v5, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    sub-int v0, v1, v3

    move v1, v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    return-object v2
.end method
