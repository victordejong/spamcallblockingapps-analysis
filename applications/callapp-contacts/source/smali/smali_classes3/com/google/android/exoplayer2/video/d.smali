.class public final Lcom/google/android/exoplayer2/video/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/google/android/exoplayer2/video/d;->a:Ljava/util/List;

    .line 118
    iput p2, p0, Lcom/google/android/exoplayer2/video/d;->b:I

    .line 119
    iput-object p3, p0, Lcom/google/android/exoplayer2/video/d;->c:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/google/android/exoplayer2/util/u;)Lcom/google/android/exoplayer2/video/d;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/16 v1, 0x15

    .line 42
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 43
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v2

    .line 1144
    iget v3, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/4 v7, 0x1

    if-ge v5, v2, :cond_1

    .line 50
    invoke-virtual {v0, v7}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v7, :cond_0

    .line 53
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v9

    add-int/lit8 v10, v9, 0x4

    add-int/2addr v6, v10

    .line 55
    invoke-virtual {v0, v9}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 60
    :cond_1
    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 61
    new-array v3, v6, [B

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_2
    if-ge v8, v2, :cond_4

    .line 65
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v11

    and-int/lit8 v11, v11, 0x7f

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v12

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_3

    .line 68
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v14

    .line 69
    sget-object v15, Lcom/google/android/exoplayer2/util/s;->a:[B

    sget-object v5, Lcom/google/android/exoplayer2/util/s;->a:[B

    array-length v5, v5

    invoke-static {v15, v4, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 71
    sget-object v5, Lcom/google/android/exoplayer2/util/s;->a:[B

    array-length v5, v5

    add-int/2addr v10, v5

    .line 1169
    iget-object v5, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 2144
    iget v15, v0, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 72
    invoke-static {v5, v15, v3, v10, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0x21

    if-ne v11, v5, :cond_2

    if-nez v13, :cond_2

    .line 75
    new-instance v5, Lcom/google/android/exoplayer2/util/v;

    add-int v9, v10, v14

    invoke-direct {v5, v3, v10, v9}, Lcom/google/android/exoplayer2/util/v;-><init>([BII)V

    .line 80
    invoke-static {v5}, Lcom/google/android/exoplayer2/util/d;->a(Lcom/google/android/exoplayer2/util/v;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :cond_2
    add-int/2addr v10, v14

    .line 83
    invoke-virtual {v0, v14}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    if-nez v6, :cond_5

    const/4 v5, 0x0

    goto :goto_4

    .line 88
    :cond_5
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 89
    :goto_4
    new-instance v0, Lcom/google/android/exoplayer2/video/d;

    add-int/2addr v1, v7

    invoke-direct {v0, v5, v1, v9}, Lcom/google/android/exoplayer2/video/d;-><init>(Ljava/util/List;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    new-instance v1, Lcom/google/android/exoplayer2/ParserException;

    const-string v2, "Error parsing HEVC config"

    invoke-direct {v1, v2, v0}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
