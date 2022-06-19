.class final Landroidx/media2/exoplayer/external/extractor/e/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/z;

.field private final b:Landroidx/media2/exoplayer/external/util/p;


# direct methods
.method private constructor <init>(Landroidx/media2/exoplayer/external/util/z;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 74
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->b:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media2/exoplayer/external/util/z;Landroidx/media2/exoplayer/external/extractor/e/v$1;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/v$a;-><init>(Landroidx/media2/exoplayer/external/util/z;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;J)Landroidx/media2/exoplayer/external/extractor/a$e;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 81
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v1

    .line 82
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v5, 0x4e20

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 84
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 85
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-interface {v6, v3, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 87
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->b:Landroidx/media2/exoplayer/external/util/p;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, v5

    const/4 v7, -0x1

    .line 1101
    :goto_0
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_c

    .line 1102
    iget-object v10, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1142
    iget v12, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 1102
    invoke-static {v10, v12}, Landroidx/media2/exoplayer/external/extractor/e/v;->a([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 1104
    invoke-virtual {v3, v12}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    goto :goto_0

    .line 1107
    :cond_0
    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 1111
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/e/w;->a(Landroidx/media2/exoplayer/external/util/p;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_4

    .line 1113
    iget-object v4, v0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->a:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v4, v14, v15}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_2

    cmp-long v3, v8, v5

    if-nez v3, :cond_1

    .line 1117
    invoke-static {v14, v15, v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(JJ)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_1
    int-to-long v3, v7

    add-long/2addr v1, v3

    .line 1120
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(J)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    .line 2142
    iget v3, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    .line 1125
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(J)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 3142
    :cond_3
    iget v4, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    move v7, v4

    move-wide v8, v14

    .line 4125
    :cond_4
    iget v4, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 3152
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 3155
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 3158
    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3160
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 3161
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 3162
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_2

    .line 3165
    :cond_6
    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3167
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    if-ge v10, v11, :cond_7

    .line 3168
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_2

    .line 3172
    :cond_7
    iget-object v10, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 4142
    iget v14, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3172
    invoke-static {v10, v14}, Landroidx/media2/exoplayer/external/extractor/e/v;->a([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-ne v10, v14, :cond_9

    .line 3174
    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3175
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v10

    .line 3176
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v14

    if-ge v14, v10, :cond_8

    .line 3177
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_2

    .line 3180
    :cond_8
    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3187
    :cond_9
    :goto_1
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    if-lt v10, v11, :cond_b

    .line 3188
    iget-object v10, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 5142
    iget v14, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 3188
    invoke-static {v10, v14}, Landroidx/media2/exoplayer/external/extractor/e/v;->a([BI)I

    move-result v10

    if-eq v10, v13, :cond_b

    const/16 v14, 0x1b9

    if-eq v10, v14, :cond_b

    ushr-int/lit8 v10, v10, 0x8

    if-ne v10, v12, :cond_b

    .line 3196
    invoke-virtual {v3, v11}, Landroidx/media2/exoplayer/external/util/p;->d(I)V

    .line 3198
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_a

    .line 3200
    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_2

    .line 3203
    :cond_a
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->d()I

    move-result v10

    .line 6125
    iget v14, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 6142
    iget v15, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    add-int/2addr v15, v10

    .line 3205
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 3204
    invoke-virtual {v3, v10}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    goto :goto_1

    .line 7142
    :cond_b
    :goto_2
    iget v4, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    goto/16 :goto_0

    :cond_c
    cmp-long v3, v8, v5

    if-eqz v3, :cond_d

    int-to-long v3, v4

    add-long/2addr v1, v3

    .line 1137
    invoke-static {v8, v9, v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->b(JJ)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 1140
    :cond_d
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/a$e;->a:Landroidx/media2/exoplayer/external/extractor/a$e;

    return-object v1
.end method

.method public final a()V
    .locals 3

    .line 92
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/v$a;->b:Landroidx/media2/exoplayer/external/util/p;

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    .line 8099
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    return-void
.end method
