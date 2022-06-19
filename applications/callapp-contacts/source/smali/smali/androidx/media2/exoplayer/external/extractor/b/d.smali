.class public final Landroidx/media2/exoplayer/external/extractor/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/media2/exoplayer/external/extractor/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media2/exoplayer/external/extractor/b/d$b;,
        Landroidx/media2/exoplayer/external/extractor/b/d$c;,
        Landroidx/media2/exoplayer/external/extractor/b/d$a;
    }
.end annotation


# static fields
.field private static final J:[B

.field private static final K:[B

.field private static final L:[B

.field private static final M:[B

.field private static final N:Ljava/util/UUID;

.field public static final a:Landroidx/media2/exoplayer/external/extractor/j;

.field static final b:[B


# instance fields
.field A:I

.field B:I

.field C:[I

.field D:I

.field E:I

.field F:I

.field G:I

.field H:Z

.field I:Landroidx/media2/exoplayer/external/extractor/i;

.field private final O:Landroidx/media2/exoplayer/external/extractor/b/c;

.field private final P:Landroidx/media2/exoplayer/external/util/p;

.field private final Q:Landroidx/media2/exoplayer/external/util/p;

.field private final R:Landroidx/media2/exoplayer/external/util/p;

.field private final S:Landroidx/media2/exoplayer/external/util/p;

.field private final T:Landroidx/media2/exoplayer/external/util/p;

.field private final U:Landroidx/media2/exoplayer/external/util/p;

.field private final V:Landroidx/media2/exoplayer/external/util/p;

.field private W:Ljava/nio/ByteBuffer;

.field private X:J

.field private Y:I

.field private Z:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:B

.field private ae:I

.field private af:I

.field private ag:I

.field private ah:Z

.field final c:Landroidx/media2/exoplayer/external/extractor/b/g;

.field final d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/media2/exoplayer/external/extractor/b/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final e:Z

.field final f:Landroidx/media2/exoplayer/external/util/p;

.field final g:Landroidx/media2/exoplayer/external/util/p;

.field final h:Landroidx/media2/exoplayer/external/util/p;

.field i:J

.field j:J

.field k:J

.field l:J

.field m:J

.field n:Landroidx/media2/exoplayer/external/extractor/b/d$b;

.field o:Z

.field p:I

.field q:J

.field r:Z

.field s:J

.field t:J

.field u:Landroidx/media2/exoplayer/external/util/k;

.field v:Landroidx/media2/exoplayer/external/util/k;

.field w:Z

.field x:I

.field y:J

.field z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 73
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/b/e;->a:Landroidx/media2/exoplayer/external/extractor/j;

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/b/d;->a:Landroidx/media2/exoplayer/external/extractor/j;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 253
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/b/d;->J:[B

    const/16 v1, 0xc

    new-array v1, v1, [B

    .line 265
    fill-array-data v1, :array_1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/b/d;->K:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 280
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Landroidx/media2/exoplayer/external/extractor/b/d;->b:[B

    new-array v0, v0, [B

    .line 289
    fill-array-data v0, :array_2

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/b/d;->L:[B

    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 306
    fill-array-data v0, :array_3

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/b/d;->M:[B

    .line 328
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Landroidx/media2/exoplayer/external/extractor/b/d;->N:Ljava/util/UUID;

    return-void

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data

    :array_2
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_3
    .array-data 1
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
        0x20t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 403
    invoke-direct {p0, v0}, Landroidx/media2/exoplayer/external/extractor/b/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 407
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/b/a;

    invoke-direct {v0}, Landroidx/media2/exoplayer/external/extractor/b/a;-><init>()V

    invoke-direct {p0, v0, p1}, Landroidx/media2/exoplayer/external/extractor/b/d;-><init>(Landroidx/media2/exoplayer/external/extractor/b/c;I)V

    return-void
.end method

.method constructor <init>(Landroidx/media2/exoplayer/external/extractor/b/c;I)V
    .locals 4

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 349
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->j:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 350
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->k:J

    .line 351
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->l:J

    .line 352
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->m:J

    .line 366
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->s:J

    .line 367
    iput-wide v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->X:J

    .line 368
    iput-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->t:J

    .line 411
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->O:Landroidx/media2/exoplayer/external/extractor/b/c;

    .line 412
    new-instance v0, Landroidx/media2/exoplayer/external/extractor/b/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/media2/exoplayer/external/extractor/b/d$a;-><init>(Landroidx/media2/exoplayer/external/extractor/b/d;Landroidx/media2/exoplayer/external/extractor/b/d$1;)V

    invoke-interface {p1, v0}, Landroidx/media2/exoplayer/external/extractor/b/c;->a(Landroidx/media2/exoplayer/external/extractor/b/b;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 413
    :goto_0
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->e:Z

    .line 414
    new-instance p1, Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/extractor/b/g;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    .line 415
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    .line 416
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 417
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->R:Landroidx/media2/exoplayer/external/util/p;

    .line 418
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->g:Landroidx/media2/exoplayer/external/util/p;

    .line 419
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    sget-object v0, Landroidx/media2/exoplayer/external/util/n;->a:[B

    invoke-direct {p1, v0}, Landroidx/media2/exoplayer/external/util/p;-><init>([B)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->P:Landroidx/media2/exoplayer/external/util/p;

    .line 420
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Q:Landroidx/media2/exoplayer/external/util/p;

    .line 421
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    .line 422
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    .line 423
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/util/p;-><init>(I)V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->U:Landroidx/media2/exoplayer/external/util/p;

    .line 424
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->V:Landroidx/media2/exoplayer/external/util/p;

    .line 425
    new-instance p1, Landroidx/media2/exoplayer/external/util/p;

    invoke-direct {p1}, Landroidx/media2/exoplayer/external/util/p;-><init>()V

    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    return-void
.end method

.method protected static a(I)I
    .locals 0

    sparse-switch p0, :sswitch_data_0

    const/4 p0, 0x0

    return p0

    :sswitch_0
    const/4 p0, 0x5

    return p0

    :sswitch_1
    const/4 p0, 0x4

    return p0

    :sswitch_2
    const/4 p0, 0x1

    return p0

    :sswitch_3
    const/4 p0, 0x3

    return p0

    :sswitch_4
    const/4 p0, 0x2

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_4
        0x86 -> :sswitch_3
        0x88 -> :sswitch_4
        0x9b -> :sswitch_4
        0x9f -> :sswitch_4
        0xa0 -> :sswitch_2
        0xa1 -> :sswitch_1
        0xa3 -> :sswitch_1
        0xa5 -> :sswitch_1
        0xa6 -> :sswitch_2
        0xae -> :sswitch_2
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_4
        0xb5 -> :sswitch_0
        0xb7 -> :sswitch_2
        0xba -> :sswitch_4
        0xbb -> :sswitch_2
        0xd7 -> :sswitch_4
        0xe0 -> :sswitch_2
        0xe1 -> :sswitch_2
        0xe7 -> :sswitch_4
        0xee -> :sswitch_4
        0xf1 -> :sswitch_4
        0xfb -> :sswitch_4
        0x4254 -> :sswitch_4
        0x4255 -> :sswitch_1
        0x4282 -> :sswitch_3
        0x4285 -> :sswitch_4
        0x42f7 -> :sswitch_4
        0x4489 -> :sswitch_0
        0x47e1 -> :sswitch_4
        0x47e2 -> :sswitch_1
        0x47e7 -> :sswitch_2
        0x47e8 -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5031 -> :sswitch_4
        0x5032 -> :sswitch_4
        0x5034 -> :sswitch_2
        0x5035 -> :sswitch_2
        0x536e -> :sswitch_3
        0x53ab -> :sswitch_1
        0x53ac -> :sswitch_4
        0x53b8 -> :sswitch_4
        0x54b0 -> :sswitch_4
        0x54b2 -> :sswitch_4
        0x54ba -> :sswitch_4
        0x55aa -> :sswitch_4
        0x55b0 -> :sswitch_2
        0x55b9 -> :sswitch_4
        0x55ba -> :sswitch_4
        0x55bb -> :sswitch_4
        0x55bc -> :sswitch_4
        0x55bd -> :sswitch_4
        0x55d0 -> :sswitch_2
        0x55d1 -> :sswitch_0
        0x55d2 -> :sswitch_0
        0x55d3 -> :sswitch_0
        0x55d4 -> :sswitch_0
        0x55d5 -> :sswitch_0
        0x55d6 -> :sswitch_0
        0x55d7 -> :sswitch_0
        0x55d8 -> :sswitch_0
        0x55d9 -> :sswitch_0
        0x55da -> :sswitch_0
        0x55ee -> :sswitch_4
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x75a1 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7671 -> :sswitch_4
        0x7672 -> :sswitch_1
        0x7673 -> :sswitch_0
        0x7674 -> :sswitch_0
        0x7675 -> :sswitch_0
        0x22b59c -> :sswitch_3
        0x23e383 -> :sswitch_4
        0x2ad7b1 -> :sswitch_4
        0x114d9b74 -> :sswitch_2
        0x1549a966 -> :sswitch_2
        0x1654ae6b -> :sswitch_2
        0x18538067 -> :sswitch_2
        0x1a45dfa3 -> :sswitch_2
        0x1c53bb6b -> :sswitch_2
        0x1f43b675 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/q;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1528
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 1530
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1531
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {p2, p3, p1}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1533
    invoke-interface {p2, p1, p3, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/extractor/h;IZ)I

    move-result p1

    .line 1535
    :goto_0
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1536
    iget p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr p2, p1

    iput p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    return p1
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/b/d$b;Ljava/lang/String;IJ[B)V
    .locals 9

    .line 1479
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->z:J

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    move-object v8, p6

    invoke-static/range {v1 .. v8}, Landroidx/media2/exoplayer/external/extractor/b/d;->a([BJLjava/lang/String;IJ[B)V

    .line 1483
    iget-object p1, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    .line 14125
    iget p3, p2, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1483
    invoke-interface {p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1484
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    .line 15125
    iget p2, p2, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/2addr p1, p2

    .line 1484
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    return-void
.end method

.method private a(Landroidx/media2/exoplayer/external/extractor/h;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1463
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1464
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    .line 13149
    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v1, v1

    if-ge v1, v0, :cond_0

    .line 1467
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    add-int v2, v0, p3

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    iput-object v2, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    goto :goto_0

    .line 1469
    :cond_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v2, p2

    const/4 v3, 0x0

    invoke-static {p2, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1471
    :goto_0
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1472
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->T:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v0}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    return-void
.end method

.method private static a([BJLjava/lang/String;IJ[B)V
    .locals 11

    const/4 v0, 0x0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    move-object/from16 v1, p7

    move-object v2, v1

    goto :goto_0

    :cond_0
    const-wide v1, 0xd693a400L

    .line 1494
    div-long v1, p1, v1

    long-to-int v2, v1

    mul-int/lit16 v1, v2, 0xe10

    int-to-long v3, v1

    const-wide/32 v5, 0xf4240

    mul-long v3, v3, v5

    sub-long v3, p1, v3

    const-wide/32 v7, 0x3938700

    .line 1496
    div-long v7, v3, v7

    long-to-int v1, v7

    mul-int/lit8 v7, v1, 0x3c

    int-to-long v7, v7

    mul-long v7, v7, v5

    sub-long/2addr v3, v7

    .line 1498
    div-long v7, v3, v5

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v5

    sub-long/2addr v3, v9

    .line 1500
    div-long v3, v3, p5

    long-to-int v4, v3

    .line 1501
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v0

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v2

    const/4 v1, 0x2

    .line 1502
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    const/4 v1, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v5, v1

    move-object v1, p3

    .line 1501
    invoke-static {v3, p3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/ac;->c(Ljava/lang/String;)[B

    move-result-object v1

    move-object/from16 v2, p7

    .line 1504
    :goto_0
    array-length v2, v2

    move-object v3, p0

    move v4, p4

    invoke-static {v1, v0, p0, p4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1648
    new-array p0, p1, [I

    return-object p0

    .line 1649
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 1653
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static final synthetic a()[Landroidx/media2/exoplayer/external/extractor/g;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/media2/exoplayer/external/extractor/g;

    .line 73
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/b/d;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/b/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static synthetic b()Ljava/util/UUID;
    .locals 1

    .line 70
    sget-object v0, Landroidx/media2/exoplayer/external/extractor/b/d;->N:Ljava/util/UUID;

    return-object v0
.end method

.method protected static b(I)Z
    .locals 1

    const v0, 0x1549a966

    if-eq p0, v0, :cond_1

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_1

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_1

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private c()V
    .locals 1

    const/4 v0, 0x0

    .line 1263
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1264
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    .line 1265
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->af:I

    .line 1266
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Z:Z

    .line 1267
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->aa:Z

    .line 1268
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ac:Z

    .line 1269
    iput v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ae:I

    .line 1270
    iput-byte v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ad:B

    .line 1271
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ab:Z

    .line 1272
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v0}, Landroidx/media2/exoplayer/external/util/p;->a()V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/n;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 459
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ah:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 461
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ah:Z

    if-nez v3, :cond_3

    .line 462
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->O:Landroidx/media2/exoplayer/external/extractor/b/c;

    invoke-interface {v2, p1}, Landroidx/media2/exoplayer/external/extractor/b/c;->a(Landroidx/media2/exoplayer/external/extractor/h;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->c()J

    move-result-wide v3

    .line 4586
    iget-boolean v5, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->r:Z

    if-eqz v5, :cond_1

    .line 4587
    iput-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->X:J

    .line 4588
    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->s:J

    iput-wide v3, p2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 4589
    iput-boolean v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->r:Z

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 4594
    :cond_1
    iget-boolean v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->o:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->X:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 4595
    iput-wide v3, p2, Landroidx/media2/exoplayer/external/extractor/n;->a:J

    .line 4596
    iput-wide v5, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->X:J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-nez v2, :cond_6

    const/4 p1, 0x0

    .line 468
    :goto_2
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-ge p1, p2, :cond_5

    .line 469
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    .line 5095
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    if-eqz v1, :cond_4

    .line 5096
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    .line 5761
    iget-boolean v2, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->b:Z

    if-eqz v2, :cond_4

    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    if-lez v2, :cond_4

    .line 5762
    iget-object v3, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    iget-wide v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->e:J

    iget v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->f:I

    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->d:I

    const/4 v8, 0x0

    iget-object v9, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    invoke-interface/range {v3 .. v9}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    .line 5763
    iput v0, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_5
    const/4 p1, -0x1

    return p1

    :cond_6
    return v0
.end method

.method final a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media2/exoplayer/external/ParserException;
        }
    .end annotation

    .line 1603
    iget-wide v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->k:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1606
    invoke-static/range {v0 .. v5}, Landroidx/media2/exoplayer/external/util/ac;->b(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1604
    :cond_0
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 441
    iput-wide p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->t:J

    const/4 p1, 0x0

    .line 442
    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->x:I

    .line 443
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->O:Landroidx/media2/exoplayer/external/extractor/b/c;

    invoke-interface {p2}, Landroidx/media2/exoplayer/external/extractor/b/c;->a()V

    .line 444
    iget-object p2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->c:Landroidx/media2/exoplayer/external/extractor/b/g;

    invoke-virtual {p2}, Landroidx/media2/exoplayer/external/extractor/b/g;->a()V

    .line 445
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/b/d;->c()V

    const/4 p2, 0x0

    .line 446
    :goto_0
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 447
    iget-object p3, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->d:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/media2/exoplayer/external/extractor/b/d$b;

    .line 3102
    iget-object p4, p3, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    if-eqz p4, :cond_0

    .line 3103
    iget-object p3, p3, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    .line 3722
    iput-boolean p1, p3, Landroidx/media2/exoplayer/external/extractor/b/d$c;->b:Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method final a(Landroidx/media2/exoplayer/external/extractor/b/d$b;J)V
    .locals 9

    .line 1232
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    if-eqz v0, :cond_0

    .line 1233
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    invoke-virtual {v0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d$c;->a(Landroidx/media2/exoplayer/external/extractor/b/d$b;J)V

    goto :goto_1

    .line 1235
    :cond_0
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v4, 0x13

    const-wide/16 v5, 0x3e8

    .line 1236
    sget-object v7, Landroidx/media2/exoplayer/external/extractor/b/d;->K:[B

    const-string v3, "%02d:%02d:%02d,%03d"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/b/d$b;Ljava/lang/String;IJ[B)V

    goto :goto_0

    .line 1242
    :cond_1
    iget-object v0, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v4, 0x15

    const-wide/16 v5, 0x2710

    .line 1243
    sget-object v7, Landroidx/media2/exoplayer/external/extractor/b/d;->M:[B

    const-string v3, "%01d:%02d:%02d:%02d"

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/b/d$b;Ljava/lang/String;IJ[B)V

    .line 1250
    :cond_2
    :goto_0
    iget v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_3

    .line 1252
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    .line 6125
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1253
    iget-object v1, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v1, v2, v0}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1254
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v1, v0

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    .line 1256
    :cond_3
    iget-object v2, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    iget v5, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    const/4 v7, 0x0

    iget-object v8, p1, Landroidx/media2/exoplayer/external/extractor/b/d$b;->i:Landroidx/media2/exoplayer/external/extractor/q$a;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Landroidx/media2/exoplayer/external/extractor/q;->a(JIIILandroidx/media2/exoplayer/external/extractor/q$a;)V

    :goto_1
    const/4 p1, 0x1

    .line 1258
    iput-boolean p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ah:Z

    .line 1259
    invoke-direct {p0}, Landroidx/media2/exoplayer/external/extractor/b/d;->c()V

    return-void
.end method

.method a(Landroidx/media2/exoplayer/external/extractor/h;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1281
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 7125
    iget v0, v0, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-lt v0, p2, :cond_0

    return-void

    .line 1284
    :cond_0
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 7149
    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 1285
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v2, v2, Landroidx/media2/exoplayer/external/util/p;->a:[B

    array-length v2, v2

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 8125
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1285
    invoke-virtual {v0, v1, v2}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 1288
    :cond_1
    iget-object v0, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v0, v0, Landroidx/media2/exoplayer/external/util/p;->a:[B

    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 9125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    .line 1288
    iget-object v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    .line 10125
    iget v2, v2, Landroidx/media2/exoplayer/external/util/p;->c:I

    sub-int v2, p2, v2

    .line 1288
    invoke-interface {p1, v0, v1, v2}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1289
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, p2}, Landroidx/media2/exoplayer/external/util/p;->b(I)V

    return-void
.end method

.method a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/b/d$b;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1294
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1295
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/b/d;->J:[B

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;[BI)V

    return-void

    .line 1297
    :cond_0
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    sget-object p2, Landroidx/media2/exoplayer/external/extractor/b/d;->L:[B

    invoke-direct {p0, p1, p2, p3}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;[BI)V

    return-void

    .line 1302
    :cond_1
    iget-object v0, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->V:Landroidx/media2/exoplayer/external/extractor/q;

    .line 1303
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Z:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    .line 1304
    iget-boolean v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->g:Z

    if-eqz v1, :cond_e

    .line 1307
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    .line 1308
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->aa:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1309
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v1, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1310
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1311
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1314
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v1, v1, v5

    iput-byte v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ad:B

    .line 1315
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->aa:Z

    goto :goto_0

    .line 1312
    :cond_2
    new-instance p1, Landroidx/media2/exoplayer/external/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Landroidx/media2/exoplayer/external/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1317
    :cond_3
    :goto_0
    iget-byte v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ad:B

    and-int/lit8 v7, v1, 0x1

    if-ne v7, v4, :cond_4

    const/4 v7, 0x1

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    :goto_1
    if-eqz v7, :cond_f

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    .line 1320
    :goto_2
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    .line 1321
    iget-boolean v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ab:Z

    if-nez v7, :cond_7

    .line 1322
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->U:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/16 v8, 0x8

    invoke-interface {p1, v7, v5, v8}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1323
    iget v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr v7, v8

    iput v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1324
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ab:Z

    .line 1326
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    aput-byte v6, v7, v5

    .line 1327
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1328
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v6, v4}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1329
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v6, v4

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    .line 1331
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->U:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1332
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->U:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v6, v8}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1333
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v6, v8

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    :cond_7
    if-eqz v1, :cond_f

    .line 1336
    iget-boolean v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ac:Z

    if-nez v1, :cond_8

    .line 1337
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v1, v5, v4}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1338
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr v1, v4

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1339
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1340
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->c()I

    move-result v1

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ae:I

    .line 1341
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ac:Z

    .line 1343
    :cond_8
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ae:I

    mul-int/lit8 v1, v1, 0x4

    .line 1344
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v1}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1345
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, v6, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {p1, v6, v5, v1}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    .line 1346
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr v6, v1

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1347
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ae:I

    div-int/2addr v1, v2

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    .line 1349
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 1350
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1351
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    .line 1353
    :cond_a
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1354
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1362
    :goto_4
    iget v8, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ae:I

    if-ge v1, v8, :cond_c

    .line 1364
    iget-object v8, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v8}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v8

    .line 1365
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1366
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1369
    :cond_b
    iget-object v9, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1372
    :cond_c
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1373
    rem-int/2addr v8, v2

    if-ne v8, v4, :cond_d

    .line 1374
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1376
    :cond_d
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1377
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1379
    :goto_6
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->V:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->W:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 1380
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->V:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v1, v6}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1381
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v1, v6

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    goto :goto_7

    .line 1384
    :cond_e
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    if-eqz v1, :cond_f

    .line 1386
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    iget-object v6, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    iget-object v7, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->h:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Landroidx/media2/exoplayer/external/util/p;->a([BI)V

    .line 1389
    :cond_f
    :goto_7
    iget v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->f:I

    if-lez v1, :cond_10

    .line 1390
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    .line 1391
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->h:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1}, Landroidx/media2/exoplayer/external/util/p;->a()V

    .line 1394
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v1, v3}, Landroidx/media2/exoplayer/external/util/p;->a(I)V

    .line 1395
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    .line 1396
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v4

    .line 1397
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v1, v2

    .line 1398
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    aput-byte v7, v1, v6

    .line 1399
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->f:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1400
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v1, v3

    iput v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    .line 1403
    :cond_10
    iput-boolean v4, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Z:Z

    .line 1405
    :cond_11
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    .line 11125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    add-int/2addr p3, v1

    .line 1407
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 1439
    :cond_12
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    if-eqz v1, :cond_16

    .line 1440
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    .line 12125
    iget v1, v1, Landroidx/media2/exoplayer/external/util/p;->c:I

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 1440
    :goto_8
    invoke-static {v1}, Landroidx/media2/exoplayer/external/util/a;->b(Z)V

    .line 1441
    iget-object v1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->R:Landroidx/media2/exoplayer/external/extractor/b/d$c;

    iget v2, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->F:I

    .line 12727
    iget-boolean v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->b:Z

    if-nez v6, :cond_14

    .line 12728
    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->a:[B

    const/16 v7, 0xa

    invoke-interface {p1, v6, v5, v7}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 12729
    invoke-interface {p1}, Landroidx/media2/exoplayer/external/extractor/h;->a()V

    .line 12730
    iget-object v6, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->a:[B

    invoke-static {v6}, Landroidx/media2/exoplayer/external/audio/a;->b([B)I

    move-result v6

    if-eqz v6, :cond_16

    .line 12733
    iput-boolean v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->b:Z

    .line 12734
    iput v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    .line 12736
    :cond_14
    iget v4, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->c:I

    if-nez v4, :cond_15

    .line 12738
    iput v2, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->f:I

    .line 12739
    iput v5, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->d:I

    .line 12741
    :cond_15
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->d:I

    add-int/2addr v2, p3

    iput v2, v1, Landroidx/media2/exoplayer/external/extractor/b/d$c;->d:I

    .line 1443
    :cond_16
    :goto_9
    iget v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    if-ge v1, p3, :cond_1a

    sub-int v1, p3, v1

    .line 1444
    invoke-direct {p0, p1, v0, v1}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/q;I)I

    goto :goto_9

    .line 1412
    :cond_17
    :goto_a
    iget-object v1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Q:Landroidx/media2/exoplayer/external/util/p;

    iget-object v1, v1, Landroidx/media2/exoplayer/external/util/p;->a:[B

    .line 1413
    aput-byte v5, v1, v5

    .line 1414
    aput-byte v5, v1, v4

    .line 1415
    aput-byte v5, v1, v2

    .line 1416
    iget v2, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->W:I

    .line 1417
    iget v4, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->W:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1421
    :goto_b
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    if-ge v6, p3, :cond_1a

    .line 1422
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->af:I

    if-nez v6, :cond_19

    .line 11513
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/p;->b()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v2, v6

    .line 11514
    invoke-interface {p1, v1, v7, v8}, Landroidx/media2/exoplayer/external/extractor/h;->b([BII)V

    if-lez v6, :cond_18

    .line 11516
    iget-object v7, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->S:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v7, v1, v4, v6}, Landroidx/media2/exoplayer/external/util/p;->a([BII)V

    .line 11518
    :cond_18
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    add-int/2addr v6, v2

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Y:I

    .line 1426
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Q:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1427
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->Q:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6}, Landroidx/media2/exoplayer/external/util/p;->n()I

    move-result v6

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->af:I

    .line 1429
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->P:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v6, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1430
    iget-object v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->P:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, v6, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1431
    iget v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr v6, v3

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    goto :goto_b

    .line 1435
    :cond_19
    invoke-direct {p0, p1, v0, v6}, Landroidx/media2/exoplayer/external/extractor/b/d;->a(Landroidx/media2/exoplayer/external/extractor/h;Landroidx/media2/exoplayer/external/extractor/q;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->af:I

    goto :goto_b

    .line 1448
    :cond_1a
    iget-object p1, p2, Landroidx/media2/exoplayer/external/extractor/b/d$b;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 1455
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->R:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {p1, v5}, Landroidx/media2/exoplayer/external/util/p;->c(I)V

    .line 1456
    iget-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->R:Landroidx/media2/exoplayer/external/util/p;

    invoke-interface {v0, p1, v3}, Landroidx/media2/exoplayer/external/extractor/q;->a(Landroidx/media2/exoplayer/external/util/p;I)V

    .line 1457
    iget p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    add-int/2addr p1, v3

    iput p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->ag:I

    :cond_1b
    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/i;)V
    .locals 0

    .line 435
    iput-object p1, p0, Landroidx/media2/exoplayer/external/extractor/b/d;->I:Landroidx/media2/exoplayer/external/extractor/i;

    return-void
.end method

.method public final a(Landroidx/media2/exoplayer/external/extractor/h;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 430
    new-instance v1, Landroidx/media2/exoplayer/external/extractor/b/f;

    invoke-direct {v1}, Landroidx/media2/exoplayer/external/extractor/b/f;-><init>()V

    .line 3052
    invoke-interface/range {p1 .. p1}, Landroidx/media2/exoplayer/external/extractor/h;->d()J

    move-result-wide v2

    const-wide/16 v4, 0x400

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_1

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    goto :goto_0

    :cond_0
    move-wide v4, v2

    :cond_1
    :goto_0
    long-to-int v5, v4

    .line 3056
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v0, v4, v6, v7}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    .line 3057
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->a:Landroidx/media2/exoplayer/external/util/p;

    invoke-virtual {v4}, Landroidx/media2/exoplayer/external/util/p;->g()J

    move-result-wide v9

    .line 3058
    iput v7, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_2

    .line 3060
    iget v7, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    add-int/2addr v7, v4

    iput v7, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    if-eq v7, v5, :cond_7

    .line 3063
    iget-object v7, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v7, v7, Landroidx/media2/exoplayer/external/util/p;->a:[B

    invoke-interface {v0, v7, v6, v4}, Landroidx/media2/exoplayer/external/extractor/h;->c([BII)V

    const/16 v4, 0x8

    shl-long/2addr v9, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 3065
    iget-object v4, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->a:Landroidx/media2/exoplayer/external/util/p;

    iget-object v4, v4, Landroidx/media2/exoplayer/external/util/p;->a:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    goto :goto_1

    .line 3069
    :cond_2
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/b/f;->a(Landroidx/media2/exoplayer/external/extractor/h;)J

    move-result-wide v9

    .line 3070
    iget v5, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_7

    if-eqz v8, :cond_3

    add-long v7, v11, v9

    cmp-long v5, v7, v2

    if-ltz v5, :cond_3

    goto :goto_4

    .line 3077
    :cond_3
    :goto_2
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    int-to-long v2, v2

    add-long v7, v11, v9

    cmp-long v5, v2, v7

    if-gez v5, :cond_6

    .line 3078
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/b/f;->a(Landroidx/media2/exoplayer/external/extractor/h;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-eqz v5, :cond_7

    .line 3082
    invoke-virtual {v1, v0}, Landroidx/media2/exoplayer/external/extractor/b/f;->a(Landroidx/media2/exoplayer/external/extractor/h;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v5, v2, v7

    if-ltz v5, :cond_5

    const-wide/32 v7, 0x7fffffff

    cmp-long v15, v2, v7

    if-lez v15, :cond_4

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_3

    long-to-int v3, v2

    .line 3088
    invoke-interface {v0, v3}, Landroidx/media2/exoplayer/external/extractor/h;->c(I)V

    .line 3089
    iget v2, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    goto :goto_2

    :cond_5
    :goto_3
    return v6

    .line 3092
    :cond_6
    iget v0, v1, Landroidx/media2/exoplayer/external/extractor/b/f;->b:I

    int-to-long v0, v0

    cmp-long v2, v0, v7

    if-nez v2, :cond_7

    return v4

    :cond_7
    :goto_4
    return v6
.end method
