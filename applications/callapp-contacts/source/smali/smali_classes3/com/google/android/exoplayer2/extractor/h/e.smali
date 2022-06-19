.class public final Lcom/google/android/exoplayer2/extractor/h/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# static fields
.field public static final a:Lcom/google/android/exoplayer2/extractor/l;


# instance fields
.field private final b:I

.field private final c:Lcom/google/android/exoplayer2/extractor/h/f;

.field private final d:Lcom/google/android/exoplayer2/util/u;

.field private final e:Lcom/google/android/exoplayer2/util/u;

.field private final f:Lcom/google/android/exoplayer2/util/t;

.field private g:Lcom/google/android/exoplayer2/extractor/j;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    sget-object v0, Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$e$1k6o44M8uk6NMw2epVz6YWhjOzo;->INSTANCE:Lcom/google/android/exoplayer2/extractor/h/-$$Lambda$e$1k6o44M8uk6NMw2epVz6YWhjOzo;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/h/e;->a:Lcom/google/android/exoplayer2/extractor/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/h/e;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->b:I

    .line 111
    new-instance p1, Lcom/google/android/exoplayer2/extractor/h/f;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/extractor/h/f;-><init>(Z)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    .line 112
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->d:Lcom/google/android/exoplayer2/util/u;

    const/4 p1, -0x1

    .line 113
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    const-wide/16 v0, -0x1

    .line 114
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->i:J

    .line 116
    new-instance p1, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 117
    new-instance v0, Lcom/google/android/exoplayer2/util/t;

    .line 1169
    iget-object p1, p1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 117
    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/util/t;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->f:Lcom/google/android/exoplayer2/util/t;

    return-void
.end method

.method private static synthetic a()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 50
    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/e;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/h/e;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Lcom/google/android/exoplayer2/extractor/i;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 217
    :goto_0
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 11169
    iget-object v2, v2, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v3, 0xa

    .line 217
    invoke-interface {p1, v2, v0, v3}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 218
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2, v0}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 219
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->g()I

    move-result v2

    const v3, 0x494433

    if-ne v2, v3, :cond_0

    .line 222
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/google/android/exoplayer2/util/u;->e(I)V

    .line 223
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v2}, Lcom/google/android/exoplayer2/util/u;->n()I

    move-result v2

    add-int/lit8 v3, v2, 0xa

    add-int/2addr v1, v3

    .line 225
    invoke-interface {p1, v2}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_0

    .line 227
    :cond_0
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 228
    invoke-interface {p1, v1}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 229
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->i:J

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    int-to-long v2, v1

    .line 230
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->i:J

    :cond_1
    return v1
.end method

.method public static synthetic lambda$1k6o44M8uk6NMw2epVz6YWhjOzo()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/h/e;->a()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->g:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {p2}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

    move-result-wide v1

    .line 186
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->b:I

    const/4 v7, 0x1

    and-int/2addr p2, v7

    const/4 v8, 0x0

    if-eqz p2, :cond_0

    const-wide/16 v3, -0x1

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/4 v9, -0x1

    if-eqz p2, :cond_7

    .line 4259
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->k:Z

    if-nez v0, :cond_7

    .line 4262
    iput v9, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    .line 4263
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 4264
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 4266
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/e;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    :cond_1
    const/4 v0, 0x0

    .line 4272
    :cond_2
    :try_start_0
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v4, 0x2

    .line 4272
    invoke-interface {p1, v3, v8, v4, v7}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4274
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 4275
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v3}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v3

    .line 4276
    invoke-static {v3}, Lcom/google/android/exoplayer2/extractor/h/f;->a(I)Z

    move-result v3

    if-nez v3, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    .line 4283
    :cond_3
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 6169
    iget-object v3, v3, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v4, 0x4

    .line 4283
    invoke-interface {p1, v3, v8, v4, v7}, Lcom/google/android/exoplayer2/extractor/i;->b([BIIZ)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4287
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->f:Lcom/google/android/exoplayer2/util/t;

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 4288
    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->f:Lcom/google/android/exoplayer2/util/t;

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v3

    const/4 v4, 0x6

    if-le v3, v4, :cond_4

    int-to-long v10, v3

    add-long/2addr v5, v10

    add-int/lit8 v0, v0, 0x1

    const/16 v4, 0x3e8

    if-eq v0, v4, :cond_5

    add-int/lit8 v3, v3, -0x6

    .line 4298
    invoke-interface {p1, v3, v7}, Lcom/google/android/exoplayer2/extractor/i;->a(IZ)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_1

    .line 4291
    :cond_4
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/h/e;->k:Z

    .line 4292
    new-instance v3, Lcom/google/android/exoplayer2/ParserException;

    const-string v4, "Malformed ADTS stream"

    invoke-direct {v3, v4}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 4309
    :cond_5
    :goto_1
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    if-lez v0, :cond_6

    int-to-long v3, v0

    .line 4311
    div-long/2addr v5, v3

    long-to-int v0, v5

    iput v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    goto :goto_2

    .line 4313
    :cond_6
    iput v9, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    .line 4315
    :goto_2
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/h/e;->k:Z

    .line 192
    :cond_7
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->d:Lcom/google/android/exoplayer2/util/u;

    .line 7169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v3, 0x800

    .line 192
    invoke-interface {p1, v0, v8, v3}, Lcom/google/android/exoplayer2/extractor/i;->a([BII)I

    move-result p1

    if-ne p1, v9, :cond_8

    const/4 v10, 0x1

    goto :goto_3

    :cond_8
    const/4 v10, 0x0

    .line 7238
    :goto_3
    iget-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->m:Z

    if-nez v0, :cond_c

    if-eqz p2, :cond_9

    .line 7241
    iget p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    if-lez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_4

    :cond_9
    const/4 p2, 0x0

    :goto_4
    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz p2, :cond_a

    .line 7242
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    .line 8200
    iget-wide v5, v0, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_a

    if-eqz v10, :cond_c

    :cond_a
    if-eqz p2, :cond_b

    .line 7250
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    .line 9200
    iget-wide v5, p2, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    cmp-long p2, v5, v3

    if-eqz p2, :cond_b

    .line 7251
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->g:Lcom/google/android/exoplayer2/extractor/j;

    .line 9319
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    iget-object v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    .line 10200
    iget-wide v3, v3, Lcom/google/android/exoplayer2/extractor/h/f;->a:J

    mul-int/lit8 v0, v0, 0x8

    int-to-long v5, v0

    const-wide/32 v11, 0xf4240

    mul-long v5, v5, v11

    .line 10331
    div-long/2addr v5, v3

    long-to-int v5, v5

    .line 9320
    new-instance v11, Lcom/google/android/exoplayer2/extractor/d;

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->i:J

    iget v6, p0, Lcom/google/android/exoplayer2/extractor/h/e;->j:I

    move-object v0, v11

    invoke-direct/range {v0 .. v6}, Lcom/google/android/exoplayer2/extractor/d;-><init>(JJII)V

    .line 7251
    invoke-interface {p2, v11}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    goto :goto_5

    .line 7253
    :cond_b
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->g:Lcom/google/android/exoplayer2/extractor/j;

    new-instance v0, Lcom/google/android/exoplayer2/extractor/v$b;

    invoke-direct {v0, v3, v4}, Lcom/google/android/exoplayer2/extractor/v$b;-><init>(J)V

    invoke-interface {p2, v0}, Lcom/google/android/exoplayer2/extractor/j;->a(Lcom/google/android/exoplayer2/extractor/v;)V

    .line 7255
    :goto_5
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/h/e;->m:Z

    :cond_c
    if-eqz v10, :cond_d

    return v9

    .line 200
    :cond_d
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, v8}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 201
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    .line 203
    iget-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->l:Z

    if-nez p1, :cond_e

    .line 205
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    iget-wide v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->h:J

    .line 11156
    iput-wide v0, p1, Lcom/google/android/exoplayer2/extractor/h/f;->b:J

    .line 206
    iput-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/h/e;->l:Z

    .line 210
    :cond_e
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/h/e;->d:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/util/u;)V

    return v8
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->l:Z

    .line 172
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    .line 4132
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/h/f;->c()V

    .line 173
    iput-wide p3, p0, Lcom/google/android/exoplayer2/extractor/h/e;->h:J

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 4

    .line 164
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/h/e;->g:Lcom/google/android/exoplayer2/extractor/j;

    .line 165
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/h/e;->c:Lcom/google/android/exoplayer2/extractor/h/f;

    new-instance v1, Lcom/google/android/exoplayer2/extractor/h/ad$d;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/google/android/exoplayer2/extractor/h/ad$d;-><init>(II)V

    invoke-virtual {v0, p1, v1}, Lcom/google/android/exoplayer2/extractor/h/f;->a(Lcom/google/android/exoplayer2/extractor/j;Lcom/google/android/exoplayer2/extractor/h/ad$d;)V

    .line 166
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/j;->a()V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 125
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/extractor/h/e;->b(Lcom/google/android/exoplayer2/extractor/i;)I

    move-result v0

    const/4 v1, 0x0

    move v3, v0

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 132
    :goto_1
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 2169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v6, 0x2

    .line 132
    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 133
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5, v1}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 134
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v5}, Lcom/google/android/exoplayer2/util/u;->d()I

    move-result v5

    .line 135
    invoke-static {v5}, Lcom/google/android/exoplayer2/extractor/h/f;->a(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 138
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    add-int/lit8 v3, v3, 0x1

    sub-int v2, v3, v0

    const/16 v4, 0x2000

    if-lt v2, v4, :cond_0

    return v1

    .line 142
    :cond_0
    invoke-interface {p1, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    add-int/2addr v2, v5

    const/4 v6, 0x4

    if-lt v2, v6, :cond_2

    const/16 v7, 0xbc

    if-le v4, v7, :cond_2

    return v5

    .line 149
    :cond_2
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->e:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v5, v5, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 149
    invoke-interface {p1, v5, v1, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 150
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->f:Lcom/google/android/exoplayer2/util/t;

    const/16 v6, 0xe

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/t;->a(I)V

    .line 151
    iget-object v5, p0, Lcom/google/android/exoplayer2/extractor/h/e;->f:Lcom/google/android/exoplayer2/util/t;

    const/16 v6, 0xd

    invoke-virtual {v5, v6}, Lcom/google/android/exoplayer2/util/t;->c(I)I

    move-result v5

    const/4 v6, 0x6

    if-gt v5, v6, :cond_3

    return v1

    :cond_3
    add-int/lit8 v6, v5, -0x6

    .line 156
    invoke-interface {p1, v6}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    add-int/2addr v4, v5

    goto :goto_1
.end method
