.class public final Lcom/google/android/exoplayer2/extractor/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/extractor/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/extractor/d/d$b;,
        Lcom/google/android/exoplayer2/extractor/d/d$c;,
        Lcom/google/android/exoplayer2/extractor/d/d$a;
    }
.end annotation


# static fields
.field private static final K:[B

.field private static final L:[B

.field private static final M:Ljava/util/UUID;

.field public static final a:Lcom/google/android/exoplayer2/extractor/l;

.field static final b:[B

.field static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field A:J

.field B:I

.field C:I

.field D:[I

.field E:I

.field F:I

.field G:I

.field H:I

.field I:Z

.field J:Lcom/google/android/exoplayer2/extractor/j;

.field private final N:Lcom/google/android/exoplayer2/extractor/d/c;

.field private final O:Lcom/google/android/exoplayer2/util/u;

.field private final P:Lcom/google/android/exoplayer2/util/u;

.field private final Q:Lcom/google/android/exoplayer2/util/u;

.field private final R:Lcom/google/android/exoplayer2/util/u;

.field private final S:Lcom/google/android/exoplayer2/util/u;

.field private final T:Lcom/google/android/exoplayer2/util/u;

.field private final U:Lcom/google/android/exoplayer2/util/u;

.field private V:Ljava/nio/ByteBuffer;

.field private W:J

.field private X:Z

.field private Y:I

.field private Z:I

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:Z

.field private ae:I

.field private af:B

.field private ag:Z

.field final d:Lcom/google/android/exoplayer2/extractor/d/f;

.field final e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/exoplayer2/extractor/d/d$b;",
            ">;"
        }
    .end annotation
.end field

.field final f:Z

.field final g:Lcom/google/android/exoplayer2/util/u;

.field final h:Lcom/google/android/exoplayer2/util/u;

.field final i:Lcom/google/android/exoplayer2/util/u;

.field j:J

.field k:J

.field l:J

.field m:J

.field n:J

.field o:Lcom/google/android/exoplayer2/extractor/d/d$b;

.field p:Z

.field q:I

.field r:J

.field s:Z

.field t:J

.field u:J

.field v:Lcom/google/android/exoplayer2/util/o;

.field w:Lcom/google/android/exoplayer2/util/o;

.field x:Z

.field y:I

.field z:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 80
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/-$$Lambda$d$3Jz-9Ap0zV8zZCESImMT84PV1Ns;->INSTANCE:Lcom/google/android/exoplayer2/extractor/d/-$$Lambda$d$3Jz-9Ap0zV8zZCESImMT84PV1Ns;

    sput-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->a:Lcom/google/android/exoplayer2/extractor/l;

    const/16 v0, 0x20

    new-array v1, v0, [B

    .line 280
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/exoplayer2/extractor/d/d;->K:[B

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    .line 302
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/exoplayer2/extractor/d/d;->b:[B

    new-array v0, v0, [B

    .line 315
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->L:[B

    .line 349
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->M:Ljava/util/UUID;

    .line 355
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    .line 356
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-000"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x5a

    .line 357
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-090"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0xb4

    .line 358
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-180"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x10e

    .line 359
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "htc_video_rotA-270"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->c:Ljava/util/Map;

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
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 437
    invoke-direct {p0, v0}, Lcom/google/android/exoplayer2/extractor/d/d;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 441
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/extractor/d/a;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;-><init>(Lcom/google/android/exoplayer2/extractor/d/c;I)V

    return-void
.end method

.method constructor <init>(Lcom/google/android/exoplayer2/extractor/d/c;I)V
    .locals 4

    .line 444
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 382
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->k:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 383
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->l:J

    .line 384
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->m:J

    .line 385
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->n:J

    .line 399
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->t:J

    .line 400
    iput-wide v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->W:J

    .line 401
    iput-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->u:J

    .line 445
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->N:Lcom/google/android/exoplayer2/extractor/d/c;

    .line 446
    new-instance v0, Lcom/google/android/exoplayer2/extractor/d/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/extractor/d/d$a;-><init>(Lcom/google/android/exoplayer2/extractor/d/d;Lcom/google/android/exoplayer2/extractor/d/d$1;)V

    invoke-interface {p1, v0}, Lcom/google/android/exoplayer2/extractor/d/c;->a(Lcom/google/android/exoplayer2/extractor/d/b;)V

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 447
    :goto_0
    iput-boolean p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->f:Z

    .line 448
    new-instance p2, Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/extractor/d/f;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->d:Lcom/google/android/exoplayer2/extractor/d/f;

    .line 449
    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    .line 450
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    const/4 v0, 0x4

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 451
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Q:Lcom/google/android/exoplayer2/util/u;

    .line 452
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->h:Lcom/google/android/exoplayer2/util/u;

    .line 453
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    sget-object v1, Lcom/google/android/exoplayer2/util/s;->a:[B

    invoke-direct {p2, v1}, Lcom/google/android/exoplayer2/util/u;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->O:Lcom/google/android/exoplayer2/util/u;

    .line 454
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->P:Lcom/google/android/exoplayer2/util/u;

    .line 455
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    .line 456
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 457
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    const/16 v0, 0x8

    invoke-direct {p2, v0}, Lcom/google/android/exoplayer2/util/u;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->T:Lcom/google/android/exoplayer2/util/u;

    .line 458
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->U:Lcom/google/android/exoplayer2/util/u;

    .line 459
    new-instance p2, Lcom/google/android/exoplayer2/util/u;

    invoke-direct {p2}, Lcom/google/android/exoplayer2/util/u;-><init>()V

    iput-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    new-array p1, p1, [I

    .line 460
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->D:[I

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
        0x41e4 -> :sswitch_2
        0x41e7 -> :sswitch_4
        0x41ed -> :sswitch_1
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

.method private a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/x;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1720
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v0

    if-lez v0, :cond_0

    .line 1722
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 1723
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {p2, p3, p1}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1725
    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/upstream/e;IZ)I

    move-result p1

    :goto_0
    return p1
.end method

.method private a(Lcom/google/android/exoplayer2/extractor/i;[BI)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1630
    array-length v0, p2

    add-int/2addr v0, p3

    .line 1631
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 31174
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v1, v0, :cond_0

    .line 1634
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    .line 32088
    array-length v4, v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    goto :goto_0

    .line 1636
    :cond_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 32169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1636
    array-length v3, p2

    invoke-static {p2, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1638
    :goto_0
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 33169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1638
    array-length p2, p2

    invoke-interface {p1, v1, p2, p3}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1639
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v2}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1640
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v0}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    return-void
.end method

.method private static a(JLjava/lang/String;J)[B
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, p0, v2

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 1685
    :goto_0
    invoke-static {v2}, Lcom/google/android/exoplayer2/util/a;->a(Z)V

    const-wide v2, 0xd693a400L

    .line 1687
    div-long v2, p0, v2

    long-to-int v3, v2

    mul-int/lit16 v2, v3, 0xe10

    int-to-long v4, v2

    const-wide/32 v6, 0xf4240

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    const-wide/32 v4, 0x3938700

    .line 1689
    div-long v4, p0, v4

    long-to-int v2, v4

    mul-int/lit8 v4, v2, 0x3c

    int-to-long v4, v4

    mul-long v4, v4, v6

    sub-long/2addr p0, v4

    .line 1691
    div-long v4, p0, v6

    long-to-int v5, v4

    int-to-long v8, v5

    mul-long v8, v8, v6

    sub-long/2addr p0, v8

    .line 1693
    div-long/2addr p0, p3

    long-to-int p1, p0

    .line 1694
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 p3, 0x4

    new-array p3, p3, [Ljava/lang/Object;

    .line 1696
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v0

    const/4 p4, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p3, p4

    const/4 p4, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, p4

    invoke-static {p0, p2, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 1695
    invoke-static {p0}, Lcom/google/android/exoplayer2/util/af;->c(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 1852
    new-array p0, p1, [I

    return-object p0

    .line 1853
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 1857
    :cond_1
    array-length p0, p0

    mul-int/lit8 p0, p0, 0x2

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method static synthetic b()Ljava/util/UUID;
    .locals 1

    .line 77
    sget-object v0, Lcom/google/android/exoplayer2/extractor/d/d;->M:Ljava/util/UUID;

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

.method private c()I
    .locals 1

    .line 1609
    iget v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1610
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/d;->d()V

    return v0
.end method

.method private d()V
    .locals 2

    const/4 v0, 0x0

    .line 1616
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1617
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1618
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->aa:I

    .line 1619
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ab:Z

    .line 1620
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ac:Z

    .line 1621
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ad:Z

    .line 1622
    iput v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ae:I

    .line 1623
    iput-byte v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->af:B

    .line 1624
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ag:Z

    .line 1625
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    return-void
.end method

.method private static synthetic e()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/exoplayer2/extractor/h;

    .line 80
    new-instance v1, Lcom/google/android/exoplayer2/extractor/d/d;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/d/d;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static synthetic lambda$3Jz-9Ap0zV8zZCESImMT84PV1Ns()[Lcom/google/android/exoplayer2/extractor/h;
    .locals 1

    invoke-static {}, Lcom/google/android/exoplayer2/extractor/d/d;->e()[Lcom/google/android/exoplayer2/extractor/h;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/d/d$b;I)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#2.output"
        }
    .end annotation

    .line 1423
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1424
    sget-object p2, Lcom/google/android/exoplayer2/extractor/d/d;->K:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;[BI)V

    .line 1425
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/d;->c()I

    move-result p1

    return p1

    .line 1426
    :cond_0
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v1, "S_TEXT/ASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1427
    sget-object p2, Lcom/google/android/exoplayer2/extractor/d/d;->L:[B

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;[BI)V

    .line 1428
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/d;->c()I

    move-result p1

    return p1

    .line 1431
    :cond_1
    iget-object v0, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    .line 1432
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ab:Z

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_11

    .line 1433
    iget-boolean v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->h:Z

    if-eqz v1, :cond_e

    .line 1436
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    const v6, -0x40000001    # -1.9999999f

    and-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    .line 1437
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ac:Z

    const/16 v6, 0x80

    if-nez v1, :cond_3

    .line 1438
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 18169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1438
    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1439
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1440
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 19169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1440
    aget-byte v1, v1, v5

    and-int/2addr v1, v6

    if-eq v1, v6, :cond_2

    .line 1443
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 20169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1443
    aget-byte v1, v1, v5

    iput-byte v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->af:B

    .line 1444
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ac:Z

    goto :goto_0

    .line 1441
    :cond_2
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1446
    :cond_3
    :goto_0
    iget-byte v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->af:B

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

    .line 1449
    :goto_2
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    const/high16 v8, 0x40000000    # 2.0f

    or-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    .line 1450
    iget-boolean v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ag:Z

    if-nez v7, :cond_7

    .line 1451
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->T:Lcom/google/android/exoplayer2/util/u;

    .line 21169
    iget-object v7, v7, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/16 v8, 0x8

    .line 1451
    invoke-interface {p1, v7, v5, v8}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1452
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1453
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ag:Z

    .line 1455
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 22169
    iget-object v7, v7, Lcom/google/android/exoplayer2/util/u;->a:[B

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    const/4 v6, 0x0

    :goto_3
    or-int/2addr v6, v8

    int-to-byte v6, v6

    .line 1456
    aput-byte v6, v7, v5

    .line 1457
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1458
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v6, v4}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1459
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v6, v4

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1461
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->T:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1462
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->T:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v6, v8}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1466
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v6, v8

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    :cond_7
    if-eqz v1, :cond_f

    .line 1469
    iget-boolean v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ad:Z

    if-nez v1, :cond_8

    .line 1470
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 23169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1470
    invoke-interface {p1, v1, v5, v4}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1471
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1472
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1473
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1}, Lcom/google/android/exoplayer2/util/u;->c()I

    move-result v1

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ae:I

    .line 1474
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ad:Z

    .line 1476
    :cond_8
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ae:I

    mul-int/lit8 v1, v1, 0x4

    .line 1477
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v1}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1478
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 24169
    iget-object v6, v6, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1478
    invoke-interface {p1, v6, v5, v1}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1479
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1480
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ae:I

    div-int/2addr v1, v2

    add-int/2addr v1, v4

    int-to-short v1, v1

    mul-int/lit8 v6, v1, 0x6

    add-int/2addr v6, v2

    .line 1482
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    if-eqz v7, :cond_9

    .line 1483
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v7

    if-ge v7, v6, :cond_a

    .line 1484
    :cond_9
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    .line 1486
    :cond_a
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1487
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v7, 0x0

    .line 1495
    :goto_4
    iget v8, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ae:I

    if-ge v1, v8, :cond_c

    .line 1497
    iget-object v8, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v8}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v8

    .line 1498
    rem-int/lit8 v9, v1, 0x2

    if-nez v9, :cond_b

    .line 1499
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    int-to-short v7, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 1502
    :cond_b
    iget-object v9, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    sub-int v7, v8, v7

    invoke-virtual {v9, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v7, v8

    goto :goto_4

    .line 1505
    :cond_c
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    sub-int v1, p3, v1

    sub-int/2addr v1, v7

    .line 1506
    rem-int/2addr v8, v2

    if-ne v8, v4, :cond_d

    .line 1507
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_6

    .line 1509
    :cond_d
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v7, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 1510
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1512
    :goto_6
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->U:Lcom/google/android/exoplayer2/util/u;

    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->V:Ljava/nio/ByteBuffer;

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 1513
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->U:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v1, v6}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1517
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    goto :goto_7

    .line 1520
    :cond_e
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    if-eqz v1, :cond_f

    .line 1522
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    iget-object v6, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    iget-object v7, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->i:[B

    array-length v7, v7

    invoke-virtual {v1, v6, v7}, Lcom/google/android/exoplayer2/util/u;->a([BI)V

    .line 1525
    :cond_f
    :goto_7
    iget v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->f:I

    if-lez v1, :cond_10

    .line 1526
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    const/high16 v6, 0x10000000

    or-int/2addr v1, v6

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->G:I

    .line 1527
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v5}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1530
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v1, v3}, Lcom/google/android/exoplayer2/util/u;->a(I)V

    .line 1531
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 25169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    shr-int/lit8 v6, p3, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1531
    aput-byte v6, v1, v5

    .line 1532
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 26169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    shr-int/lit8 v6, p3, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1532
    aput-byte v6, v1, v4

    .line 1533
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 27169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    shr-int/lit8 v6, p3, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 1533
    aput-byte v6, v1, v2

    .line 1534
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 28169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v6, 0x3

    and-int/lit16 v7, p3, 0xff

    int-to-byte v7, v7

    .line 1534
    aput-byte v7, v1, v6

    .line 1535
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v1, v3}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1536
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1539
    :cond_10
    iput-boolean v4, p0, Lcom/google/android/exoplayer2/extractor/d/d;->ab:Z

    .line 1541
    :cond_11
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    .line 29127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int/2addr p3, v1

    .line 1543
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEG4/ISO/AVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15

    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    goto :goto_a

    .line 1578
    :cond_12
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    if-eqz v1, :cond_14

    .line 1579
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    .line 30127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    if-nez v1, :cond_13

    const/4 v1, 0x1

    goto :goto_8

    :cond_13
    const/4 v1, 0x0

    .line 1579
    :goto_8
    invoke-static {v1}, Lcom/google/android/exoplayer2/util/a;->b(Z)V

    .line 1580
    iget-object v1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    .line 30936
    iget-boolean v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$c;->b:Z

    if-nez v2, :cond_14

    .line 30939
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$c;->a:[B

    const/16 v6, 0xa

    invoke-interface {p1, v2, v5, v6}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 30940
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->a()V

    .line 30941
    iget-object v2, v1, Lcom/google/android/exoplayer2/extractor/d/d$c;->a:[B

    invoke-static {v2}, Lcom/google/android/exoplayer2/audio/b;->b([B)I

    move-result v2

    if-eqz v2, :cond_14

    .line 30944
    iput-boolean v4, v1, Lcom/google/android/exoplayer2/extractor/d/d$c;->b:Z

    .line 1582
    :cond_14
    :goto_9
    iget v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    if-ge v1, p3, :cond_18

    sub-int v1, p3, v1

    .line 1583
    invoke-direct {p0, p1, v0, v1}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/x;I)I

    move-result v1

    .line 1584
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1585
    iget v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    goto :goto_9

    .line 1548
    :cond_15
    :goto_a
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->P:Lcom/google/android/exoplayer2/util/u;

    .line 29169
    iget-object v1, v1, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1549
    aput-byte v5, v1, v5

    .line 1550
    aput-byte v5, v1, v4

    .line 1551
    aput-byte v5, v1, v2

    .line 1552
    iget v2, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->Y:I

    .line 1553
    iget v4, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->Y:I

    rsub-int/lit8 v4, v4, 0x4

    .line 1557
    :goto_b
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    if-ge v6, p3, :cond_18

    .line 1558
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->aa:I

    if-nez v6, :cond_17

    .line 29706
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->a()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v2, v6

    .line 29707
    invoke-interface {p1, v1, v7, v8}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    if-lez v6, :cond_16

    .line 29709
    iget-object v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->R:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v7, v1, v4, v6}, Lcom/google/android/exoplayer2/util/u;->a([BII)V

    .line 1562
    :cond_16
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v6, v2

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1563
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->P:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1564
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->P:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6}, Lcom/google/android/exoplayer2/util/u;->o()I

    move-result v6

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->aa:I

    .line 1566
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->O:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v6, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1567
    iget-object v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->O:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, v6, v3}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1568
    iget v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    goto :goto_b

    .line 1571
    :cond_17
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/exoplayer2/extractor/d/d;->a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/x;I)I

    move-result v6

    .line 1572
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Y:I

    .line 1573
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1574
    iget v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->aa:I

    sub-int/2addr v7, v6

    iput v7, p0, Lcom/google/android/exoplayer2/extractor/d/d;->aa:I

    goto :goto_b

    .line 1589
    :cond_18
    iget-object p1, p2, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 1596
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Q:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, v5}, Lcom/google/android/exoplayer2/util/u;->d(I)V

    .line 1597
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Q:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v0, p1, v3}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1598
    iget p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    add-int/2addr p1, v3

    iput p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->Z:I

    .line 1601
    :cond_19
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/d;->c()I

    move-result p1

    return p1
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;Lcom/google/android/exoplayer2/extractor/u;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 493
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->X:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 495
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->X:Z

    if-nez v3, :cond_3

    .line 496
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->N:Lcom/google/android/exoplayer2/extractor/d/c;

    invoke-interface {v2, p1}, Lcom/google/android/exoplayer2/extractor/d/c;->a(Lcom/google/android/exoplayer2/extractor/i;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 497
    invoke-interface {p1}, Lcom/google/android/exoplayer2/extractor/i;->c()J

    move-result-wide v3

    .line 6783
    iget-boolean v5, p0, Lcom/google/android/exoplayer2/extractor/d/d;->s:Z

    if-eqz v5, :cond_1

    .line 6784
    iput-wide v3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->W:J

    .line 6785
    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->t:J

    iput-wide v3, p2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 6786
    iput-boolean v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->s:Z

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 6791
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->p:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->W:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 6792
    iput-wide v3, p2, Lcom/google/android/exoplayer2/extractor/u;->a:J

    .line 6793
    iput-wide v5, p0, Lcom/google/android/exoplayer2/extractor/d/d;->W:J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-nez v2, :cond_6

    .line 502
    :goto_2
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    if-ge v0, p1, :cond_5

    .line 503
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/exoplayer2/extractor/d/d$b;

    .line 6976
    invoke-virtual {p1}, Lcom/google/android/exoplayer2/extractor/d/d$b;->a()V

    .line 7349
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    if-eqz p2, :cond_4

    .line 7350
    iget-object p2, p1, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    invoke-virtual {p2, p1}, Lcom/google/android/exoplayer2/extractor/d/d$c;->a(Lcom/google/android/exoplayer2/extractor/d/d$b;)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

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
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1800
    iget-wide v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->l:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 1803
    invoke-static/range {v0 .. v5}, Lcom/google/android/exoplayer2/util/af;->b(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 1801
    :cond_0
    new-instance p1, Lcom/google/android/exoplayer2/ParserException;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final a()V
    .locals 1
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "extractorOutput"
        }
    .end annotation

    .line 1863
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    invoke-static {v0}, Lcom/google/android/exoplayer2/util/a;->a(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 476
    iput-wide p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->u:J

    const/4 p1, 0x0

    .line 477
    iput p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->y:I

    .line 478
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->N:Lcom/google/android/exoplayer2/extractor/d/c;

    invoke-interface {p2}, Lcom/google/android/exoplayer2/extractor/d/c;->a()V

    .line 479
    iget-object p2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->d:Lcom/google/android/exoplayer2/extractor/d/f;

    invoke-virtual {p2}, Lcom/google/android/exoplayer2/extractor/d/f;->a()V

    .line 480
    invoke-direct {p0}, Lcom/google/android/exoplayer2/extractor/d/d;->d()V

    const/4 p2, 0x0

    .line 481
    :goto_0
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p2, p3, :cond_1

    .line 482
    iget-object p3, p0, Lcom/google/android/exoplayer2/extractor/d/d;->e:Landroid/util/SparseArray;

    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/google/android/exoplayer2/extractor/d/d$b;

    .line 5356
    iget-object p4, p3, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    if-eqz p4, :cond_0

    .line 5357
    iget-object p3, p3, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    .line 5931
    iput-boolean p1, p3, Lcom/google/android/exoplayer2/extractor/d/d$c;->b:Z

    .line 5932
    iput p1, p3, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method a(Lcom/google/android/exoplayer2/extractor/d/d$b;JIII)V
    .locals 16
    .annotation runtime Lorg/checkerframework/checker/nullness/qual/RequiresNonNull;
        value = {
            "#1.output"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    .line 1353
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    .line 1354
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->T:Lcom/google/android/exoplayer2/extractor/d/d$c;

    .line 7950
    iget-boolean v6, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->b:Z

    if-eqz v6, :cond_c

    .line 7953
    iget v6, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    add-int/lit8 v7, v6, 0x1

    iput v7, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    if-nez v6, :cond_0

    move-wide/from16 v6, p2

    .line 7955
    iput-wide v6, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->d:J

    .line 7956
    iput v2, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->e:I

    .line 7957
    iput v4, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->f:I

    .line 7959
    :cond_0
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->f:I

    add-int v2, v2, p5

    iput v2, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->f:I

    move/from16 v13, p6

    .line 7960
    iput v13, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->g:I

    .line 7961
    iget v2, v3, Lcom/google/android/exoplayer2/extractor/d/d$c;->c:I

    const/16 v4, 0x10

    if-lt v2, v4, :cond_c

    .line 7962
    invoke-virtual {v3, v1}, Lcom/google/android/exoplayer2/extractor/d/d$c;->a(Lcom/google/android/exoplayer2/extractor/d/d$b;)V

    goto/16 :goto_6

    :cond_1
    move-wide/from16 v6, p2

    move/from16 v13, p6

    .line 1356
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    const-string v8, "S_TEXT/UTF8"

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v9, "S_TEXT/ASS"

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1357
    :cond_2
    iget v3, v0, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    const-string v10, "MatroskaExtractor"

    if-le v3, v5, :cond_3

    const-string v3, "Skipping subtitle sample in laced block."

    .line 1358
    invoke-static {v10, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1359
    :cond_3
    iget-wide v11, v0, Lcom/google/android/exoplayer2/extractor/d/d;->A:J

    const-wide v14, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v3, v11, v14

    if-nez v3, :cond_5

    const-string v3, "Skipping subtitle sample with no duration."

    .line 1360
    invoke-static {v10, v3}, Lcom/google/android/exoplayer2/util/n;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    move/from16 v3, p5

    goto :goto_4

    .line 1362
    :cond_5
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->b:Ljava/lang/String;

    iget-wide v10, v0, Lcom/google/android/exoplayer2/extractor/d/d;->A:J

    iget-object v12, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 8169
    iget-object v12, v12, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 8660
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_7

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-wide/16 v8, 0x3e8

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 8663
    invoke-static {v10, v11, v3, v8, v9}, Lcom/google/android/exoplayer2/extractor/d/d;->a(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v8, 0x13

    goto :goto_1

    .line 8674
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_7
    const-wide/16 v8, 0x2710

    const-string v3, "%01d:%02d:%02d:%02d"

    .line 8669
    invoke-static {v10, v11, v3, v8, v9}, Lcom/google/android/exoplayer2/extractor/d/d;->a(JLjava/lang/String;J)[B

    move-result-object v3

    const/16 v8, 0x15

    .line 8676
    :goto_1
    array-length v9, v3

    invoke-static {v3, v4, v12, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1366
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 9144
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->b:I

    .line 1366
    :goto_2
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 10127
    iget v4, v4, Lcom/google/android/exoplayer2/util/u;->c:I

    if-ge v3, v4, :cond_9

    .line 1367
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 10169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1367
    aget-byte v4, v4, v3

    if-nez v4, :cond_8

    .line 1368
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4, v3}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    goto :goto_3

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 1374
    :cond_9
    :goto_3
    iget-object v3, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 11127
    iget v8, v4, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1374
    invoke-interface {v3, v4, v8}, Lcom/google/android/exoplayer2/extractor/x;->b(Lcom/google/android/exoplayer2/util/u;I)V

    .line 1375
    iget-object v3, v0, Lcom/google/android/exoplayer2/extractor/d/d;->S:Lcom/google/android/exoplayer2/util/u;

    .line 12127
    iget v3, v3, Lcom/google/android/exoplayer2/util/u;->c:I

    add-int v3, p5, v3

    :goto_4
    const/high16 v4, 0x10000000

    and-int/2addr v4, v2

    if-eqz v4, :cond_b

    .line 1380
    iget v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->C:I

    if-le v4, v5, :cond_a

    const v4, -0x10000001

    and-int/2addr v2, v4

    goto :goto_5

    .line 1386
    :cond_a
    iget-object v4, v0, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    .line 13127
    iget v4, v4, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1387
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v9, v0, Lcom/google/android/exoplayer2/extractor/d/d;->i:Lcom/google/android/exoplayer2/util/u;

    invoke-interface {v8, v9, v4}, Lcom/google/android/exoplayer2/extractor/x;->a(Lcom/google/android/exoplayer2/util/u;I)V

    add-int/2addr v3, v4

    :cond_b
    :goto_5
    move v11, v2

    move v12, v3

    .line 1392
    iget-object v8, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->X:Lcom/google/android/exoplayer2/extractor/x;

    iget-object v14, v1, Lcom/google/android/exoplayer2/extractor/d/d$b;->j:Lcom/google/android/exoplayer2/extractor/x$a;

    move-wide/from16 v9, p2

    move/from16 v13, p6

    invoke-interface/range {v8 .. v14}, Lcom/google/android/exoplayer2/extractor/x;->a(JIIILcom/google/android/exoplayer2/extractor/x$a;)V

    .line 1394
    :cond_c
    :goto_6
    iput-boolean v5, v0, Lcom/google/android/exoplayer2/extractor/d/d;->X:Z

    return-void
.end method

.method a(Lcom/google/android/exoplayer2/extractor/i;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 14127
    iget v0, v0, Lcom/google/android/exoplayer2/util/u;->c:I

    if-lt v0, p2, :cond_0

    return-void

    .line 1405
    :cond_0
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 14174
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v0, v0

    if-ge v0, p2, :cond_1

    .line 1406
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 15174
    iget-object v1, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    .line 1406
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/util/u;->b(I)V

    .line 1408
    :cond_1
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 16169
    iget-object v0, v0, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 1408
    iget-object v1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 17127
    iget v1, v1, Lcom/google/android/exoplayer2/util/u;->c:I

    .line 1408
    iget-object v2, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    .line 18127
    iget v2, v2, Lcom/google/android/exoplayer2/util/u;->c:I

    sub-int v2, p2, v2

    .line 1408
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/exoplayer2/extractor/i;->b([BII)V

    .line 1409
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->g:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {p1, p2}, Lcom/google/android/exoplayer2/util/u;->c(I)V

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/j;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->J:Lcom/google/android/exoplayer2/extractor/j;

    return-void
.end method

.method public final a(Lcom/google/android/exoplayer2/extractor/i;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 465
    new-instance v1, Lcom/google/android/exoplayer2/extractor/d/e;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/extractor/d/e;-><init>()V

    .line 3044
    invoke-interface/range {p1 .. p1}, Lcom/google/android/exoplayer2/extractor/i;->d()J

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

    .line 3048
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/e;->a:Lcom/google/android/exoplayer2/util/u;

    .line 3169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    .line 3048
    invoke-interface {v0, v4, v6, v7}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    .line 3049
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/e;->a:Lcom/google/android/exoplayer2/util/u;

    invoke-virtual {v4}, Lcom/google/android/exoplayer2/util/u;->h()J

    move-result-wide v9

    .line 3050
    iput v7, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_2

    .line 3052
    iget v7, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    add-int/2addr v7, v4

    iput v7, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    if-eq v7, v5, :cond_7

    .line 3055
    iget-object v7, v1, Lcom/google/android/exoplayer2/extractor/d/e;->a:Lcom/google/android/exoplayer2/util/u;

    .line 4169
    iget-object v7, v7, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3055
    invoke-interface {v0, v7, v6, v4}, Lcom/google/android/exoplayer2/extractor/i;->d([BII)V

    const/16 v4, 0x8

    shl-long/2addr v9, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 3057
    iget-object v4, v1, Lcom/google/android/exoplayer2/extractor/d/e;->a:Lcom/google/android/exoplayer2/util/u;

    .line 5169
    iget-object v4, v4, Lcom/google/android/exoplayer2/util/u;->a:[B

    .line 3057
    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    goto :goto_1

    .line 3061
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/i;)J

    move-result-wide v9

    .line 3062
    iget v5, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_7

    if-eqz v8, :cond_3

    add-long v7, v11, v9

    cmp-long v5, v7, v2

    if-ltz v5, :cond_3

    goto :goto_4

    .line 3069
    :cond_3
    :goto_2
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    int-to-long v2, v2

    add-long v7, v11, v9

    cmp-long v5, v2, v7

    if-gez v5, :cond_6

    .line 3070
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/i;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-eqz v5, :cond_7

    .line 3074
    invoke-virtual {v1, v0}, Lcom/google/android/exoplayer2/extractor/d/e;->a(Lcom/google/android/exoplayer2/extractor/i;)J

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

    .line 3080
    invoke-interface {v0, v3}, Lcom/google/android/exoplayer2/extractor/i;->c(I)V

    .line 3081
    iget v2, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    goto :goto_2

    :cond_5
    :goto_3
    return v6

    .line 3084
    :cond_6
    iget v0, v1, Lcom/google/android/exoplayer2/extractor/d/e;->b:I

    int-to-long v0, v0

    cmp-long v2, v0, v7

    if-nez v2, :cond_7

    return v4

    :cond_7
    :goto_4
    return v6
.end method

.method final c(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "currentTrack"
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    if-eqz v0, :cond_0

    return-void

    .line 1334
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final d(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .annotation runtime Lorg/checkerframework/checker/nullness/qual/EnsuresNonNull;
        value = {
            "cueTimesUs",
            "cueClusterPositions"
        }
    .end annotation

    .line 1340
    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->v:Lcom/google/android/exoplayer2/util/o;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/exoplayer2/extractor/d/d;->w:Lcom/google/android/exoplayer2/util/o;

    if-eqz v0, :cond_0

    return-void

    .line 1341
    :cond_0
    new-instance v0, Lcom/google/android/exoplayer2/ParserException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Element "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/exoplayer2/ParserException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final e(I)Lcom/google/android/exoplayer2/extractor/d/d$b;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/exoplayer2/ParserException;
        }
    .end annotation

    .line 1346
    invoke-virtual {p0, p1}, Lcom/google/android/exoplayer2/extractor/d/d;->c(I)V

    .line 1347
    iget-object p1, p0, Lcom/google/android/exoplayer2/extractor/d/d;->o:Lcom/google/android/exoplayer2/extractor/d/d$b;

    return-object p1
.end method
