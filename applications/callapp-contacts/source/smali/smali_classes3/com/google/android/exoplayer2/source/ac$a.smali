.class public final Lcom/google/android/exoplayer2/source/ac$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/ac;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private final a:Ljava/util/Random;

.field private final b:[I

.field private final c:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ac$a;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 1

    .line 55
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ac$a;-><init>(ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>(ILjava/util/Random;)V
    .locals 0

    .line 70
    invoke-static {p1, p2}, Lcom/google/android/exoplayer2/source/ac$a;->a(ILjava/util/Random;)[I

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/google/android/exoplayer2/source/ac$a;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method public constructor <init>([IJ)V
    .locals 1

    .line 66
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0, p2, p3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/source/ac$a;-><init>([ILjava/util/Random;)V

    return-void
.end method

.method private constructor <init>([ILjava/util/Random;)V
    .locals 2

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    .line 75
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    .line 76
    array-length p2, p1

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/google/android/exoplayer2/source/ac$a;->c:[I

    const/4 p2, 0x0

    .line 77
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->c:[I

    aget v1, p1, p2

    aput p2, v0, v1

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(ILjava/util/Random;)[I
    .locals 5

    .line 159
    new-array v0, p0, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 161
    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 162
    aget v4, v0, v3

    aput v4, v0, v1

    .line 163
    aput v1, v0, v3

    move v1, v2

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v0, v0

    return v0
.end method

.method public final a(I)I
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->c:[I

    aget p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 90
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget p1, v0, p1

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method public final a(II)Lcom/google/android/exoplayer2/source/ac;
    .locals 7

    .line 111
    new-array p1, p2, [I

    .line 112
    new-array v0, p2, [I

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    .line 114
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    aput v3, p1, v2

    .line 115
    iget-object v3, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 116
    aget v5, v0, v3

    aput v5, v0, v2

    add-int/lit8 v2, v2, 0x0

    .line 117
    aput v2, v0, v3

    move v2, v4

    goto :goto_0

    .line 119
    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    .line 120
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v2, v2

    add-int/2addr v2, p2

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 123
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v6, v5

    add-int/2addr v6, p2

    if-ge v1, v6, :cond_3

    if-ge v3, p2, :cond_1

    .line 124
    aget v6, p1, v3

    if-ne v4, v6, :cond_1

    add-int/lit8 v5, v3, 0x1

    .line 126
    aget v3, v0, v3

    aput v3, v2, v1

    move v3, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v4, 0x1

    .line 128
    aget v4, v5, v4

    aput v4, v2, v1

    .line 129
    aget v4, v2, v1

    if-ltz v4, :cond_2

    .line 130
    aget v4, v2, v1

    add-int/2addr v4, p2

    aput v4, v2, v1

    :cond_2
    move v4, v6

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 134
    :cond_3
    new-instance p1, Lcom/google/android/exoplayer2/source/ac$a;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v2, p2}, Lcom/google/android/exoplayer2/source/ac$a;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final b()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v1, v0

    if-lez v1, :cond_0

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final b(I)I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->c:[I

    aget p1, v0, p1

    const/4 v0, -0x1

    add-int/2addr p1, v0

    if-ltz p1, :cond_0

    .line 96
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    aget p1, v0, p1

    return p1

    :cond_0
    return v0
.end method

.method public final b(II)Lcom/google/android/exoplayer2/source/ac;
    .locals 7

    sub-int v0, p2, p1

    .line 140
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v1, v1, [I

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 143
    aget v5, v4, v2

    if-lt v5, p1, :cond_0

    aget v5, v4, v2

    if-ge v5, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_0
    sub-int v5, v2, v3

    .line 147
    aget v6, v4, v2

    if-lt v6, p1, :cond_1

    aget v4, v4, v2

    sub-int/2addr v4, v0

    goto :goto_1

    :cond_1
    aget v4, v4, v2

    :goto_1
    aput v4, v1, v5

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/source/ac$a;

    new-instance p2, Ljava/util/Random;

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    invoke-direct {p1, v1, p2}, Lcom/google/android/exoplayer2/source/ac$a;-><init>([ILjava/util/Random;)V

    return-object p1
.end method

.method public final c()I
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ac$a;->b:[I

    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final d()Lcom/google/android/exoplayer2/source/ac;
    .locals 4

    .line 155
    new-instance v0, Lcom/google/android/exoplayer2/source/ac$a;

    new-instance v1, Ljava/util/Random;

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ac$a;->a:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/android/exoplayer2/source/ac$a;-><init>(ILjava/util/Random;)V

    return-object v0
.end method
