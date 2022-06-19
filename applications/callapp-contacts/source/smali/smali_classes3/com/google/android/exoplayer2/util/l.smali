.class public final Lcom/google/android/exoplayer2/util/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:[I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    const/4 v1, -0x1

    .line 39
    iput v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 40
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    .line 41
    iput-object v0, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    .line 42
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->e:I

    return-void
.end method

.method private d()V
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    if-ltz v1, :cond_0

    .line 101
    new-array v1, v1, [I

    .line 102
    array-length v2, v0

    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    sub-int/2addr v2, v3

    const/4 v4, 0x0

    .line 104
    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 105
    iget-object v0, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iput v4, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    .line 108
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 109
    iput-object v1, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    .line 110
    array-length v0, v1

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->e:I

    return-void

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public final a()I
    .locals 4

    .line 62
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-eqz v0, :cond_0

    .line 66
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    iget v2, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    aget v1, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 67
    iget v3, p0, Lcom/google/android/exoplayer2/util/l;->e:I

    and-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    add-int/lit8 v0, v0, -0x1

    .line 68
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    return v1

    .line 63
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    .line 47
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 48
    invoke-direct {p0}, Lcom/google/android/exoplayer2/util/l;->d()V

    .line 51
    :cond_0
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/google/android/exoplayer2/util/l;->e:I

    and-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 52
    iget-object v1, p0, Lcom/google/android/exoplayer2/util/l;->d:[I

    aput p1, v1, v0

    .line 53
    iget p1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    return-void
.end method

.method public final b()Z
    .locals 1

    .line 80
    iget v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()V
    .locals 2

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->a:I

    const/4 v1, -0x1

    .line 86
    iput v1, p0, Lcom/google/android/exoplayer2/util/l;->b:I

    .line 87
    iput v0, p0, Lcom/google/android/exoplayer2/util/l;->c:I

    return-void
.end method
