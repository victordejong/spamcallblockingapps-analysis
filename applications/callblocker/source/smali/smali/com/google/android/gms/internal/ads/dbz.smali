.class final Lcom/google/android/gms/internal/ads/dbz;
.super Lcom/google/android/gms/internal/ads/dby;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final e:Ljava/io/InputStream;

.field private final f:[B

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Lcom/google/android/gms/internal/ads/dcc;


# direct methods
.method private constructor <init>(Ljava/io/InputStream;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dby;-><init>(Lcom/google/android/gms/internal/ads/dbx;)V

    .line 2
    const v0, 0x7fffffff

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    .line 3
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->m:Lcom/google/android/gms/internal/ads/dcc;

    .line 4
    const-string/jumbo v0, "input"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/dcz;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    .line 6
    new-array v0, p2, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 7
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 8
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 9
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 10
    return-void
.end method

.method synthetic constructor <init>(Ljava/io/InputStream;ILcom/google/android/gms/internal/ads/dbx;)V
    .locals 1

    .prologue
    .line 350
    const/16 v0, 0x1000

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dbz;-><init>(Ljava/io/InputStream;I)V

    return-void
.end method

.method private final A()B
    .locals 3

    .prologue
    .line 248
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-ne v0, v1, :cond_0

    .line 249
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    aget-byte v0, v0, v1

    return v0
.end method

.method private final a(IZ)[B
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dbz;->h(I)[B

    move-result-object v0

    .line 252
    if-eqz v0, :cond_0

    .line 268
    :goto_0
    return-object v0

    .line 254
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 255
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v2

    .line 256
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 257
    iput v5, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 258
    iput v5, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 259
    sub-int v2, p1, v0

    .line 260
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dbz;->i(I)Ljava/util/List;

    move-result-object v3

    .line 261
    new-array v2, p1, [B

    .line 262
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    invoke-static {v4, v1, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 264
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 265
    array-length v4, v0

    invoke-static {v0, v5, v2, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 266
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 267
    goto :goto_1

    :cond_1
    move-object v0, v2

    .line 268
    goto :goto_0
.end method

.method private final f(I)V
    .locals 2

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/dbz;->g(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 220
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->c:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    if-le p1, v0, :cond_0

    .line 221
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->g()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 222
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 223
    :cond_1
    return-void
.end method

.method private final g(I)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 224
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-gt v1, v2, :cond_1

    .line 225
    new-instance v0, Ljava/lang/IllegalStateException;

    const/16 v1, 0x4d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "refillBuffer() called when "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " bytes were already available in buffer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 226
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->c:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v1, v2

    if-le p1, v1, :cond_3

    .line 247
    :cond_2
    :goto_0
    return v0

    .line 228
    :cond_3
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v1, v2

    add-int/2addr v1, p1

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    if-gt v1, v2, :cond_2

    .line 230
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 231
    if-lez v1, :cond_5

    .line 232
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-le v2, v1, :cond_4

    .line 233
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v4, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v4, v1

    invoke-static {v2, v1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 234
    :cond_4
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 235
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int v1, v2, v1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 236
    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 237
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    array-length v4, v4

    iget v5, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/google/android/gms/internal/ads/dbz;->c:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v5, v6

    .line 238
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 239
    invoke-virtual {v1, v2, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 240
    if-eqz v1, :cond_6

    const/4 v2, -0x1

    if-lt v1, v2, :cond_6

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    array-length v2, v2

    if-le v1, v2, :cond_7

    .line 241
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    .line 242
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x5b

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "#read(byte[]) returned invalid result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\nThe InputStream implementation is buggy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_7
    if-lez v1, :cond_2

    .line 244
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 245
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->z()V

    .line 246
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-lt v1, p1, :cond_0

    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method private final h(I)[B
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 269
    if-nez p1, :cond_0

    .line 270
    sget-object v0, Lcom/google/android/gms/internal/ads/dcz;->b:[B

    .line 296
    :goto_0
    return-object v0

    .line 271
    :cond_0
    if-gez p1, :cond_1

    .line 272
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 273
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 274
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->c:I

    sub-int v1, v0, v1

    if-lez v1, :cond_2

    .line 275
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->g()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 276
    :cond_2
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    if-le v0, v1, :cond_3

    .line 277
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbz;->j(I)V

    .line 278
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 279
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    .line 280
    sub-int v1, p1, v0

    .line 281
    const/16 v2, 0x1000

    if-lt v1, v2, :cond_4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v2

    if-gt v1, v2, :cond_7

    .line 282
    :cond_4
    new-array v1, p1, [B

    .line 283
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    invoke-static {v2, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 284
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 285
    iput v4, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 286
    iput v4, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 288
    :goto_1
    array-length v2, v1

    if-ge v0, v2, :cond_6

    .line 289
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    sub-int v3, p1, v0

    invoke-virtual {v2, v1, v0, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    .line 290
    const/4 v3, -0x1

    if-ne v2, v3, :cond_5

    .line 291
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 292
    :cond_5
    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 293
    add-int/2addr v0, v2

    .line 294
    goto :goto_1

    :cond_6
    move-object v0, v1

    .line 295
    goto :goto_0

    .line 296
    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private final i(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    :goto_0
    if-lez p1, :cond_2

    .line 299
    const/16 v0, 0x1000

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v2, v0, [B

    .line 300
    const/4 v0, 0x0

    .line 301
    :goto_1
    array-length v3, v2

    if-ge v0, v3, :cond_1

    .line 302
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    array-length v4, v2

    sub-int/2addr v4, v0

    invoke-virtual {v3, v2, v0, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    .line 303
    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 304
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 305
    :cond_0
    iget v4, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 306
    add-int/2addr v0, v3

    .line 307
    goto :goto_1

    .line 308
    :cond_1
    array-length v0, v2

    sub-int/2addr p1, v0

    .line 309
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 311
    :cond_2
    return-object v1
.end method

.method private final j(I)V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 312
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    if-ltz p1, :cond_1

    .line 313
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    if-gez p1, :cond_2

    .line 316
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 317
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    if-le v0, v1, :cond_3

    .line 318
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbz;->j(I)V

    .line 319
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 321
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 322
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    .line 323
    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 324
    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    move v1, v0

    .line 325
    :goto_1
    if-ge v1, p1, :cond_6

    .line 326
    sub-int v0, p1, v1

    .line 327
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    int-to-long v4, v0

    invoke-virtual {v2, v4, v5}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    .line 328
    cmp-long v4, v2, v8

    if-ltz v4, :cond_4

    int-to-long v4, v0

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 329
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dbz;->e:Ljava/io/InputStream;

    .line 330
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x5c

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#skip returned invalid result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\nThe InputStream implementation is buggy."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    :catchall_0
    move-exception v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 338
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->z()V

    .line 339
    throw v0

    .line 331
    :cond_5
    cmp-long v0, v2, v8

    if-eqz v0, :cond_6

    .line 332
    long-to-int v0, v2

    add-int/2addr v0, v1

    move v1, v0

    .line 333
    goto :goto_1

    .line 334
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 335
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->z()V

    .line 340
    if-ge v1, p1, :cond_0

    .line 341
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v1

    .line 342
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 343
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 344
    :goto_2
    sub-int v1, p1, v0

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-le v1, v2, :cond_7

    .line 345
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v0, v1

    .line 346
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 347
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    goto :goto_2

    .line 348
    :cond_7
    sub-int v0, p1, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    goto/16 :goto_0
.end method

.method private final v()I
    .locals 5

    .prologue
    .line 128
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 129
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-eq v1, v0, :cond_5

    .line 130
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 131
    add-int/lit8 v2, v0, 0x1

    aget-byte v0, v3, v0

    if-ltz v0, :cond_0

    .line 132
    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 147
    :goto_0
    return v0

    .line 134
    :cond_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v1, v2

    const/16 v4, 0x9

    if-lt v1, v4, :cond_5

    .line 135
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x7

    xor-int/2addr v0, v2

    if-gez v0, :cond_2

    .line 136
    xor-int/lit8 v0, v0, -0x80

    .line 145
    :cond_1
    :goto_1
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    goto :goto_0

    .line 137
    :cond_2
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 138
    xor-int/lit16 v0, v0, 0x3f80

    move v1, v2

    goto :goto_1

    .line 139
    :cond_3
    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    shl-int/lit8 v2, v2, 0x15

    xor-int/2addr v0, v2

    if-gez v0, :cond_4

    .line 140
    const v2, -0x1fc080

    xor-int/2addr v0, v2

    goto :goto_1

    .line 141
    :cond_4
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    .line 142
    shl-int/lit8 v4, v1, 0x1c

    xor-int/2addr v0, v4

    .line 143
    const v4, 0xfe03f80

    xor-int/2addr v0, v4

    .line 144
    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v3, v1

    if-gez v1, :cond_6

    add-int/lit8 v1, v2, 0x1

    aget-byte v2, v3, v2

    if-gez v2, :cond_1

    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dby;->s()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0

    :cond_6
    move v1, v2

    goto :goto_1
.end method

.method private final w()J
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 148
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 149
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-eq v1, v0, :cond_9

    .line 150
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 151
    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    if-ltz v0, :cond_0

    .line 152
    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 153
    int-to-long v0, v0

    .line 175
    :goto_0
    return-wide v0

    .line 154
    :cond_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v2, v1

    const/16 v3, 0x9

    if-lt v2, v3, :cond_9

    .line 155
    add-int/lit8 v2, v1, 0x1

    aget-byte v1, v4, v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 156
    xor-int/lit8 v0, v0, -0x80

    int-to-long v0, v0

    .line 173
    :cond_1
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    goto :goto_0

    .line 157
    :cond_2
    add-int/lit8 v3, v2, 0x1

    aget-byte v1, v4, v2

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3

    .line 158
    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    move v2, v3

    goto :goto_1

    .line 159
    :cond_3
    add-int/lit8 v2, v3, 0x1

    aget-byte v1, v4, v3

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4

    .line 160
    const v1, -0x1fc080

    xor-int/2addr v0, v1

    int-to-long v0, v0

    goto :goto_1

    .line 161
    :cond_4
    int-to-long v0, v0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x1c

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_5

    .line 162
    const-wide/32 v4, 0xfe03f80

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    .line 163
    :cond_5
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x23

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_6

    .line 164
    const-wide v4, -0x7f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    .line 165
    :cond_6
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x2a

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    cmp-long v2, v0, v8

    if-ltz v2, :cond_7

    .line 166
    const-wide v4, 0x3f80fe03f80L

    xor-long/2addr v0, v4

    move v2, v3

    goto :goto_1

    .line 167
    :cond_7
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v6, v3

    const/16 v3, 0x31

    shl-long/2addr v6, v3

    xor-long/2addr v0, v6

    cmp-long v3, v0, v8

    if-gez v3, :cond_8

    .line 168
    const-wide v4, -0x1fc07f01fc080L

    xor-long/2addr v0, v4

    goto :goto_1

    .line 169
    :cond_8
    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v4, v2

    int-to-long v6, v2

    const/16 v2, 0x38

    shl-long/2addr v6, v2

    xor-long/2addr v0, v6

    .line 170
    const-wide v6, 0xfe03f80fe03f80L

    xor-long/2addr v0, v6

    .line 171
    cmp-long v2, v0, v8

    if-gez v2, :cond_a

    .line 172
    add-int/lit8 v2, v3, 0x1

    aget-byte v3, v4, v3

    int-to-long v4, v3

    cmp-long v3, v4, v8

    if-gez v3, :cond_1

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dby;->s()J

    move-result-wide v0

    goto/16 :goto_0

    :cond_a
    move v2, v3

    goto/16 :goto_1
.end method

.method private final x()I
    .locals 4

    .prologue
    const/4 v2, 0x4

    .line 184
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 185
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v1, v0

    if-ge v1, v2, :cond_0

    .line 186
    invoke-direct {p0, v2}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 187
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 188
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 189
    add-int/lit8 v2, v0, 0x4

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 190
    aget-byte v2, v1, v0

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v0, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x3

    aget-byte v0, v1, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0
.end method

.method private final y()J
    .locals 10

    .prologue
    const/16 v6, 0x8

    const-wide/16 v8, 0xff

    .line 191
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 192
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v1, v0

    if-ge v1, v6, :cond_0

    .line 193
    invoke-direct {p0, v6}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 194
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 195
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 196
    add-int/lit8 v2, v0, 0x8

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 197
    aget-byte v2, v1, v0

    int-to-long v2, v2

    and-long/2addr v2, v8

    add-int/lit8 v4, v0, 0x1

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x2

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x10

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x3

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x18

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x4

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x20

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x5

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x28

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v4, v0, 0x6

    aget-byte v4, v1, v4

    int-to-long v4, v4

    and-long/2addr v4, v8

    const/16 v6, 0x30

    shl-long/2addr v4, v6

    or-long/2addr v2, v4

    add-int/lit8 v0, v0, 0x7

    aget-byte v0, v1, v0

    int-to-long v0, v0

    and-long/2addr v0, v8

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private final z()V
    .locals 2

    .prologue
    .line 207
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->h:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 208
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v0, v1

    .line 209
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    if-le v0, v1, :cond_0

    .line 210
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->h:I

    .line 211
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->h:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 213
    :goto_0
    return-void

    .line 212
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->h:I

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dby;->t()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12
    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->j:I

    .line 19
    :goto_0
    return v0

    .line 14
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->j:I

    .line 15
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->j:I

    .line 16
    ushr-int/lit8 v0, v0, 0x3

    .line 17
    if-nez v0, :cond_1

    .line 18
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->d()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 19
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->j:I

    goto :goto_0
.end method

.method public final a(I)V
    .locals 1

    .prologue
    .line 20
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->j:I

    if-eq v0, p1, :cond_0

    .line 21
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->e()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 22
    :cond_0
    return-void
.end method

.method public final b()D
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->y()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public final b(I)Z
    .locals 6

    .prologue
    const/16 v5, 0xa

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 23
    .line 24
    and-int/lit8 v2, p1, 0x7

    .line 25
    packed-switch v2, :pswitch_data_0

    .line 57
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->f()Lcom/google/android/gms/internal/ads/zzecn;

    move-result-object v0

    throw v0

    .line 27
    :pswitch_0
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v2, v3

    if-lt v2, v5, :cond_1

    .line 29
    :goto_0
    if-ge v1, v5, :cond_0

    .line 30
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    aget-byte v2, v2, v3

    if-gez v2, :cond_3

    .line 31
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->c()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 35
    :cond_1
    :goto_1
    if-ge v1, v5, :cond_2

    .line 36
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->A()B

    move-result v2

    if-gez v2, :cond_3

    .line 37
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 38
    :cond_2
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->c()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 40
    :pswitch_1
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dbz;->j(I)V

    .line 56
    :cond_3
    :goto_2
    return v0

    .line 42
    :pswitch_2
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dbz;->j(I)V

    goto :goto_2

    .line 45
    :cond_4
    :pswitch_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/dby;->a()I

    move-result v1

    .line 46
    if-eqz v1, :cond_5

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dby;->b(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 50
    :cond_5
    ushr-int/lit8 v1, p1, 0x3

    .line 51
    shl-int/lit8 v1, v1, 0x3

    or-int/lit8 v1, v1, 0x4

    .line 52
    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/dby;->a(I)V

    goto :goto_2

    :pswitch_4
    move v0, v1

    .line 54
    goto :goto_2

    .line 55
    :pswitch_5
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dbz;->j(I)V

    goto :goto_2

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public final c()F
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->x()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public final c(I)I
    .locals 2

    .prologue
    .line 198
    if-gez p1, :cond_0

    .line 199
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->b()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 200
    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    .line 201
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    .line 202
    if-le v0, v1, :cond_1

    .line 203
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->a()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0

    .line 204
    :cond_1
    iput v0, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    .line 205
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->z()V

    .line 206
    return v1
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d(I)V
    .locals 0

    .prologue
    .line 214
    iput p1, p0, Lcom/google/android/gms/internal/ads/dbz;->l:I

    .line 215
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->z()V

    .line 216
    return-void
.end method

.method public final e()J
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v0

    return v0
.end method

.method public final g()J
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final h()I
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->x()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 4

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->w()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final j()Ljava/lang/String;
    .locals 5

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v1

    .line 67
    if-lez v1, :cond_0

    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    .line 68
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sget-object v4, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 69
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 78
    :goto_0
    return-object v0

    .line 71
    :cond_0
    if-nez v1, :cond_1

    .line 72
    const-string/jumbo v0, ""

    goto :goto_0

    .line 73
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-gt v1, v0, :cond_2

    .line 74
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 75
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sget-object v4, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v2, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 76
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    goto :goto_0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/google/android/gms/internal/ads/dbz;->a(IZ)[B

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/dcz;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v3

    .line 80
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 81
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    sub-int/2addr v2, v0

    if-gt v3, v2, :cond_0

    if-lez v3, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 83
    add-int v2, v0, v3

    iput v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    move-object v2, v1

    .line 94
    :goto_0
    invoke-static {v2, v0, v3}, Lcom/google/android/gms/internal/ads/dgd;->b([BII)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 85
    :cond_0
    if-nez v3, :cond_1

    .line 86
    const-string/jumbo v0, ""

    goto :goto_1

    .line 87
    :cond_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-gt v3, v0, :cond_2

    .line 88
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dbz;->f(I)V

    .line 89
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    .line 91
    iput v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    move v0, v1

    goto :goto_0

    .line 92
    :cond_2
    invoke-direct {p0, v3, v1}, Lcom/google/android/gms/internal/ads/dbz;->a(IZ)[B

    move-result-object v2

    move v0, v1

    .line 93
    goto :goto_0
.end method

.method public final l()Lcom/google/android/gms/internal/ads/dbi;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 95
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v1

    .line 96
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v2

    if-gt v1, v0, :cond_0

    if-lez v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    invoke-static {v0, v2, v1}, Lcom/google/android/gms/internal/ads/dbi;->a([BII)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    .line 98
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 121
    :goto_0
    return-object v0

    .line 100
    :cond_0
    if-nez v1, :cond_1

    .line 101
    sget-object v0, Lcom/google/android/gms/internal/ads/dbi;->a:Lcom/google/android/gms/internal/ads/dbi;

    goto :goto_0

    .line 103
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/gms/internal/ads/dbz;->h(I)[B

    move-result-object v0

    .line 104
    if-eqz v0, :cond_2

    .line 105
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbi;->a([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    goto :goto_0

    .line 106
    :cond_2
    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 107
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    sub-int/2addr v0, v3

    .line 108
    iget v3, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    .line 109
    iput v5, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    .line 110
    iput v5, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    .line 111
    sub-int v3, v1, v0

    .line 112
    invoke-direct {p0, v3}, Lcom/google/android/gms/internal/ads/dbz;->i(I)Ljava/util/List;

    move-result-object v3

    .line 113
    new-array v4, v1, [B

    .line 114
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dbz;->f:[B

    invoke-static {v1, v2, v4, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 116
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 117
    array-length v3, v0

    invoke-static {v0, v5, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 118
    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 119
    goto :goto_1

    .line 120
    :cond_3
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/dbi;->b([B)Lcom/google/android/gms/internal/ads/dbi;

    move-result-object v0

    goto :goto_0
.end method

.method public final m()I
    .locals 1

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v0

    return v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->x()I

    move-result v0

    return v0
.end method

.method public final p()J
    .locals 2

    .prologue
    .line 125
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->y()J

    move-result-wide v0

    return-wide v0
.end method

.method public final q()I
    .locals 1

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->v()I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dbz;->e(I)I

    move-result v0

    return v0
.end method

.method public final r()J
    .locals 2

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->w()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/dbz;->a(J)J

    move-result-wide v0

    return-wide v0
.end method

.method final s()J
    .locals 6

    .prologue
    .line 176
    const-wide/16 v2, 0x0

    .line 177
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x40

    if-ge v0, v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dbz;->A()B

    move-result v1

    .line 179
    and-int/lit8 v4, v1, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v0

    or-long/2addr v2, v4

    .line 180
    and-int/lit16 v1, v1, 0x80

    if-nez v1, :cond_0

    .line 181
    return-wide v2

    .line 182
    :cond_0
    add-int/lit8 v0, v0, 0x7

    goto :goto_0

    .line 183
    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzeco;->c()Lcom/google/android/gms/internal/ads/zzeco;

    move-result-object v0

    throw v0
.end method

.method public final t()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 217
    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dbz;->g:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dbz;->g(I)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final u()I
    .locals 2

    .prologue
    .line 218
    iget v0, p0, Lcom/google/android/gms/internal/ads/dbz;->k:I

    iget v1, p0, Lcom/google/android/gms/internal/ads/dbz;->i:I

    add-int/2addr v0, v1

    return v0
.end method
