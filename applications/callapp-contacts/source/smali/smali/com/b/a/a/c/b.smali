.class public final Lcom/b/a/a/c/b;
.super Lcom/b/a/a/c/a;
.source "SourceFile"


# static fields
.field static final synthetic m:Z = true


# instance fields
.field public b:I

.field public c:I

.field public d:J

.field public e:I

.field public f:I

.field public g:I

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:[B

.field private w:I

.field private x:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/b/a/a/c/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 288
    invoke-virtual {p0}, Lcom/b/a/a/c/b;->j()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 290
    iget v0, p0, Lcom/b/a/a/c/b;->e:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/16 v4, 0x10

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v4, v4, 0x1c

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const/16 v2, 0x24

    :cond_1
    add-int/2addr v4, v2

    .line 289
    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v2, 0x6

    .line 292
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 293
    iget v2, p0, Lcom/b/a/a/c/b;->a:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 294
    iget v2, p0, Lcom/b/a/a/c/b;->e:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 295
    iget v2, p0, Lcom/b/a/a/c/b;->w:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 296
    iget-wide v6, p0, Lcom/b/a/a/c/b;->x:J

    invoke-static {v0, v6, v7}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 297
    iget v2, p0, Lcom/b/a/a/c/b;->b:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 298
    iget v2, p0, Lcom/b/a/a/c/b;->c:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 299
    iget v2, p0, Lcom/b/a/a/c/b;->f:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 300
    iget v2, p0, Lcom/b/a/a/c/b;->g:I

    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 302
    iget-object v2, p0, Lcom/b/a/a/c/b;->o:Ljava/lang/String;

    const-string v4, "mlpa"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    iget-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    .line 303
    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_1

    .line 2094
    :cond_2
    iget-wide v6, p0, Lcom/b/a/a/c/b;->d:J

    shl-long v1, v6, v1

    .line 305
    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 308
    :goto_1
    iget v1, p0, Lcom/b/a/a/c/b;->e:I

    if-ne v1, v3, :cond_3

    .line 309
    iget-wide v1, p0, Lcom/b/a/a/c/b;->h:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 310
    iget-wide v1, p0, Lcom/b/a/a/c/b;->i:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 311
    iget-wide v1, p0, Lcom/b/a/a/c/b;->j:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 312
    iget-wide v1, p0, Lcom/b/a/a/c/b;->k:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 315
    :cond_3
    iget v1, p0, Lcom/b/a/a/c/b;->e:I

    if-ne v1, v5, :cond_4

    .line 316
    iget-wide v1, p0, Lcom/b/a/a/c/b;->h:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 317
    iget-wide v1, p0, Lcom/b/a/a/c/b;->i:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 318
    iget-wide v1, p0, Lcom/b/a/a/c/b;->j:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 319
    iget-wide v1, p0, Lcom/b/a/a/c/b;->k:J

    invoke-static {v0, v1, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 320
    iget-object v1, p0, Lcom/b/a/a/c/b;->l:[B

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 322
    :cond_4
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 323
    invoke-virtual {p0, p1}, Lcom/b/a/a/c/b;->a(Ljava/nio/channels/WritableByteChannel;)V

    return-void
.end method

.method public final getSize()J
    .locals 8

    .line 329
    iget v0, p0, Lcom/b/a/a/c/b;->e:I

    const/16 v1, 0x10

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const/16 v3, 0x10

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v3, v3, 0x1c

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    const/16 v2, 0x24

    :cond_1
    add-int/2addr v3, v2

    int-to-long v2, v3

    .line 330
    invoke-virtual {p0}, Lcom/b/a/a/c/b;->k()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 331
    iget-boolean v0, p0, Lcom/b/a/a/c/b;->p:Z

    if-nez v0, :cond_3

    const-wide/16 v4, 0x8

    add-long/2addr v4, v2

    const-wide v6, 0x100000000L

    cmp-long v0, v4, v6

    if-ltz v0, :cond_2

    goto :goto_1

    :cond_2
    const/16 v1, 0x8

    :cond_3
    :goto_1
    int-to-long v0, v1

    add-long/2addr v2, v0

    return-wide v2
.end method

.method public final parse(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/b/a/b;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 p2, 0x1c

    .line 192
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 193
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    const/4 v0, 0x6

    .line 194
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 195
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->a:I

    .line 199
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->e:I

    .line 202
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->w:I

    .line 203
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/c/b;->x:J

    .line 205
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->b:I

    .line 206
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->c:I

    .line 208
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->f:I

    .line 210
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/b/a/a/c/b;->g:I

    .line 212
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/b/a/a/c/b;->d:J

    .line 213
    iget-object p2, p0, Lcom/b/a/a/c/b;->o:Ljava/lang/String;

    const-string v0, "mlpa"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v0, 0x10

    if-nez p2, :cond_0

    .line 214
    iget-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    ushr-long/2addr v1, v0

    iput-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    .line 219
    :cond_0
    iget p2, p0, Lcom/b/a/a/c/b;->e:I

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 220
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 221
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    .line 222
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 223
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/b;->h:J

    .line 224
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/b;->i:J

    .line 225
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/b;->j:J

    .line 226
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/b;->k:J

    .line 228
    :cond_1
    iget p2, p0, Lcom/b/a/a/c/b;->e:I

    const/16 v2, 0x24

    const/4 v3, 0x2

    if-ne p2, v3, :cond_2

    .line 229
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 230
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    .line 231
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 232
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/c/b;->h:J

    .line 233
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/c/b;->i:J

    .line 234
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/c/b;->j:J

    .line 235
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/b/a/a/c/b;->k:J

    const/16 v4, 0x14

    new-array v4, v4, [B

    .line 236
    iput-object v4, p0, Lcom/b/a/a/c/b;->l:[B

    .line 237
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 240
    :cond_2
    iget-object p2, p0, Lcom/b/a/a/c/b;->o:Ljava/lang/String;

    const-string v4, "owma"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-wide/16 v5, 0x1c

    const/4 v7, 0x0

    if-eqz p2, :cond_5

    .line 241
    sget-object p2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sub-long/2addr p3, v5

    .line 243
    iget p2, p0, Lcom/b/a/a/c/b;->e:I

    if-ne p2, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    sub-long/2addr p3, v0

    if-ne p2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    int-to-long v0, v2

    sub-long/2addr p3, v0

    .line 245
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result p2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 246
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    .line 248
    new-instance p1, Lcom/b/a/a/c/b$1;

    invoke-direct {p1, p0, p3, p4, p2}, Lcom/b/a/a/c/b$1;-><init>(Lcom/b/a/a/c/b;JLjava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/b/a/a/c/b;->a(Lcom/b/a/a/b;)V

    return-void

    :cond_5
    sub-long/2addr p3, v5

    .line 281
    iget p2, p0, Lcom/b/a/a/c/b;->e:I

    if-ne p2, v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    int-to-long v0, v0

    sub-long/2addr p3, v0

    if-ne p2, v3, :cond_7

    goto :goto_3

    :cond_7
    const/4 v2, 0x0

    :goto_3
    int-to-long v0, v2

    sub-long/2addr p3, v0

    .line 279
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/b/a/a/c/b;->a(Lcom/googlecode/mp4parser/e;JLcom/b/a/b;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 338
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSampleEntry{bytesPerSample="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    iget-wide v1, p0, Lcom/b/a/a/c/b;->k:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerFrame="

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/b/a/a/c/b;->j:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", bytesPerPacket="

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/b/a/a/c/b;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", samplesPerPacket="

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/b/a/a/c/b;->h:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", packetSize="

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/a/c/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", compressionId="

    .line 344
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/a/c/b;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", soundVersion="

    .line 345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/a/c/b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sampleRate="

    .line 346
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/b/a/a/c/b;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sampleSize="

    .line 347
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/a/c/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channelCount="

    .line 348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/b/a/a/c/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", boxes="

    .line 349
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/b/a/a/c/b;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
