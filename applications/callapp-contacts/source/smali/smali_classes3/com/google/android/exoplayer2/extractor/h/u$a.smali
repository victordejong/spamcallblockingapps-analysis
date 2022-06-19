.class final Lcom/google/android/exoplayer2/extractor/h/u$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/h/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/ad;

.field private final b:Lcom/google/android/exoplayer2/util/u;


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/util/ad;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/u$a;->a:Lcom/google/android/exoplayer2/util/ad;

    .line 70
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/u$a;->b:Lcom/google/android/exoplayer2/util/u;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/ad;Lcom/google/android/exoplayer2/extractor/h/u$1;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/u$a;-><init>(Lcom/google/android/exoplayer2/util/ad;)V

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

    .line 76
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v1

    .line 77
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 79
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/u$a;->b:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 80
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/u$a;->b:Lcom/google/android/exoplayer2/util/u;

    .line 1169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    .line 80
    invoke-interface {v6, v3, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 82
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/h/u$a;->b:Lcom/google/android/exoplayer2/util/u;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v5

    const/4 v7, -0x1

    .line 2096
    :goto_0
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_c

    .line 2169
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3144
    iget v12, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 2097
    invoke-static {v10, v12}, Lcom/google/android/exoplayer2/extractor/h/u;->a([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 2099
    invoke-virtual {v3, v12}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    goto :goto_0

    .line 2102
    :cond_0
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 2106
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/h/v;->a(Lcom/google/android/exoplayer2/util/u;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_4

    .line 2108
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/h/u$a;->a:Lcom/google/android/exoplayer2/util/ad;

    invoke-virtual {v4, v14, v15}, Lcom/google/android/exoplayer2/util/ad;->b(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_2

    cmp-long v3, v8, v5

    if-nez v3, :cond_1

    .line 2112
    invoke-static {v14, v15, v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 2115
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    .line 4144
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 2120
    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->a(J)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 5144
    :cond_3
    iget v4, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    move v7, v4

    move-wide v8, v14

    .line 6127
    :cond_4
    iget v4, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 5147
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 5150
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 5153
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5155
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 5156
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 5157
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_2

    .line 5160
    :cond_6
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5162
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v10

    if-ge v10, v11, :cond_7

    .line 5163
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_2

    .line 6169
    :cond_7
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 7144
    iget v14, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5167
    invoke-static {v10, v14}, Lcom/google/android/exoplayer2/extractor/h/u;->a([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-ne v10, v14, :cond_9

    .line 5169
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5170
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v10

    .line 5171
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v14

    if-ge v14, v10, :cond_8

    .line 5172
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_2

    .line 5175
    :cond_8
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5182
    :cond_9
    :goto_1
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v10

    if-lt v10, v11, :cond_b

    .line 7169
    iget-object v10, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 8144
    iget v14, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5183
    invoke-static {v10, v14}, Lcom/google/android/exoplayer2/extractor/h/u;->a([BI)I

    move-result v10

    if-eq v10, v13, :cond_b

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_b

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_b

    .line 5191
    invoke-virtual {v3, v11}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 5193
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_a

    .line 5195
    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_2

    .line 5198
    :cond_a
    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v10

    .line 9127
    iget v14, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 9144
    iget v15, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    add-int/2addr v15, v10

    .line 5200
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5199
    invoke-virtual {v3, v10}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    goto :goto_1

    .line 10144
    :cond_b
    :goto_2
    iget v4, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    goto/16 :goto_0

    :cond_c
    cmp-long v3, v8, v5

    if-eqz v3, :cond_d

    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 2132
    invoke-static {v8, v9, v1, v2}, Lcom/google/android/exoplayer2/extractor/a$e;->b(JJ)Lcom/google/android/exoplayer2/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 2135
    :cond_d
    sget-object v1, Lcom/google/android/exoplayer2/extractor/a$e;->a:Lcom/google/android/exoplayer2/extractor/a$e;

    return-object v1
.end method

.method public final a()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/u$a;->b:Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/af;->f:[B

    .line 11088
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    return-void
.end method
