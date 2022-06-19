.class final Landroidx/media2/exoplayer/external/extractor/e/ad$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media2/exoplayer/external/extractor/e/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Landroidx/media2/exoplayer/external/util/z;

.field private final b:Landroidx/media2/exoplayer/external/util/p;

.field private final c:I


# direct methods
.method public constructor <init>(ILandroidx/media2/exoplayer/external/util/z;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->c:I

    .line 77
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->a:Landroidx/media2/exoplayer/external/util/z;

    .line 78
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->b:Landroidx/media2/exoplayer/external/util/p;

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

    .line 85
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v1

    .line 86
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/32 v5, 0x1b8a0

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v4, v3

    .line 88
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->b:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 89
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->b:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v5, 0x0

    move-object/from16 v6, p1

    invoke-interface {v6, v3, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 91
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->b:Landroidx/media2/exoplayer/external/util/p;

    .line 2125
    iget v4, v3, Landroidx/media2/exoplayer/external/util/p;->c:I

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v9, v5

    move-wide v11, v7

    .line 1102
    :goto_0
    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_4

    .line 1103
    iget-object v13, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2142
    iget v14, v3, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 1104
    invoke-static {v13, v14, v4}, Landroidx/media2/exoplayer/external/extractor/e/ai;->a([BII)I

    move-result v13

    add-int/lit16 v14, v13, 0xbc

    if-gt v14, v4, :cond_4

    .line 1109
    iget v5, v0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->c:I

    invoke-static {v3, v13, v5}, Landroidx/media2/exoplayer/external/extractor/e/ai;->a(Landroidx/media2/exoplayer/external/util/p;II)J

    move-result-wide v5

    cmp-long v15, v5, v7

    if-eqz v15, :cond_3

    .line 1111
    iget-object v15, v0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->a:Landroidx/media2/exoplayer/external/util/z;

    invoke-virtual {v15, v5, v6}, Landroidx/media2/exoplayer/external/util/z;->b(J)J

    move-result-wide v5

    cmp-long v15, v5, p2

    if-lez v15, :cond_1

    cmp-long v3, v11, v7

    if-nez v3, :cond_0

    .line 1115
    invoke-static {v5, v6, v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(JJ)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_0
    add-long/2addr v1, v9

    .line 1118
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(J)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_1
    const-wide/32 v9, 0x186a0

    add-long/2addr v9, v5

    cmp-long v11, v9, p2

    if-lez v11, :cond_2

    int-to-long v3, v13

    add-long/2addr v1, v3

    .line 1123
    invoke-static {v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->a(J)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    :cond_2
    int-to-long v9, v13

    move-wide v11, v5

    .line 1129
    :cond_3
    invoke-virtual {v3, v14}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    int-to-long v5, v14

    goto :goto_0

    :cond_4
    cmp-long v3, v11, v7

    if-eqz v3, :cond_5

    add-long/2addr v1, v5

    .line 1135
    invoke-static {v11, v12, v1, v2}, Landroidx/media2/exoplayer/external/extractor/a$e;->b(JJ)Landroidx/media2/exoplayer/external/extractor/a$e;

    move-result-object v1

    return-object v1

    .line 1138
    :cond_5
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/a$e;->a:Landroidx/media2/exoplayer/external/extractor/a$e;

    return-object v1
.end method

.method public final a()V
    .locals 3

    .line 144
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/ad$a;->b:Landroidx/media2/exoplayer/external/util/p;

    sget-object v1, Landroidx/media2/exoplayer/external/util/ac;->f:[B

    .line 3099
    array-length v2, v1

    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    return-void
.end method
