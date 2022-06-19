.class final Lcom/google/android/exoplayer2/extractor/i/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/i/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/extractor/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/android/exoplayer2/extractor/j;

.field private final b:Lcom/google/android/exoplayer2/extractor/x;

.field private final c:Lcom/google/android/exoplayer2/extractor/i/b;

.field private final d:Lcom/google/android/exoplayer2/Format;

.field private final e:I

.field private f:J

.field private g:I

.field private h:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/x;Lcom/google/android/exoplayer2/extractor/i/b;Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 215
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->a:Lcom/google/android/exoplayer2/extractor/j;

    .line 216
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->b:Lcom/google/android/exoplayer2/extractor/x;

    .line 217
    iput-object p3, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->c:Lcom/google/android/exoplayer2/extractor/i/b;

    .line 219
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    iget p2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->f:I

    mul-int p1, p1, p2

    div-int/lit8 p1, p1, 0x8

    .line 221
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    if-ne p2, p1, :cond_0

    .line 226
    iget p2, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x8

    .line 227
    iget v0, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    mul-int v0, v0, p1

    div-int/lit8 v0, v0, 0xa

    .line 228
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->e:I

    .line 229
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 1370
    iput-object p4, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 2311
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->f:I

    .line 2322
    iput p2, v0, Lcom/google/android/exoplayer2/Format$a;->g:I

    .line 2381
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->l:I

    .line 234
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->b:I

    .line 2517
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 235
    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    .line 2528
    iput p1, v0, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 2539
    iput p5, v0, Lcom/google/android/exoplayer2/Format$a;->z:I

    .line 238
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->d:Lcom/google/android/exoplayer2/Format;

    return-void

    .line 222
    :cond_0
    new-instance p2, Lcom/google/android/exoplayer2/ParserException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Expected block size: "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; got: "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p3, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p2
.end method


# virtual methods
.method public final a(IJ)V
    .locals 9

    .line 250
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->a:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v8, Lcom/google/android/exoplayer2/extractor/i/d;

    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->c:Lcom/google/android/exoplayer2/extractor/i/b;

    int-to-long v4, p1

    const/4 v3, 0x1

    move-object v1, v8

    move-wide v6, p2

    invoke-direct/range {v1 .. v7}, Lcom/google/android/exoplayer2/extractor/i/d;-><init>(Lcom/google/android/exoplayer2/extractor/i/b;IJJ)V

    invoke-interface {v0, v8}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 252
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->b:Lcom/google/android/exoplayer2/extractor/x;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->d:Lcom/google/android/exoplayer2/Format;

    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void
.end method

.method public final a(J)V
    .locals 0

    .line 243
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->f:J

    const/4 p1, 0x0

    .line 244
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    const-wide/16 p1, 0x0

    .line 245
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/i/a$c;->h:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;J)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    move-wide/from16 v3, p2

    :goto_0
    const/4 v5, 0x1

    cmp-long v6, v3, v1

    if-lez v6, :cond_1

    .line 258
    iget v7, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    iget v8, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->e:I

    if-ge v7, v8, :cond_1

    sub-int/2addr v8, v7

    int-to-long v6, v8

    .line 259
    invoke-static {v6, v7, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v7, v6

    .line 260
    iget-object v6, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->b:Lcom/google/android/exoplayer2/extractor/x;

    move-object/from16 v8, p1

    invoke-interface {v6, v8, v7, v5}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result v5

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    move-wide v3, v1

    goto :goto_0

    .line 264
    :cond_0
    iget v6, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    add-int/2addr v6, v5

    iput v6, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    int-to-long v5, v5

    sub-long/2addr v3, v5

    goto :goto_0

    .line 272
    :cond_1
    iget-object v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->c:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v1, v1, Lcom/google/android/exoplayer2/extractor/i/b;->e:I

    .line 273
    iget v2, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    div-int/2addr v2, v1

    if-lez v2, :cond_2

    .line 275
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->f:J

    iget-wide v7, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->h:J

    const-wide/32 v9, 0xf4240

    iget-object v11, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->c:Lcom/google/android/exoplayer2/extractor/i/b;

    iget v11, v11, Lcom/google/android/exoplayer2/extractor/i/b;->c:I

    int-to-long v11, v11

    .line 277
    invoke-static/range {v7 .. v12}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide v7

    add-long v10, v3, v7

    mul-int v13, v2, v1

    .line 280
    iget v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    sub-int/2addr v1, v13

    .line 281
    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->b:Lcom/google/android/exoplayer2/extractor/x;

    const/4 v12, 0x1

    const/4 v15, 0x0

    move v14, v1

    invoke-interface/range {v9 .. v15}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 283
    iget-wide v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->h:J

    int-to-long v7, v2

    add-long/2addr v3, v7

    iput-wide v3, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->h:J

    .line 284
    iput v1, v0, Lcom/google/android/exoplayer2/extractor/i/a$c;->g:I

    :cond_2
    if-gtz v6, :cond_3

    return v5

    :cond_3
    const/4 v1, 0x0

    return v1
.end method
