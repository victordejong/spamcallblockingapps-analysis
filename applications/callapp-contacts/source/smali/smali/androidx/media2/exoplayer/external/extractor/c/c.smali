.class public final Landroidx/media2/exoplayer/external/extractor/c/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/c/c$a;
    }
.end annotation


# static fields
.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;

.field private static final b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;


# instance fields
.field private final c:I

.field private final d:J

.field private final e:Landroidx/media2/exoplayer/external/util/p;

.field private final f:Landroidx/media2/exoplayer/external/extractor/m;

.field private final g:Landroidx/media2/exoplayer/external/extractor/k;

.field private final h:Landroidx/media2/exoplayer/external/extractor/l;

.field private i:Landroidx/media2/exoplayer/external/extractor/i;

.field private j:Landroidx/media2/exoplayer/external/extractor/q;

.field private k:I

.field private l:Landroidx/media2/exoplayer/external/metadata/Metadata;

.field private m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

.field private n:J

.field private o:J

.field private p:J

.field private q:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/c/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/c/c;->a:Landroidx/media2/exoplayer/external/extractor/j;

    .line 80
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/c/e;->a:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/c/c;->b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 136
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>(IJ)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 0

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->c:I

    .line 146
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->d:J

    .line 147
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 p2, 0xa

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    .line 148
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/m;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/m;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    .line 149
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/k;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/k;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 150
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    .line 151
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/l;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/l;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->h:Landroidx/media2/exoplayer/external/extractor/l;

    return-void
.end method

.method private static a(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/c/b;
    .locals 9

    if-eqz p0, :cond_2

    .line 461
    invoke-virtual {p0}, Landroidx/media2/exoplayer/external/metadata/Metadata;->length()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 463
    invoke-virtual {p0, v2}, Landroidx/media2/exoplayer/external/metadata/Metadata;->get(I)Landroidx/media2/exoplayer/external/metadata/Metadata$Entry;

    move-result-object v3

    .line 464
    instance-of v4, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    if-eqz v4, :cond_1

    .line 465
    check-cast v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;

    .line 6043
    iget-object p0, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    array-length p0, p0

    add-int/lit8 v0, p0, 0x1

    .line 6044
    new-array v2, v0, [J

    .line 6045
    new-array v0, v0, [J

    .line 6046
    aput-wide p1, v2, v1

    const-wide/16 v4, 0x0

    .line 6047
    aput-wide v4, v0, v1

    const/4 v1, 0x1

    :goto_1
    if-gt v1, p0, :cond_0

    .line 6051
    iget v6, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesBetweenReference:I

    iget-object v7, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->bytesDeviations:[I

    add-int/lit8 v8, v1, -0x1

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr p1, v6

    .line 6052
    iget v6, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsBetweenReference:I

    iget-object v7, v3, Landroidx/media2/exoplayer/external/metadata/id3/MlltFrame;->millisecondsDeviations:[I

    aget v7, v7, v8

    add-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v4, v6

    .line 6053
    aput-wide p1, v2, v1

    .line 6054
    aput-wide v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 6056
    :cond_0
    new-instance p0, Landroidx/media2/exoplayer/external/extractor/c/b;

    invoke-direct {p0, v2, v0}, Landroidx/media2/exoplayer/external/extractor/c/b;-><init>([J[J)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method static final synthetic a(IIIII)Z
    .locals 3

    const/4 v0, 0x2

    const/16 v1, 0x4d

    const/16 v2, 0x43

    if-ne p1, v2, :cond_0

    const/16 v2, 0x4f

    if-ne p2, v2, :cond_0

    if-ne p3, v1, :cond_0

    if-eq p4, v1, :cond_1

    if-eq p0, v0, :cond_1

    :cond_0
    if-ne p1, v1, :cond_2

    const/16 p1, 0x4c

    if-ne p2, p1, :cond_2

    if-ne p3, p1, :cond_2

    const/16 p1, 0x54

    if-eq p4, p1, :cond_1

    if-ne p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static a(IJ)Z
    .locals 4

    const v0, -0x1f400

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide/32 v2, -0x1f400

    and-long p0, p1, v2

    cmp-long p2, v0, p0

    if-nez p2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    if-eqz p2, :cond_0

    const/16 v0, 0x4000

    goto :goto_0

    :cond_0
    const/high16 v0, 0x20000

    .line 284
    :goto_0
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 285
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_5

    .line 288
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->c:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    .line 290
    :cond_2
    sget-object v1, Landroidx/media2/exoplayer/external/extractor/c/c;->b:Landroidx/media2/exoplayer/external/metadata/id3/a$a;

    .line 291
    :goto_2
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->h:Landroidx/media2/exoplayer/external/extractor/l;

    invoke-virtual {v2, p1, v1}, Landroidx/media2/exoplayer/external/extractor/l;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/metadata/id3/a$a;)Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-result-object v1

    iput-object v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->l:Landroidx/media2/exoplayer/external/metadata/Metadata;

    if-eqz v1, :cond_3

    .line 293
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    invoke-virtual {v2, v1}, Landroidx/media2/exoplayer/external/extractor/k;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;)Z

    .line 295
    :cond_3
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->b()J

    move-result-wide v1

    long-to-int v2, v1

    if-nez p2, :cond_4

    .line 297
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_3
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 301
    :goto_4
    invoke-direct {p0, p1}, Landroidx/media2/exoplayer/external/extractor/c/c;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v7

    if-eqz v7, :cond_7

    if-lez v3, :cond_6

    goto :goto_7

    .line 306
    :cond_6
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    .line 308
    :cond_7
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7, v6}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 309
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v7

    if-eqz v1, :cond_8

    int-to-long v8, v1

    .line 312
    invoke-static {v7, v8, v9}, Landroidx/media2/exoplayer/external/extractor/c/c;->a(IJ)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 313
    :cond_8
    invoke-static {v7}, Landroidx/media2/exoplayer/external/extractor/m;->a(I)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_d

    :cond_9
    add-int/lit8 v1, v4, 0x1

    if-ne v4, v0, :cond_b

    if-eqz p2, :cond_a

    return v6

    .line 317
    :cond_a
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Searched too many bytes."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b
    if-eqz p2, :cond_c

    .line 324
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    add-int v3, v2, v1

    .line 325
    invoke-interface {p1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_5

    .line 327
    :cond_c
    invoke-interface {p1, v5}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    :goto_5
    move v4, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    goto :goto_4

    :cond_d
    add-int/lit8 v3, v3, 0x1

    if-ne v3, v5, :cond_e

    .line 333
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    invoke-static {v7, v1}, Landroidx/media2/exoplayer/external/extractor/m;->a(ILandroidx/media2/exoplayer/external/extractor/m;)Z

    move v1, v7

    goto :goto_6

    :cond_e
    const/4 v7, 0x4

    if-eq v3, v7, :cond_f

    :goto_6
    add-int/lit8 v8, v8, -0x4

    .line 338
    invoke-interface {p1, v8}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    goto :goto_4

    :cond_f
    :goto_7
    if-eqz p2, :cond_10

    add-int/2addr v2, v4

    .line 343
    invoke-interface {p1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    goto :goto_8

    .line 345
    :cond_10
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 347
    :goto_8
    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->k:I

    return v5
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 56
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/c/c;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/c/c;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method private b(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 357
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 358
    invoke-interface {v0}, Landroidx/media2/exoplayer/external/extractor/c/c$a;->c()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x4

    sub-long/2addr v2, v6

    cmp-long v0, v4, v2

    if-lez v0, :cond_0

    return v1

    .line 365
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-interface {p1, v0, v3, v2, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BIIZ)Z

    move-result p1
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p1, :cond_1

    return v1

    :cond_1
    return v3

    :catch_0
    return v1
.end method

.method private c(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/c/c$a;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 424
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0, v1}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 425
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v0

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    invoke-static {v0, v1}, Landroidx/media2/exoplayer/external/extractor/m;->a(ILandroidx/media2/exoplayer/external/extractor/m;)Z

    .line 426
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/c/a;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v3

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v5

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Landroidx/media2/exoplayer/external/extractor/c/a;-><init>(JJLandroidx/media2/exoplayer/external/extractor/m;)V

    return-object v0
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 41
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 184
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->k:I

    const/4 v3, -0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 186
    :try_start_0
    invoke-direct {v0, v1, v4}, Landroidx/media2/exoplayer/external/extractor/c/c;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return v3

    .line 191
    :cond_0
    :goto_0
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    const-wide/32 v5, 0xf4240

    const/4 v9, 0x1

    if-nez v2, :cond_18

    .line 1385
    new-instance v15, Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    invoke-direct {v15, v2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    .line 1386
    iget-object v2, v15, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    invoke-interface {v1, v2, v4, v10}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 1387
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->a:I

    and-int/2addr v2, v9

    const/16 v10, 0x24

    const/16 v11, 0x15

    if-eqz v2, :cond_1

    .line 1388
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->e:I

    if-eq v2, v9, :cond_3

    const/16 v11, 0x24

    goto :goto_1

    .line 1389
    :cond_1
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->e:I

    if-eq v2, v9, :cond_2

    goto :goto_1

    :cond_2
    const/16 v11, 0xd

    .line 2125
    :cond_3
    :goto_1
    iget v2, v15, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/lit8 v12, v11, 0x4

    const v13, 0x58696e67

    const v14, 0x496e666f

    const v3, 0x56425249

    if-lt v2, v12, :cond_4

    .line 1443
    invoke-virtual {v15, v11}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1444
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    if-eq v2, v13, :cond_6

    if-ne v2, v14, :cond_4

    goto :goto_2

    .line 3125
    :cond_4
    iget v2, v15, Landroidx/media2/exoplayer/external/util/p;->c:I

    const/16 v12, 0x28

    if-lt v2, v12, :cond_5

    .line 1450
    invoke-virtual {v15, v10}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1451
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v2

    if-ne v2, v3, :cond_5

    const v2, 0x56425249

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    :cond_6
    :goto_2
    const/16 v16, 0x0

    if-eq v2, v13, :cond_9

    if-ne v2, v14, :cond_7

    goto :goto_3

    :cond_7
    if-ne v2, v3, :cond_8

    .line 1408
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v10

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v12

    iget-object v14, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    invoke-static/range {v10 .. v15}, Landroidx/media2/exoplayer/external/extractor/c/f;->a(JJLandroidx/media2/exoplayer/external/extractor/m;Landroidx/media2/exoplayer/external/util/p;)Landroidx/media2/exoplayer/external/extractor/c/f;

    move-result-object v2

    .line 1409
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    goto/16 :goto_8

    .line 1413
    :cond_8
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    move-object/from16 v2, v16

    goto/16 :goto_8

    .line 1393
    :cond_9
    :goto_3
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v12

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v18

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    .line 4055
    iget v10, v3, Landroidx/media2/exoplayer/external/extractor/m;->g:I

    .line 4056
    iget v7, v3, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    .line 4058
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v8

    and-int/lit8 v14, v8, 0x1

    if-ne v14, v9, :cond_e

    .line 4060
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v14

    if-nez v14, :cond_a

    goto/16 :goto_5

    :cond_a
    move/from16 v27, v2

    int-to-long v1, v14

    int-to-long v9, v10

    mul-long v22, v9, v5

    int-to-long v9, v7

    move-wide/from16 v20, v1

    move-wide/from16 v24, v9

    .line 4064
    invoke-static/range {v20 .. v25}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide v21

    const/4 v1, 0x6

    and-int/lit8 v2, v8, 0x6

    if-eq v2, v1, :cond_b

    .line 4068
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/c/g;

    iget v2, v3, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    move-object/from16 v17, v1

    move/from16 v20, v2

    invoke-direct/range {v17 .. v22}, Landroidx/media2/exoplayer/external/extractor/c/g;-><init>(JIJ)V

    move-object v2, v1

    goto :goto_6

    .line 4071
    :cond_b
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v1

    int-to-long v1, v1

    const/16 v7, 0x64

    new-array v8, v7, [J

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_c

    .line 4074
    invoke-virtual {v15}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v10

    move-object/from16 v17, v15

    int-to-long v14, v10

    aput-wide v14, v8, v9

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v15, v17

    goto :goto_4

    :cond_c
    const-wide/16 v9, -0x1

    cmp-long v7, v12, v9

    if-eqz v7, :cond_d

    add-long v9, v18, v1

    cmp-long v7, v12, v9

    if-eqz v7, :cond_d

    const/16 v7, 0x43

    .line 4082
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "XING data size mismatch: "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "XingSeeker"

    invoke-static {v9, v7}, Landroidx/media2/exoplayer/external/util/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4084
    :cond_d
    new-instance v7, Landroidx/media2/exoplayer/external/extractor/c/g;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    move-object/from16 v17, v7

    move/from16 v20, v3

    move-wide/from16 v23, v1

    move-object/from16 v25, v8

    invoke-direct/range {v17 .. v25}, Landroidx/media2/exoplayer/external/extractor/c/g;-><init>(JIJJ[J)V

    move-object v2, v7

    goto :goto_6

    :cond_e
    :goto_5
    move/from16 v27, v2

    move-object/from16 v2, v16

    :goto_6
    if-eqz v2, :cond_10

    .line 1394
    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/extractor/k;->a()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1396
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    add-int/lit16 v11, v11, 0x8d

    move-object/from16 v1, p1

    .line 1397
    invoke-interface {v1, v11}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 1398
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v7, 0x3

    invoke-interface {v1, v3, v4, v7}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 1399
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1400
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7}, Landroidx/media2/exoplayer/external/util/p;->f()I

    move-result v7

    shr-int/lit8 v8, v7, 0xc

    and-int/lit16 v7, v7, 0xfff

    if-gtz v8, :cond_f

    if-lez v7, :cond_11

    .line 5071
    :cond_f
    iput v8, v3, Landroidx/media2/exoplayer/external/extractor/k;->a:I

    .line 5072
    iput v7, v3, Landroidx/media2/exoplayer/external/extractor/k;->b:I

    goto :goto_7

    :cond_10
    move-object/from16 v1, p1

    .line 1402
    :cond_11
    :goto_7
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    invoke-interface {v1, v3}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    if-eqz v2, :cond_12

    .line 1403
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/c/c$a;->j_()Z

    move-result v3

    if-nez v3, :cond_12

    move/from16 v3, v27

    const v7, 0x496e666f

    if-ne v3, v7, :cond_12

    .line 1405
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/c/c;->c(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/c/c$a;

    move-result-object v2

    .line 195
    :cond_12
    :goto_8
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->l:Landroidx/media2/exoplayer/external/metadata/Metadata;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v7

    invoke-static {v3, v7, v8}, Landroidx/media2/exoplayer/external/extractor/c/c;->a(Landroidx/media2/exoplayer/external/metadata/Metadata;J)Landroidx/media2/exoplayer/external/extractor/c/b;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 197
    iput-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    goto :goto_9

    :cond_13
    if-eqz v2, :cond_14

    .line 199
    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    .line 201
    :cond_14
    :goto_9
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    if-eqz v2, :cond_15

    .line 202
    invoke-interface {v2}, Landroidx/media2/exoplayer/external/extractor/c/c$a;->j_()Z

    move-result v2

    if-nez v2, :cond_16

    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->c:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_16

    .line 203
    :cond_15
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/c/c;->c(Landroidx/media2/exoplayer/external/extractor/h;)Landroidx/media2/exoplayer/external/extractor/c/c$a;

    move-result-object v2

    iput-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    .line 205
    :cond_16
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->i:Landroidx/media2/exoplayer/external/extractor/i;

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/i;->a(Landroidx/media2/exoplayer/external/extractor/o;)V

    .line 206
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->j:Landroidx/media2/exoplayer/external/extractor/q;

    const/16 v26, 0x0

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget-object v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->b:Ljava/lang/String;

    const/16 v28, 0x0

    const/16 v29, -0x1

    const/16 v30, 0x1000

    iget-object v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v7, v7, Landroidx/media2/exoplayer/external/extractor/m;->e:I

    iget-object v8, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v8, v8, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    const/16 v33, -0x1

    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    iget v9, v9, Landroidx/media2/exoplayer/external/extractor/k;->a:I

    iget-object v10, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->g:Landroidx/media2/exoplayer/external/extractor/k;

    iget v10, v10, Landroidx/media2/exoplayer/external/extractor/k;->b:I

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    .line 222
    iget v11, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->c:I

    and-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_17

    move-object/from16 v40, v16

    goto :goto_a

    :cond_17
    iget-object v11, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->l:Landroidx/media2/exoplayer/external/metadata/Metadata;

    move-object/from16 v40, v11

    :goto_a
    move-object/from16 v27, v3

    move/from16 v31, v7

    move/from16 v32, v8

    move/from16 v34, v9

    move/from16 v35, v10

    .line 207
    invoke-static/range {v26 .. v40}, Landroidx/media2/exoplayer/external/Format;->createAudioSampleFormat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIIIILjava/util/List;Landroidx/media2/exoplayer/external/drm/DrmInitData;ILjava/lang/String;Landroidx/media2/exoplayer/external/metadata/Metadata;)Landroidx/media2/exoplayer/external/Format;

    move-result-object v3

    .line 206
    invoke-interface {v2, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/Format;)V

    .line 223
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->p:J

    goto :goto_b

    .line 224
    :cond_18
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->p:J

    const-wide/16 v7, 0x0

    cmp-long v9, v2, v7

    if-eqz v9, :cond_19

    .line 225
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v2

    .line 226
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->p:J

    cmp-long v9, v2, v7

    if-gez v9, :cond_19

    sub-long/2addr v7, v2

    long-to-int v2, v7

    .line 228
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 5237
    :cond_19
    :goto_b
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    if-nez v2, :cond_1e

    .line 5238
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 5239
    invoke-direct/range {p0 .. p1}, Landroidx/media2/exoplayer/external/extractor/c/c;->b(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, -0x1

    return v2

    :cond_1a
    const/4 v2, -0x1

    .line 5242
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3, v4}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 5243
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->e:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v3}, Landroidx/media2/exoplayer/external/util/p;->i()I

    move-result v3

    .line 5244
    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->k:I

    int-to-long v7, v7

    invoke-static {v3, v7, v8}, Landroidx/media2/exoplayer/external/extractor/c/c;->a(IJ)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 5245
    invoke-static {v3}, Landroidx/media2/exoplayer/external/extractor/m;->a(I)I

    move-result v7

    if-ne v7, v2, :cond_1b

    goto :goto_c

    .line 5251
    :cond_1b
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    invoke-static {v3, v2}, Landroidx/media2/exoplayer/external/extractor/m;->a(ILandroidx/media2/exoplayer/external/extractor/m;)Z

    .line 5252
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v9, v2, v7

    if-nez v9, :cond_1c

    .line 5253
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v9

    invoke-interface {v2, v9, v10}, Landroidx/media2/exoplayer/external/extractor/c/c$a;->c(J)J

    move-result-wide v2

    iput-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    .line 5254
    iget-wide v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->d:J

    cmp-long v9, v2, v7

    if-eqz v9, :cond_1c

    .line 5255
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->m:Landroidx/media2/exoplayer/external/extractor/c/c$a;

    const-wide/16 v7, 0x0

    invoke-interface {v2, v7, v8}, Landroidx/media2/exoplayer/external/extractor/c/c$a;->c(J)J

    move-result-wide v2

    .line 5256
    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    iget-wide v9, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->d:J

    sub-long/2addr v9, v2

    add-long/2addr v7, v9

    iput-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    .line 5259
    :cond_1c
    iget-object v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v2, v2, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    goto :goto_d

    :cond_1d
    :goto_c
    const/4 v2, 0x1

    .line 5247
    invoke-interface {v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b(I)V

    .line 5248
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->k:I

    return v4

    :cond_1e
    :goto_d
    const/4 v2, 0x1

    .line 5261
    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->j:Landroidx/media2/exoplayer/external/extractor/q;

    iget v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    invoke-interface {v3, v1, v7, v2}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1f

    return v2

    .line 5265
    :cond_1f
    iget v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    sub-int/2addr v2, v1

    iput v2, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    if-lez v2, :cond_20

    return v4

    .line 5269
    :cond_20
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    iget-wide v7, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->o:J

    mul-long v7, v7, v5

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->d:I

    int-to-long v5, v3

    div-long/2addr v7, v5

    add-long v10, v1, v7

    .line 5270
    iget-object v9, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->j:Landroidx/media2/exoplayer/external/extractor/q;

    const/4 v12, 0x1

    iget-object v1, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v13, v1, Landroidx/media2/exoplayer/external/extractor/m;->c:I

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v9 .. v15}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 5272
    iget-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->o:J

    iget-object v3, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->f:Landroidx/media2/exoplayer/external/extractor/m;

    iget v3, v3, Landroidx/media2/exoplayer/external/extractor/m;->g:I

    int-to-long v5, v3

    add-long/2addr v1, v5

    iput-wide v1, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->o:J

    .line 5273
    iput v4, v0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    return v4
.end method

.method public final a(JJ)V
    .locals 0

    const/4 p1, 0x0

    .line 170
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->k:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 171
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->n:J

    const-wide/16 p2, 0x0

    .line 172
    iput-wide p2, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->o:J

    .line 173
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->q:I

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 2

    .line 163
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->i:Landroidx/media2/exoplayer/external/extractor/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 164
    invoke-interface {p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/i;->a(II)Landroidx/media2/exoplayer/external/extractor/q;

    move-result-object p1

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->j:Landroidx/media2/exoplayer/external/extractor/q;

    .line 165
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/c/c;->i:Landroidx/media2/exoplayer/external/extractor/i;

    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/i;->a()V

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    invoke-direct {p0, p1, v0}, Landroidx/media2/exoplayer/external/extractor/c/c;->a(Landroidx/media2/exoplayer/external/extractor/h;Z)Z

    move-result p1

    return p1
.end method
