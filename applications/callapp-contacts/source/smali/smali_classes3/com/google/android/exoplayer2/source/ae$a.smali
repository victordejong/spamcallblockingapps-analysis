.class final Lcom/google/android/exoplayer2/source/ae$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/ae;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field a:I

.field final synthetic b:Lcom/google/android/exoplayer2/source/ae;

.field private c:Z


# direct methods
.method private constructor <init>(Lcom/google/android/exoplayer2/source/ae;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/source/ae;Lcom/google/android/exoplayer2/source/ae$1;)V
    .locals 0

    .line 323
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/source/ae$a;-><init>(Lcom/google/android/exoplayer2/source/ae;)V

    return-void
.end method

.method private c()V
    .locals 5

    .line 390
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->c:Z

    if-nez v0, :cond_0

    .line 391
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    .line 2046
    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ae;->a:Lcom/google/android/exoplayer2/source/s$a;

    .line 391
    iget-object v1, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object v1, v1, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    iget-object v1, v1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    .line 392
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/q;->g(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object v2, v2, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    const-wide/16 v3, 0x0

    .line 391
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/exoplayer2/source/s$a;->a(ILcom/google/android/exoplayer2/Format;J)V

    const/4 v0, 0x1

    .line 397
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->c:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 3

    .line 381
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ae$a;->c()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 382
    iget p1, p0, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    .line 383
    iput p2, p0, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 5

    .line 353
    invoke-direct {p0}, Lcom/google/android/exoplayer2/source/ae$a;->c()V

    .line 354
    iget v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x4

    if-ne v0, v2, :cond_0

    .line 355
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a(I)V

    return v3

    :cond_0
    const/4 v4, 0x1

    if-nez p3, :cond_5

    if-nez v0, :cond_1

    goto :goto_1

    .line 361
    :cond_1
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-boolean p1, p1, Lcom/google/android/exoplayer2/source/ae;->e:Z

    if-eqz p1, :cond_4

    .line 362
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object p1, p1, Lcom/google/android/exoplayer2/source/ae;->f:[B

    if-eqz p1, :cond_3

    .line 363
    invoke-virtual {p2, v4}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a(I)V

    const-wide/16 v0, 0x0

    .line 364
    iput-wide v0, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    .line 365
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->f()Z

    move-result p1

    if-eqz p1, :cond_2

    return v3

    .line 368
    :cond_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget p1, p1, Lcom/google/android/exoplayer2/source/ae;->g:I

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c(I)V

    .line 369
    iget-object p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->c:Ljava/nio/ByteBuffer;

    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/ae;->f:[B

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget v0, v0, Lcom/google/android/exoplayer2/source/ae;->g:I

    invoke-virtual {p1, p2, p3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    goto :goto_0

    .line 371
    :cond_3
    invoke-virtual {p2, v1}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a(I)V

    .line 373
    :goto_0
    iput v2, p0, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    return v3

    :cond_4
    const/4 p1, -0x3

    return p1

    .line 358
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object p2, p2, Lcom/google/android/exoplayer2/source/ae;->c:Lcom/google/android/exoplayer2/Format;

    iput-object p2, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    .line 359
    iput v4, p0, Lcom/google/android/exoplayer2/source/ae$a;->a:I

    const/4 p1, -0x5

    return p1
.end method

.method public final a()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ae;->e:Z

    return v0
.end method

.method public final b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-boolean v0, v0, Lcom/google/android/exoplayer2/source/ae;->d:Z

    if-nez v0, :cond_0

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/ae$a;->b:Lcom/google/android/exoplayer2/source/ae;

    iget-object v0, v0, Lcom/google/android/exoplayer2/source/ae;->b:Lcom/google/android/exoplayer2/upstream/Loader;

    const/high16 v1, -0x80000000

    .line 1307
    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/upstream/Loader;->a(I)V

    :cond_0
    return-void
.end method
