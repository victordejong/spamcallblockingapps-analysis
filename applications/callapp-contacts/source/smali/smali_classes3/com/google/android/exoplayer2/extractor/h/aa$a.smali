.class final Lcom/google/android/exoplayer2/extractor/h/aa$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/ad;

.field private final b:Lcom/google/android/exoplayer2/util/u;

.field private final c:I

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/google/android/exoplayer2/util/ad;I)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->c:I

    .line 78
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->a:Lcom/google/android/exoplayer2/util/ad;

    .line 79
    iput p3, p0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->d:I

    .line 80
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;J)Lcom/google/android/exoplayer2/extractor/a$e;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 86
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    .line 87
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->d:I

    int-to-long v3, v3

    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 89
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 90
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 90
    invoke-interface {v6, v3, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 92
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 3127
    iget v4, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 2103
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_4

    .line 3169
    iget-object v13, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4144
    iget v14, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 2105
    invoke-static {v13, v14, v4}, Lcom/google/android/exoplayer2/extractor/h/ae;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-gt v14, v4, :cond_4

    .line 2110
    iget v5, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->c:I

    invoke-static {v3, v13, v5}, Lcom/google/android/exoplayer2/extractor/h/ae;->a(Lcom/google/android/exoplayer2/util/u;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_3

    .line 2112
    iget-object v15, v0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->a:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v15, v5, v6}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_1

    cmp-long v3, v11, v7

    if-nez v3, :cond_0

    .line 2116
    invoke-static {v5, v6, v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_0
    add-long/2addr v1, v9

    .line 2119
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v11, v9, p2

    if-lez v11, :cond_2

    int-to-long v3, v13

    add-long/2addr v1, v3

    .line 2124
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_2
    int-to-long v9, v13

    move-wide v11, v5

    .line 2130
    :cond_3
    invoke-virtual {v3, v14}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_4
    cmp-long v3, v11, v7

    if-eqz v3, :cond_5

    add-long/2addr v1, v5

    .line 2136
    invoke-static {v11, v12, v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->b(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 2139
    :cond_5
    sget-object v1, Lcom/google/android/exoplayer2/extractor/a$e;->a:Lcom/google/android/exoplayer2/extractor/a$e;

    return-object v1
.end method

.method public final a()V
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/aa$a;->b:Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->f:[B

    .line 5088
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    return-void
.end method
