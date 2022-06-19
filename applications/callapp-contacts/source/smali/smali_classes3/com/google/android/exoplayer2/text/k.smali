.class public final Lcom/google/android/exoplayer2/text/k;
.super Lcom/google/android/exoplayer2/e;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Lcom/google/android/exoplayer2/text/j;

.field private final c:Lcom/google/android/exoplayer2/text/g;

.field private final d:Lcom/google/android/exoplayer2/q;

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lcom/google/android/exoplayer2/Format;

.field private j:Lcom/google/android/exoplayer2/text/f;

.field private k:Lcom/google/android/exoplayer2/text/h;

.field private l:Lcom/google/android/exoplayer2/text/i;

.field private m:Lcom/google/android/exoplayer2/text/i;

.field private n:I

.field private o:J


# direct methods
.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;)V
    .locals 1

    .line 106
    sget-object v0, Lcom/google/android/exoplayer2/text/g;->a:Lcom/google/android/exoplayer2/text/g;

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/exoplayer2/text/k;-><init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/exoplayer2/text/j;Landroid/os/Looper;Lcom/google/android/exoplayer2/text/g;)V
    .locals 1

    const/4 v0, 0x3

    .line 120
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/e;-><init>(I)V

    .line 121
    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/j;

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->b:Lcom/google/android/exoplayer2/text/j;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 123
    :cond_0
    invoke-static {p2, p0}, Lcom/google/android/exoplayer2/util/af;->a(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->a:Landroid/os/Handler;

    .line 124
    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->c:Lcom/google/android/exoplayer2/text/g;

    .line 125
    new-instance p1, Lcom/google/android/exoplayer2/q;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/q;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->d:Lcom/google/android/exoplayer2/q;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 126
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->o:J

    return-void
.end method

.method private A()V
    .locals 2

    const/4 v0, 0x0

    .line 325
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->k:Lcom/google/android/exoplayer2/text/h;

    const/4 v1, -0x1

    .line 326
    iput v1, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    .line 327
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_0

    .line 328
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->f()V

    .line 329
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;

    if-eqz v1, :cond_1

    .line 332
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/text/i;->f()V

    .line 333
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;

    :cond_1
    return-void
.end method

.method private B()V
    .locals 1

    .line 338
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->A()V

    .line 339
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {v0}, Lcom/google/android/exoplayer2/text/f;->d()V

    const/4 v0, 0x0

    .line 340
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    const/4 v0, 0x0

    .line 341
    iput v0, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    return-void
.end method

.method private C()V
    .locals 2

    const/4 v0, 0x1

    .line 345
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/text/k;->g:Z

    .line 346
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->c:Lcom/google/android/exoplayer2/text/g;

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->i:Lcom/google/android/exoplayer2/Format;

    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/exoplayer2/Format;

    invoke-interface {v0, v1}, Lcom/google/android/exoplayer2/text/g;->b(Lcom/google/android/exoplayer2/Format;)Lcom/google/android/exoplayer2/text/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    return-void
.end method

.method private D()V
    .locals 0

    .line 350
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->B()V

    .line 351
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->C()V

    return-void
.end method

.method private E()J
    .locals 4

    .line 355
    iget v0, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    const-wide v1, 0x7fffffffffffffffL

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    return-wide v1

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget v0, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/text/i;->b()I

    move-result v3

    if-lt v0, v3, :cond_1

    return-wide v1

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    iget v1, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/text/i;->b_(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private a(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V
    .locals 2

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Subtitle decoding failed. streamFormat="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/exoplayer2/text/k;->i:Lcom/google/android/exoplayer2/Format;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TextRenderer"

    invoke-static {v1, v0, p1}, Lcom/google/android/exoplayer2/util/n;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->a(Ljava/util/List;)V

    .line 401
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->D()V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 365
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->a:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 366
    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 368
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/exoplayer2/text/b;",
            ">;)V"
        }
    .end annotation

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->b:Lcom/google/android/exoplayer2/text/j;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/j;->a(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/Format;)I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/google/android/exoplayer2/text/k;->c:Lcom/google/android/exoplayer2/text/g;

    invoke-interface {v0, p1}, Lcom/google/android/exoplayer2/text/g;->a(Lcom/google/android/exoplayer2/Format;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 139
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->exoMediaCryptoType:Ljava/lang/Class;

    if-nez p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v1

    or-int/2addr p1, v1

    return p1

    .line 140
    :cond_1
    iget-object p1, p1, Lcom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/q;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final a(JJ)V
    .locals 8

    .line 188
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/k;->j()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_0

    iget-wide v0, p0, Lcom/google/android/exoplayer2/text/k;->o:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p3, v0, v2

    if-eqz p3, :cond_0

    cmp-long p3, p1, v0

    if-ltz p3, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->A()V

    .line 192
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->f:Z

    .line 195
    :cond_0
    iget-boolean p3, p0, Lcom/google/android/exoplayer2/text/k;->f:Z

    if-eqz p3, :cond_1

    return-void

    .line 199
    :cond_1
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;

    if-nez p3, :cond_2

    .line 200
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3, p1, p2}, Lcom/google/android/exoplayer2/text/f;->a(J)V

    .line 202
    :try_start_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p3}, Lcom/google/android/exoplayer2/text/f;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/text/i;

    iput-object p3, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;
    :try_end_0
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 204
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->a(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void

    .line 209
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/k;->C_()I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_3

    return-void

    .line 214
    :cond_3
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 217
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->E()J

    move-result-wide v2

    const/4 p3, 0x0

    :goto_1
    cmp-long v4, v2, p1

    if-gtz v4, :cond_5

    .line 219
    iget p3, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    add-int/2addr p3, p4

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    .line 220
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->E()J

    move-result-wide v2

    const/4 p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p3, 0x0

    .line 224
    :cond_5
    iget-object v2, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;

    const/4 v3, 0x0

    if-eqz v2, :cond_9

    .line 226
    invoke-virtual {v2}, Lcom/google/android/exoplayer2/text/i;->c()Z

    move-result v4

    if-eqz v4, :cond_7

    if-nez p3, :cond_9

    .line 227
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->E()J

    move-result-wide v4

    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_9

    .line 228
    iget v2, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    if-ne v2, v0, :cond_6

    .line 229
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->D()V

    goto :goto_2

    .line 231
    :cond_6
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->A()V

    .line 232
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->f:Z

    goto :goto_2

    .line 235
    :cond_7
    iget-wide v4, v2, Lcom/google/android/exoplayer2/text/i;->b:J

    cmp-long v6, v4, p1

    if-gtz v6, :cond_9

    .line 237
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    if-eqz p3, :cond_8

    .line 238
    invoke-virtual {p3}, Lcom/google/android/exoplayer2/text/i;->f()V

    .line 240
    :cond_8
    invoke-virtual {v2, p1, p2}, Lcom/google/android/exoplayer2/text/i;->a(J)I

    move-result p3

    iput p3, p0, Lcom/google/android/exoplayer2/text/k;->n:I

    .line 241
    iput-object v2, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    .line 242
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->m:Lcom/google/android/exoplayer2/text/i;

    const/4 p3, 0x1

    :cond_9
    :goto_2
    if-eqz p3, :cond_a

    .line 249
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    invoke-static {p3}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    iget-object p3, p0, Lcom/google/android/exoplayer2/text/k;->l:Lcom/google/android/exoplayer2/text/i;

    invoke-virtual {p3, p1, p2}, Lcom/google/android/exoplayer2/text/i;->b(J)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->a(Ljava/util/List;)V

    .line 254
    :cond_a
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    if-ne p1, v0, :cond_b

    return-void

    .line 259
    :cond_b
    :goto_3
    :try_start_1
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->e:Z

    if-nez p1, :cond_13

    .line 260
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->k:Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_d

    .line 262
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/text/f;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/h;

    if-nez p1, :cond_c

    return-void

    .line 266
    :cond_c
    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->k:Lcom/google/android/exoplayer2/text/h;

    .line 268
    :cond_d
    iget p2, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    if-ne p2, p4, :cond_e

    const/4 p2, 0x4

    .line 4068
    iput p2, p1, Lcom/google/android/exoplayer2/decoder/a;->a:I

    .line 270
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/f;->a(Ljava/lang/Object;)V

    .line 271
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->k:Lcom/google/android/exoplayer2/text/h;

    .line 272
    iput v0, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    return-void

    .line 276
    :cond_e
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->d:Lcom/google/android/exoplayer2/q;

    invoke-virtual {p0, p2, p1, v1}, Lcom/google/android/exoplayer2/text/k;->a(Lcom/google/android/exoplayer2/q;Lcom/google/android/exoplayer2/decoder/DecoderInputBuffer;Z)I

    move-result p2

    const/4 p3, -0x4

    if-ne p2, p3, :cond_12

    .line 278
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/h;->c()Z

    move-result p2

    if-eqz p2, :cond_f

    .line 279
    iput-boolean p4, p0, Lcom/google/android/exoplayer2/text/k;->e:Z

    .line 280
    iput-boolean v1, p0, Lcom/google/android/exoplayer2/text/k;->g:Z

    goto :goto_5

    .line 282
    :cond_f
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->d:Lcom/google/android/exoplayer2/q;

    iget-object p2, p2, Lcom/google/android/exoplayer2/q;->b:Lcom/google/android/exoplayer2/Format;

    if-nez p2, :cond_10

    return-void

    .line 287
    :cond_10
    iget-wide p2, p2, Lcom/google/android/exoplayer2/Format;->subsampleOffsetUs:J

    iput-wide p2, p1, Lcom/google/android/exoplayer2/text/h;->g:J

    .line 288
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/h;->h()V

    .line 289
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->g:Z

    invoke-virtual {p1}, Lcom/google/android/exoplayer2/text/h;->d()Z

    move-result p3

    if-nez p3, :cond_11

    const/4 p3, 0x1

    goto :goto_4

    :cond_11
    const/4 p3, 0x0

    :goto_4
    and-int/2addr p2, p3

    iput-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->g:Z

    .line 291
    :goto_5
    iget-boolean p2, p0, Lcom/google/android/exoplayer2/text/k;->g:Z

    if-nez p2, :cond_b

    .line 292
    iget-object p2, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p2, p1}, Lcom/google/android/exoplayer2/text/f;->a(Ljava/lang/Object;)V

    .line 293
    iput-object v3, p0, Lcom/google/android/exoplayer2/text/k;->k:Lcom/google/android/exoplayer2/text/h;
    :try_end_1
    .catch Lcom/google/android/exoplayer2/text/SubtitleDecoderException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_12
    const/4 p1, -0x3

    if-ne p2, p1, :cond_b

    :cond_13
    return-void

    :catch_1
    move-exception p1

    .line 300
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->a(Lcom/google/android/exoplayer2/text/SubtitleDecoderException;)V

    return-void
.end method

.method public final a(JZ)V
    .locals 0

    .line 3373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->a(Ljava/util/List;)V

    const/4 p1, 0x0

    .line 175
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->e:Z

    .line 176
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/text/k;->f:Z

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 177
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->o:J

    .line 178
    iget p1, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    if-eqz p1, :cond_0

    .line 179
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->D()V

    return-void

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->A()V

    .line 182
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    invoke-static {p1}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/text/f;

    invoke-interface {p1}, Lcom/google/android/exoplayer2/text/f;->c()V

    return-void
.end method

.method public final a([Lcom/google/android/exoplayer2/Format;JJ)V
    .locals 0

    const/4 p2, 0x0

    .line 164
    aget-object p1, p1, p2

    iput-object p1, p0, Lcom/google/android/exoplayer2/text/k;->i:Lcom/google/android/exoplayer2/Format;

    .line 165
    iget-object p1, p0, Lcom/google/android/exoplayer2/text/k;->j:Lcom/google/android/exoplayer2/text/f;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 166
    iput p1, p0, Lcom/google/android/exoplayer2/text/k;->h:I

    return-void

    .line 168
    :cond_0
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->C()V

    return-void
.end method

.method public final c(J)V
    .locals 1

    .line 158
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/text/k;->j()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 159
    iput-wide p1, p0, Lcom/google/android/exoplayer2/text/k;->o:J

    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)Z
    .locals 1

    .line 379
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 381
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/text/k;->b(Ljava/util/List;)V

    const/4 p1, 0x1

    return p1

    .line 384
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final r()V
    .locals 2

    const/4 v0, 0x0

    .line 306
    iput-object v0, p0, Lcom/google/android/exoplayer2/text/k;->i:Lcom/google/android/exoplayer2/Format;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 307
    iput-wide v0, p0, Lcom/google/android/exoplayer2/text/k;->o:J

    .line 4373
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/text/k;->a(Ljava/util/List;)V

    .line 309
    invoke-direct {p0}, Lcom/google/android/exoplayer2/text/k;->B()V

    return-void
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    const-string v0, "TextRenderer"

    return-object v0
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final z()Z
    .locals 1

    .line 314
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/text/k;->f:Z

    return v0
.end method
