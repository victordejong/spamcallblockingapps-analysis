.class public final Lcom/google/android/exoplayer2/extractor/h/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h/j;


# static fields
.field private static final c:[B


# instance fields
.field a:J

.field b:J

.field private final d:Z

.field private final e:Lcom/google/android/exoplayer2/util/t;

.field private final f:Lcom/google/android/exoplayer2/util/u;

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Lcom/google/android/exoplayer2/extractor/x;

.field private j:Lcom/google/android/exoplayer2/extractor/x;

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

.field private u:Lcom/google/android/exoplayer2/extractor/x;

.field private v:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [B

    .line 66
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/f;->c:[B

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

    .line 107
    invoke-direct {p0, p1, v0}, Lcom/google/android/exoplayer2/extractor/h/f;-><init>(ZLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 3

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    const/4 v1, 0x7

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    .line 116
    new-instance v0, Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/extractor/h/f;->c:[B

    const/16 v2, 0xa

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    .line 117
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->d()V

    const/4 v0, -0x1

    .line 118
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->p:I

    .line 119
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 120
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    .line 121
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->d:Z

    .line 122
    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/f;->g:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/x;JII)V
    .locals 1

    const/4 v0, 0x4

    .line 254
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    .line 255
    iput p4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    .line 256
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->u:Lcom/google/android/exoplayer2/extractor/x;

    .line 257
    iput-wide p2, p0, Lcom/google/android/exoplayer2/extractor/h/f;->v:J

    .line 258
    iput p5, p0, Lcom/google/android/exoplayer2/extractor/h/f;->t:I

    return-void
.end method

.method private static a(B)Z
    .locals 1

    and-int/lit16 p0, p0, 0xff

    const v0, 0xff00

    or-int/2addr p0, v0

    .line 456
    invoke-static {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->a(I)Z

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

.method private a(Lcom/google/android/exoplayer2/util/u;I)Z
    .locals 8

    add-int/lit8 v0, p2, 0x1

    .line 382
    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 383
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/f;->b(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 388
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 389
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    .line 390
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->p:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    if-eq v0, v4, :cond_1

    return v2

    .line 395
    :cond_1
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    const/4 v6, 0x2

    if-eq v4, v5, :cond_4

    .line 396
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-static {p1, v4, v1}, Lcom/google/android/exoplayer2/extractor/h/f;->b(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v4

    if-nez v4, :cond_2

    return v1

    .line 400
    :cond_2
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v6}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 401
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 402
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    if-eq v4, v7, :cond_3

    return v2

    :cond_3
    add-int/lit8 v4, p2, 0x2

    .line 405
    invoke-virtual {p1, v4}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 409
    :cond_4
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    iget-object v4, v4, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-static {p1, v4, v3}, Lcom/google/android/exoplayer2/extractor/h/f;->b(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v3

    if-nez v3, :cond_5

    return v1

    .line 413
    :cond_5
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 414
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    const/4 v4, 0x7

    if-ge v3, v4, :cond_6

    return v2

    .line 6169
    :cond_6
    iget-object v4, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 7127
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/2addr p2, v3

    if-lt p2, p1, :cond_7

    return v1

    .line 428
    :cond_7
    aget-byte v3, v4, p2

    if-ne v3, v5, :cond_a

    add-int/2addr p2, v1

    if-ne p2, p1, :cond_8

    return v1

    .line 433
    :cond_8
    aget-byte p1, v4, p2

    invoke-static {p1}, Lcom/google/android/exoplayer2/extractor/h/f;->a(B)Z

    move-result p1

    if-eqz p1, :cond_9

    aget-byte p1, v4, p2

    and-int/lit8 p1, p1, 0x8

    shr-int/lit8 p1, p1, 0x3

    if-ne p1, v0, :cond_9

    return v1

    :cond_9
    return v2

    .line 436
    :cond_a
    aget-byte v0, v4, p2

    const/16 v3, 0x49

    if-eq v0, v3, :cond_b

    return v2

    :cond_b
    add-int/lit8 v0, p2, 0x1

    if-ne v0, p1, :cond_c

    return v1

    .line 443
    :cond_c
    aget-byte v0, v4, v0

    const/16 v3, 0x44

    if-eq v0, v3, :cond_d

    return v2

    :cond_d
    add-int/2addr p2, v6

    if-ne p2, p1, :cond_e

    return v1

    .line 450
    :cond_e
    aget-byte p1, v4, p2

    const/16 p2, 0x33

    if-ne p1, p2, :cond_f

    return v1

    :cond_f
    return v2
.end method

.method private a(Lcom/google/android/exoplayer2/util/u;[BI)Z
    .locals 2

    .line 218
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    sub-int v1, p3, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 219
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    invoke-virtual {p1, p2, v1, v0}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 220
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    if-ne p1, p3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lcom/google/android/exoplayer2/util/u;)V
    .locals 7

    .line 3169
    iget-object v0, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 4144
    iget v1, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 5127
    iget v2, p1, Lcom/google/android/exoplayer2/util/u;->c:I

    :goto_0
    if-ge v1, v2, :cond_9

    add-int/lit8 v3, v1, 0x1

    .line 286
    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    .line 287
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    const/16 v5, 0x200

    if-ne v4, v5, :cond_3

    int-to-byte v4, v1

    invoke-static {v4}, Lcom/google/android/exoplayer2/extractor/h/f;->a(B)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 288
    iget-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->o:Z

    if-nez v4, :cond_0

    add-int/lit8 v4, v3, -0x2

    .line 289
    invoke-direct {p0, p1, v4}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/util/u;I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    and-int/lit8 v0, v1, 0x8

    shr-int/lit8 v0, v0, 0x3

    .line 290
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->r:I

    const/4 v0, 0x1

    and-int/2addr v1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 291
    :goto_1
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->n:Z

    .line 292
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->o:Z

    if-nez v0, :cond_2

    .line 293
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->g()V

    goto :goto_2

    .line 295
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->f()V

    .line 297
    :goto_2
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void

    .line 302
    :cond_3
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

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

    .line 320
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 313
    :cond_4
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->e()V

    .line 314
    invoke-virtual {p1, v3}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void

    :cond_5
    const/16 v1, 0x400

    .line 310
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    goto :goto_3

    .line 304
    :cond_6
    iput v5, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    goto :goto_3

    :cond_7
    const/16 v1, 0x300

    .line 307
    iput v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    :cond_8
    :goto_3
    move v1, v3

    goto :goto_0

    .line 326
    :cond_9
    invoke-virtual {p1, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void
.end method

.method private static b(Lcom/google/android/exoplayer2/util/u;[BI)Z
    .locals 2

    .line 461
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 464
    :cond_0
    invoke-virtual {p0, p1, v1, p2}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    const/4 p0, 0x1

    return p0
.end method

.method private c(Lcom/google/android/exoplayer2/util/u;)V
    .locals 3

    .line 335
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    iget-object v0, v0, Lcom/google/android/exoplayer2/util/t;->a:[B

    const/4 v1, 0x0

    .line 5169
    iget-object v2, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 6144
    iget p1, p1, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 340
    aget-byte p1, v2, p1

    aput-byte p1, v0, v1

    .line 342
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 343
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result p1

    .line 344
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    if-eq p1, v0, :cond_1

    .line 347
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->c()V

    return-void

    .line 351
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->o:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 352
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->o:Z

    .line 353
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->r:I

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->p:I

    .line 354
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    .line 356
    :cond_2
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->f()V

    return-void
.end method

.method private d()V
    .locals 1

    const/4 v0, 0x0

    .line 228
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    .line 229
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    const/16 v0, 0x100

    .line 230
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->m:I

    return-void
.end method

.method private d(Lcom/google/android/exoplayer2/util/u;)V
    .locals 7
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "currentOutput"
        }
    .end annotation

    .line 536
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    iget v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->t:I

    iget v2, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 537
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->u:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v1, p1, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 538
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    .line 539
    iget v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->t:I

    if-ne p1, v4, :cond_0

    .line 540
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->u:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->b:J

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 541
    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->b:J

    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/f;->v:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->b:J

    .line 542
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->d()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    const/4 v0, 0x2

    .line 238
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    .line 239
    sget-object v0, Lcom/google/android/exoplayer2/extractor/h/f;->c:[B

    array-length v0, v0

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    const/4 v0, 0x0

    .line 240
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->t:I

    .line 241
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    return-void
.end method

.method private f()V
    .locals 1

    const/4 v0, 0x3

    .line 265
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    const/4 v0, 0x0

    .line 266
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    return-void
.end method

.method private g()V
    .locals 1

    const/4 v0, 0x1

    .line 271
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    const/4 v0, 0x0

    .line 272
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->l:I

    return-void
.end method

.method private h()V
    .locals 9
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "id3Output"
        }
    .end annotation

    .line 471
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->j:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    const/16 v2, 0xa

    invoke-interface {v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 472
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 473
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->j:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    .line 474
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v0

    add-int/lit8 v8, v0, 0xa

    const-wide/16 v5, 0x0

    const/16 v7, 0xa

    move-object v3, p0

    .line 473
    invoke-direct/range {v3 .. v8}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/extractor/x;JII)V

    return-void
.end method

.method private i()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "output"
        }
    .end annotation

    .line 480
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 482
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->s:Z

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-nez v0, :cond_1

    .line 483
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v0, v2}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    if-eq v0, v2, :cond_0

    .line 494
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Detected audio object type: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", but assuming AAC LC."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "AdtsReader"

    invoke-static {v4, v0}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    .line 498
    :cond_0
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    invoke-virtual {v4, v1}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 499
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v4

    .line 501
    iget v5, p0, Lcom/google/android/exoplayer2/extractor/h/f;->q:I

    .line 502
    invoke-static {v0, v5, v4}, Lcom/google/android/exoplayer2/audio/a;->a(III)[B

    move-result-object v0

    .line 504
    invoke-static {v0}, Lcom/google/android/exoplayer2/audio/a;->a([B)Lcom/google/android/exoplayer2/audio/a$a;

    move-result-object v4

    .line 505
    new-instance v5, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v5}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/h/f;->h:Ljava/lang/String;

    .line 7244
    iput-object v6, v5, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string v6, "audio/mp4a-latm"

    .line 7370
    iput-object v6, v5, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 508
    iget-object v6, v4, Lcom/google/android/exoplayer2/audio/a$a;->c:Ljava/lang/String;

    .line 8333
    iput-object v6, v5, Lcom/google/android/exoplayer2/Format$a;->h:Ljava/lang/String;

    .line 509
    iget v6, v4, Lcom/google/android/exoplayer2/audio/a$a;->b:I

    .line 8517
    iput v6, v5, Lcom/google/android/exoplayer2/Format$a;->x:I

    .line 510
    iget v4, v4, Lcom/google/android/exoplayer2/audio/a$a;->a:I

    .line 8528
    iput v4, v5, Lcom/google/android/exoplayer2/Format$a;->y:I

    .line 512
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 9392
    iput-object v0, v5, Lcom/google/android/exoplayer2/Format$a;->m:Ljava/util/List;

    .line 512
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->g:Ljava/lang/String;

    .line 10278
    iput-object v0, v5, Lcom/google/android/exoplayer2/Format$a;->c:Ljava/lang/String;

    .line 514
    invoke-virtual {v5}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object v0

    const-wide/32 v4, 0x3d090000

    .line 517
    iget v6, v0, Lcom/google/android/exoplayer2/Format;->sampleRate:I

    int-to-long v6, v6

    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    .line 518
    iget-object v4, p0, Lcom/google/android/exoplayer2/extractor/h/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    invoke-interface {v4, v0}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    .line 519
    iput-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/h/f;->s:Z

    goto :goto_0

    .line 521
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 524
    :goto_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->b(I)V

    .line 525
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    const/16 v3, 0xd

    invoke-virtual {v0, v3}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v0

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    .line 526
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->n:Z

    if-eqz v1, :cond_2

    add-int/lit8 v0, v0, -0x2

    :cond_2
    move v6, v0

    .line 530
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    const/4 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/extractor/x;JII)V

    return-void
.end method

.method private j()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "output",
            "currentOutput",
            "id3Output"
        }
    .end annotation

    .line 548
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 549
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->u:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->j:Lcom/google/android/exoplayer2/extractor/x;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/af;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->c()V

    return-void
.end method

.method public final a(JI)V
    .locals 0

    .line 156
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->b:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V
    .locals 2

    .line 137
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 138
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->h:Ljava/lang/String;

    .line 139
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->i:Lcom/google/android/exoplayer2/extractor/x;

    .line 140
    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->u:Lcom/google/android/exoplayer2/extractor/x;

    .line 141
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->d:Z

    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->a()V

    .line 143
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->b()I

    move-result v0

    const/4 v1, 0x5

    invoke-interface {p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/j;->a(II)Lcom/google/android/exoplayer2/extractor/x;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->j:Lcom/google/android/exoplayer2/extractor/x;

    .line 144
    new-instance v0, Lcom/google/android/exoplayer2/Format$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/Format$a;-><init>()V

    .line 146
    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/h/ad$d;->c()Ljava/lang/String;

    move-result-object p2

    .line 1244
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->a:Ljava/lang/String;

    const-string p2, "application/id3"

    .line 1370
    iput-object p2, v0, Lcom/google/android/exoplayer2/Format$a;->k:Ljava/lang/String;

    .line 148
    invoke-virtual {v0}, Lcom/google/android/exoplayer2/Format$a;->a()Lcom/google/android/exoplayer2/Format;

    move-result-object p2

    .line 144
    invoke-interface {p1, p2}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/Format;)V

    return-void

    .line 150
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/extractor/g;

    invoke-direct {p1}, Lcom/google/android/exoplayer2/extractor/g;-><init>()V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->j:Lcom/google/android/exoplayer2/extractor/x;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/util/u;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->j()V

    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_7

    .line 163
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->k:I

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 182
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/f;->d(Lcom/google/android/exoplayer2/util/u;)V

    goto :goto_0

    .line 185
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->n:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x7

    goto :goto_1

    :cond_3
    const/4 v0, 0x5

    .line 177
    :goto_1
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/h/f;->e:Lcom/google/android/exoplayer2/util/t;

    iget-object v1, v1, Lcom/google/android/exoplayer2/util/t;->a:[B

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->i()V

    goto :goto_0

    .line 168
    :cond_4
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->f:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v1, 0xa

    .line 168
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/util/u;[BI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->h()V

    goto :goto_0

    .line 173
    :cond_5
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/f;->c(Lcom/google/android/exoplayer2/util/u;)V

    goto :goto_0

    .line 165
    :cond_6
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/f;->b(Lcom/google/android/exoplayer2/util/u;)V

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

    .line 204
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/f;->o:Z

    .line 205
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/h/f;->d()V

    return-void
.end method
