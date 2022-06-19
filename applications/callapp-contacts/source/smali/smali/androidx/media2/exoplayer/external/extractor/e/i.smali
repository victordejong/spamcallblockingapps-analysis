.class public final Landroidx/media2/exoplayer/external/extractor/e/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/e/m;


# static fields
.field private static final c:[B


# instance fields
.field a:J

.field b:J

.field private final d:Z

.field private final e:Landroidx/media2/exoplayer/external/util/o;

.field private final f:Landroidx/media2/exoplayer/external/util/p;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Landroidx/media2/exoplayer/external/extractor/q;

.field private j:Landroidx/media2/exoplayer/external/extractor/q;

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:I

.field private s:Z

.field private t:I

.field private u:Landroidx/media2/exoplayer/external/extractor/q;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 65
    fill-array-data v0, :array_0

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/e/i;->c:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x44t
        0x33t
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/e/i;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v0, Landroidx/media2/exoplayer/external/util/o;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/o;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    .line 115
    new-instance v0, Landroidx/media2/exoplayer/external/util/p;

    sget-object v1, Landroidx/media2/exoplayer/external/extractor/e/i;->c:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 116
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->d()V

    const/4 v0, -0x1

    .line 117
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->p:I

    .line 118
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 119
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    .line 120
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->d:Z

    .line 121
    iput-object p2, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/q;JII)V
    .locals 1

    const/4 v0, 0x4

    .line 248
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    .line 249
    iput p4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    .line 250
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->u:Landroidx/media2/exoplayer/external/extractor/q;

    .line 251
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->v:J

    .line 252
    iput p5, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->t:I

    return-void
.end method

.method private static a(BB)Z
    .locals 0

    and-int/lit16 p0, p0, 0xff

    shl-int/lit8 p0, p0, 0x8

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p0, p1

    .line 422
    invoke-static {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(I)Z

    move-result p0

    return p0
.end method

.method public static a(I)Z
    .locals 1

    const v0, 0xfff6

    and-int/2addr p0, v0

    const v0, 0xfff0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;I)Z
    .locals 7

    add-int/lit8 v0, p2, 0x1

    .line 377
    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 378
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/o;->a:[B

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/i;->b(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 382
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 383
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    .line 384
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->p:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    .line 388
    :cond_1
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    if-eq v4, v5, :cond_4

    .line 389
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-static {p1, v4, v1}, Landroidx/media2/exoplayer/external/extractor/e/i;->b(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 392
    :cond_2
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 393
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 394
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    if-eq v4, v6, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    .line 397
    invoke-virtual {p1, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 402
    :cond_4
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-static {p1, v4, v3}, Landroidx/media2/exoplayer/external/extractor/e/i;->b(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 405
    :cond_5
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 406
    iget-object v3, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v3

    const/4 v4, 0x6

    if-gt v3, v4, :cond_6

    return v2

    :cond_6
    add-int/2addr p2, v3

    add-int/lit8 v3, p2, 0x1

    .line 3125
    iget v4, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-lt v3, v4, :cond_7

    return v1

    .line 415
    :cond_7
    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte p2, v4, p2

    iget-object v4, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v4, v4, v3

    invoke-static {p2, v4}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(BB)Z

    move-result p2

    if-eqz p2, :cond_9

    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->p:I

    if-eq p2, v5, :cond_8

    iget-object p1, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte p1, p1, v3

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_9

    :cond_8
    return v1

    :cond_9
    return v2
.end method

.method private a(Landroidx/media2/exoplayer/external/util/p;[BI)Z
    .locals 2

    .line 212
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 213
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    invoke-virtual {p1, p2, v1, v0}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 214
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 7

    .line 276
    iget-object v0, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1142
    iget v1, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 2125
    iget v2, p1, Landroidx/media2/exoplayer/external/util/p;->c:I

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 280
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 281
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    const/4 v6, -0x1

    invoke-static {v6, v4}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(BB)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 282
    iget-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->o:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 283
    invoke-direct {p0, p1, v4}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/util/p;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 284
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->r:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 285
    :goto_1
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->n:Z

    .line 286
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->o:Z

    if-nez v0, :cond_2

    .line 287
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->g()V

    goto :goto_2

    .line 289
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->f()V

    .line 291
    :goto_2
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-void

    .line 296
    :cond_3
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    or-int/2addr v1, v4

    const/16 v6, 0x149

    if-eq v1, v6, :cond_7

    const/16 v6, 0x1ff

    if-eq v1, v6, :cond_6

    const/16 v5, 0x344

    if-eq v1, v5, :cond_5

    const/16 v5, 0x433

    if-eq v1, v5, :cond_4

    const/16 v1, 0x100

    if-eq v4, v1, :cond_8

    .line 314
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 307
    :cond_4
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->e()V

    .line 308
    invoke-virtual {p1, v3}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    .line 304
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    goto :goto_3

    .line 298
    :cond_6
    iput v5, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    .line 301
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    .line 320
    :cond_9
    invoke-virtual {p1, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-void
.end method

.method private static b(Landroidx/media2/exoplayer/external/util/p;[BI)Z
    .locals 2

    .line 427
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 430
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    const/4 p0, 0x1

    return p0
.end method

.method private c(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 3

    .line 329
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 334
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/o;->a:[B

    const/4 v1, 0x0

    iget-object v2, p1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 2142
    iget p1, p1, Landroidx/media2/exoplayer/external/util/p;->b:I

    .line 334
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    .line 336
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 337
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result p1

    .line 338
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 341
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->c()V

    return-void

    .line 345
    :cond_1
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 346
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->o:Z

    .line 347
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->r:I

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->p:I

    .line 348
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    .line 350
    :cond_2
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->f()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 222
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    .line 223
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    const/16 v0, 0x100

    .line 224
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->m:I

    return-void
.end method

.method private d(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 7

    .line 500
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->t:I

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 501
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->u:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v1, p1, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 502
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    .line 503
    iget v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->t:I

    if-ne p1, v4, :cond_0

    .line 504
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->u:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->b:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 505
    iget-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->b:J

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->v:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->b:J

    .line 506
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->d()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x2

    .line 232
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    .line 233
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/e/i;->c:[B

    array-length v0, v0

    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    const/4 v0, 0x0

    .line 234
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->t:I

    .line 235
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x3

    .line 259
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    const/4 v0, 0x0

    .line 260
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 265
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->l:I

    return-void
.end method

.method private h()V
    .locals 9

    .line 438
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->j:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 439
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 440
    iget-object v4, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->j:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 441
    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->m()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 440
    invoke-direct/range {v3 .. v8}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/extractor/q;JII)V

    return-void
.end method

.method private i()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    move-object/from16 v6, p0

    .line 448
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/o;->a(I)V

    .line 450
    iget-boolean v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->s:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 451
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v0, v2}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    const/16 v4, 0x3d

    .line 462
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Detected audio object type: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 466
    :cond_0
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    invoke-virtual {v4, v1}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 467
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v4

    .line 469
    iget v5, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->q:I

    .line 470
    invoke-static {v0, v5, v4}, Landroidx/media2/exoplayer/external/util/c;->a(III)[B

    move-result-object v0

    .line 472
    invoke-static {v0}, Landroidx/media2/exoplayer/external/util/c;->a([B)Landroid/util/Pair;

    move-result-object v4

    .line 475
    iget-object v7, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->h:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, -0x1

    iget-object v5, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    .line 476
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v4, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 477
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->g:Ljava/lang/String;

    const-string v8, "audio/mp4a-latm"

    move-object/from16 v17, v0

    .line 475
    invoke-static/range {v7 .. v17}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 480
    iget v7, v0, Landroidx/media2/exoplayer/external/Format;->sampleRate:I

    int-to-long v7, v7

    div-long/2addr v4, v7

    iput-wide v4, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    .line 481
    iget-object v4, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->i:Landroidx/media2/exoplayer/external/extractor/q;

    invoke-interface {v4, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 482
    iput-boolean v3, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->s:Z

    goto :goto_0

    .line 484
    :cond_1
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 487
    :goto_0
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/o;->b(I)V

    .line 488
    iget-object v0, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Landroidx/media2/exoplayer/external/util/o;->c(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 489
    iget-boolean v1, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->n:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v5, v0

    .line 493
    iget-object v1, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->i:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v2, v6, Landroidx/media2/exoplayer/external/extractor/e/i;->a:J

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/extractor/q;JII)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 131
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->c()V

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 151
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->b:J

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;Landroidx/media2/exoplayer/external/extractor/e/ah$d;)V
    .locals 3

    .line 136
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 137
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->h:Ljava/lang/String;

    .line 138
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object v0

    iput-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->i:Landroidx/media2/exoplayer/external/extractor/q;

    .line 139
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->d:Z

    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->a()V

    .line 141
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->b()I

    move-result v0

    const/4 v1, 0x4

    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->j:Landroidx/media2/exoplayer/external/extractor/q;

    .line 142
    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/e/ah$d;->c()Ljava/lang/String;

    move-result-object p2

    const/4 v0, -0x1

    const-string v1, "application/id3"

    const/4 v2, 0x0

    invoke-static {p2, v1, v2, v0, v2}, Landroidx/media2/exoplayer/external/Format;->createSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroidx/media2/exoplayer/external/drm/DrmInitData;)Landroidx/media2/exoplayer/external/Format;

    move-result-object p2

    invoke-interface {p1, p2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    return-void

    .line 145
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/f;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/f;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->j:Landroidx/media2/exoplayer/external/extractor/q;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/util/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 156
    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_7

    .line 157
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->k:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 176
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/i;->d(Landroidx/media2/exoplayer/external/util/p;)V

    goto :goto_0

    .line 179
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 170
    :cond_2
    iget-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->n:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 171
    :goto_1
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->e:Landroidx/media2/exoplayer/external/util/o;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/o;->a:[B

    invoke-direct {p0, p1, v1, v0}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->i()V

    goto :goto_0

    .line 162
    :cond_4
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v1, 0xa

    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/e/i;->a(Landroidx/media2/exoplayer/external/util/p;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->h()V

    goto :goto_0

    .line 167
    :cond_5
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/i;->c(Landroidx/media2/exoplayer/external/util/p;)V

    goto :goto_0

    .line 159
    :cond_6
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/e/i;->b(Landroidx/media2/exoplayer/external/util/p;)V

    goto :goto_0

    :cond_7
    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method final c()V
    .locals 1

    const/4 v0, 0x0

    .line 198
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/e/i;->o:Z

    .line 199
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/e/i;->d()V

    return-void
.end method
