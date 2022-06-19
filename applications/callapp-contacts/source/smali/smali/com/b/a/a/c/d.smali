.class public final Lcom/b/a/a/c/d;
.super Lcom/b/a/a/c/a;
.source "SourceFile"

# interfaces
.implements Lcom/b/a/a/e;


# static fields
.field static final synthetic i:Z = true


# instance fields
.field public b:I

.field public c:I

.field public d:D

.field public e:D

.field public f:I

.field public g:Ljava/lang/String;

.field public h:I

.field private j:[J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-string v0, "avc1"

    .line 83
    invoke-direct {p0, v0}, Lcom/b/a/a/c/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 74
    iput-wide v0, p0, Lcom/b/a/a/c/d;->d:D

    .line 75
    iput-wide v0, p0, Lcom/b/a/a/c/d;->e:D

    const/4 v0, 0x1

    .line 76
    iput v0, p0, Lcom/b/a/a/c/d;->f:I

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    const/16 v0, 0x18

    .line 78
    iput v0, p0, Lcom/b/a/a/c/d;->h:I

    const/4 v0, 0x3

    new-array v0, v0, [J

    .line 80
    iput-object v0, p0, Lcom/b/a/a/c/d;->j:[J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 87
    invoke-direct {p0, p1}, Lcom/b/a/a/c/a;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x4052000000000000L    # 72.0

    .line 74
    iput-wide v0, p0, Lcom/b/a/a/c/d;->d:D

    .line 75
    iput-wide v0, p0, Lcom/b/a/a/c/d;->e:D

    const/4 p1, 0x1

    .line 76
    iput p1, p0, Lcom/b/a/a/c/d;->f:I

    const-string p1, ""

    .line 77
    iput-object p1, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    const/16 p1, 0x18

    .line 78
    iput p1, p0, Lcom/b/a/a/c/d;->h:I

    const/4 p1, 0x3

    new-array p1, p1, [J

    .line 80
    iput-object p1, p0, Lcom/b/a/a/c/d;->j:[J

    return-void
.end method


# virtual methods
.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    invoke-virtual {p0}, Lcom/b/a/a/c/d;->j()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    const/16 v0, 0x4e

    .line 237
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x6

    .line 238
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 239
    iget v1, p0, Lcom/b/a/a/c/d;->a:I

    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    const/4 v1, 0x0

    .line 240
    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 241
    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 242
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    aget-wide v3, v2, v1

    invoke-static {v0, v3, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 243
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    const/4 v3, 0x1

    aget-wide v3, v2, v3

    invoke-static {v0, v3, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 244
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    const/4 v3, 0x2

    aget-wide v3, v2, v3

    invoke-static {v0, v3, v4}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 1095
    iget v2, p0, Lcom/b/a/a/c/d;->b:I

    .line 246
    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1103
    iget v2, p0, Lcom/b/a/a/c/d;->c:I

    .line 247
    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1111
    iget-wide v2, p0, Lcom/b/a/a/c/d;->d:D

    .line 249
    invoke-static {v0, v2, v3}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;D)V

    .line 1119
    iget-wide v2, p0, Lcom/b/a/a/c/d;->e:D

    .line 250
    invoke-static {v0, v2, v3}, Lcom/b/a/f;->a(Ljava/nio/ByteBuffer;D)V

    const-wide/16 v2, 0x0

    .line 253
    invoke-static {v0, v2, v3}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;J)V

    .line 1127
    iget v2, p0, Lcom/b/a/a/c/d;->f:I

    .line 254
    invoke-static {v0, v2}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 1135
    iget-object v2, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    .line 255
    invoke-static {v2}, Lcom/b/a/h;->b(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/b/a/f;->c(Ljava/nio/ByteBuffer;I)V

    .line 2135
    iget-object v2, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    .line 256
    invoke-static {v2}, Lcom/b/a/h;->a(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 3135
    iget-object v2, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    .line 257
    invoke-static {v2}, Lcom/b/a/h;->b(Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/16 v3, 0x1f

    if-lt v2, v3, :cond_0

    .line 3143
    iget v1, p0, Lcom/b/a/a/c/d;->h:I

    .line 262
    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    const v1, 0xffff

    .line 263
    invoke-static {v0, v1}, Lcom/b/a/f;->b(Ljava/nio/ByteBuffer;I)V

    .line 265
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 267
    invoke-virtual {p0, p1}, Lcom/b/a/a/c/d;->a(Ljava/nio/channels/WritableByteChannel;)V

    return-void

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 260
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_0
.end method

.method public final getSize()J
    .locals 7

    .line 274
    invoke-virtual {p0}, Lcom/b/a/a/c/d;->k()J

    move-result-wide v0

    const-wide/16 v2, 0x4e

    add-long/2addr v0, v2

    .line 276
    iget-boolean v2, p0, Lcom/b/a/a/c/d;->p:Z

    if-nez v2, :cond_1

    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide v4, 0x100000000L

    cmp-long v6, v2, v4

    if-ltz v6, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v2, 0x10

    :goto_1
    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final parse(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/b/a/b;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->b()J

    move-result-wide v0

    add-long/2addr v0, p3

    const/16 p2, 0x4e

    .line 153
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 154
    invoke-interface {p1, p2}, Lcom/googlecode/mp4parser/e;->a(Ljava/nio/ByteBuffer;)I

    const/4 v2, 0x6

    .line 155
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 156
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/c/d;->a:I

    .line 158
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    .line 159
    sget-boolean v4, Lcom/b/a/a/c/d;->i:Z

    const-string v5, "reserved byte not 0"

    const-wide/16 v6, 0x0

    if-nez v4, :cond_1

    cmp-long v8, v6, v2

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 160
    :cond_1
    :goto_0
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    int-to-long v2, v2

    if-nez v4, :cond_3

    cmp-long v8, v6, v2

    if-nez v8, :cond_2

    goto :goto_1

    .line 161
    :cond_2
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 162
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    const/4 v3, 0x0

    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 163
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    const/4 v3, 0x1

    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 164
    iget-object v2, p0, Lcom/b/a/a/c/d;->j:[J

    const/4 v3, 0x2

    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v8

    aput-wide v8, v2, v3

    .line 165
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/c/d;->b:I

    .line 166
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/c/d;->c:I

    .line 167
    invoke-static {p2}, Lcom/b/a/e;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/d;->d:D

    .line 168
    invoke-static {p2}, Lcom/b/a/e;->e(Ljava/nio/ByteBuffer;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/b/a/a/c/d;->e:D

    .line 169
    invoke-static {p2}, Lcom/b/a/e;->a(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    if-nez v4, :cond_5

    cmp-long v8, v6, v2

    if-nez v8, :cond_4

    goto :goto_2

    .line 170
    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1, v5}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    .line 171
    :cond_5
    :goto_2
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/c/d;->f:I

    .line 1068
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    invoke-static {v2}, Lcom/b/a/e;->a(B)I

    move-result v2

    const/16 v3, 0x1f

    if-le v2, v3, :cond_6

    const/16 v2, 0x1f

    .line 177
    :cond_6
    new-array v5, v2, [B

    .line 178
    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 179
    invoke-static {v5}, Lcom/b/a/h;->a([B)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/b/a/a/c/d;->g:Ljava/lang/String;

    if-ge v2, v3, :cond_7

    sub-int/2addr v3, v2

    .line 181
    new-array v2, v3, [B

    .line 182
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 185
    :cond_7
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v2

    iput v2, p0, Lcom/b/a/a/c/d;->h:I

    .line 186
    invoke-static {p2}, Lcom/b/a/e;->c(Ljava/nio/ByteBuffer;)I

    move-result p2

    int-to-long v2, p2

    if-nez v4, :cond_9

    const-wide/32 v4, 0xffff

    cmp-long p2, v4, v2

    if-nez p2, :cond_8

    goto :goto_3

    .line 187
    :cond_8
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 190
    :cond_9
    :goto_3
    new-instance p2, Lcom/b/a/a/c/d$1;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/b/a/a/c/d$1;-><init>(Lcom/b/a/a/c/d;JLcom/googlecode/mp4parser/e;)V

    const-wide/16 v0, 0x4e

    sub-long/2addr p3, v0

    .line 229
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/b/a/a/c/d;->a(Lcom/googlecode/mp4parser/e;JLcom/b/a/b;)V

    return-void
.end method
