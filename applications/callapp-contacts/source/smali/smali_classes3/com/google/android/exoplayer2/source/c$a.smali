.class final Lcom/google/android/exoplayer2/source/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/source/aa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/source/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/google/android/exoplayer2/source/aa;

.field b:Z

.field final synthetic c:Lcom/google/android/exoplayer2/source/c;


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/source/c;Lcom/google/android/exoplayer2/source/aa;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p2, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/aa;

    return-void
.end method


# virtual methods
.method public final a(J)I
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/c;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x3

    return p1

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0, p1, p2}, Lcom/google/android/exoplayer2/source/aa;->a(J)I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I
    .locals 10

    .line 303
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/c;->g()Z

    move-result v0

    const/4 v1, -0x3

    if-eqz v0, :cond_0

    return v1

    .line 306
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Z

    const/4 v2, 0x4

    const/4 v3, -0x4

    if-eqz v0, :cond_1

    .line 1068
    iput v2, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I

    return v3

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/exoplayer2/source/aa;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p3

    const/4 v0, -0x5

    const-wide/high16 v4, -0x8000000000000000L

    if-ne p3, v0, :cond_6

    .line 312
    iget-object p2, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/Format;

    .line 313
    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    if-nez p3, :cond_2

    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    if-eqz p3, :cond_5

    .line 315
    :cond_2
    iget-object p3, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    iget-wide v1, p3, Lcom/google/android/exoplayer2/source/c;->b:J

    const-wide/16 v6, 0x0

    const/4 p3, 0x0

    cmp-long v3, v1, v6

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget v1, p2, Lcom/google/android/exoplayer2/Format;->encoderDelay:I

    .line 316
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    iget-wide v2, v2, Lcom/google/android/exoplayer2/source/c;->c:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_4

    goto :goto_1

    :cond_4
    iget p3, p2, Lcom/google/android/exoplayer2/Format;->encoderPadding:I

    .line 319
    :goto_1
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format;->buildUpon()Lcom/google/android/exoplayer2/Format$a;

    move-result-object p2

    .line 1550
    iput v1, p2, Lcom/google/android/exoplayer2/Format$a;->A:I

    .line 1561
    iput p3, p2, Lcom/google/android/exoplayer2/Format$a;->B:I

    .line 322
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    iput-object p2, p1, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    :cond_5
    return v0

    .line 326
    :cond_6
    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    iget-wide v6, p1, Lcom/google/android/exoplayer2/source/c;->c:J

    cmp-long p1, v6, v4

    if-eqz p1, :cond_9

    if-ne p3, v3, :cond_7

    iget-wide v6, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->e:J

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    iget-wide v8, p1, Lcom/google/android/exoplayer2/source/c;->c:J

    cmp-long p1, v6, v8

    if-gez p1, :cond_8

    :cond_7
    if-ne p3, v1, :cond_9

    iget-object p1, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    .line 329
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/source/c;->d()J

    move-result-wide v0

    cmp-long p1, v0, v4

    if-nez p1, :cond_9

    iget-boolean p1, p2, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->d:Z

    if-nez p1, :cond_9

    .line 331
    :cond_8
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;->a()V

    .line 2068
    iput v2, p2, Lcom/google/android/exoplayer2/decoder/a;->a:I

    const/4 p1, 0x1

    .line 333
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/source/c$a;->b:Z

    return v3

    :cond_9
    return p3
.end method

.method public final a()Z
    .locals 1

    .line 292
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->c:Lcom/google/android/exoplayer2/source/c;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/source/c;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/google/android/exoplayer2/source/c$a;->a:Lcom/google/android/exoplayer2/source/aa;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/source/aa;->b()V

    return-void
.end method
