.class public final Lcom/google/android/gms/internal/ads/dny;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dnh;


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/dni;

.field private static final b:[B

.field private static final c:[B

.field private static final d:Ljava/util/UUID;


# instance fields
.field private A:J

.field private B:Z

.field private C:J

.field private D:J

.field private E:J

.field private F:Lcom/google/android/gms/internal/ads/dse;

.field private G:Lcom/google/android/gms/internal/ads/dse;

.field private H:Z

.field private I:I

.field private J:J

.field private K:J

.field private L:I

.field private M:I

.field private N:[I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:B

.field private X:I

.field private Y:I

.field private Z:I

.field private aa:Z

.field private ab:Z

.field private ac:Lcom/google/android/gms/internal/ads/dnj;

.field private final e:Lcom/google/android/gms/internal/ads/dnw;

.field private final f:Lcom/google/android/gms/internal/ads/dob;

.field private final g:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gms/internal/ads/dnz;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Z

.field private final i:Lcom/google/android/gms/internal/ads/dsk;

.field private final j:Lcom/google/android/gms/internal/ads/dsk;

.field private final k:Lcom/google/android/gms/internal/ads/dsk;

.field private final l:Lcom/google/android/gms/internal/ads/dsk;

.field private final m:Lcom/google/android/gms/internal/ads/dsk;

.field private final n:Lcom/google/android/gms/internal/ads/dsk;

.field private final o:Lcom/google/android/gms/internal/ads/dsk;

.field private final p:Lcom/google/android/gms/internal/ads/dsk;

.field private final q:Lcom/google/android/gms/internal/ads/dsk;

.field private r:Ljava/nio/ByteBuffer;

.field private s:J

.field private t:J

.field private u:J

.field private v:J

.field private w:J

.field private x:Lcom/google/android/gms/internal/ads/dnz;

.field private y:Z

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 577
    new-instance v0, Lcom/google/android/gms/internal/ads/dnx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dnx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dny;->a:Lcom/google/android/gms/internal/ads/dni;

    .line 578
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dny;->b:[B

    .line 579
    const/16 v0, 0xc

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/dny;->c:[B

    .line 580
    new-instance v0, Ljava/util/UUID;

    const-wide v2, 0x100000000001000L

    const-wide v4, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dny;->d:Ljava/util/UUID;

    return-void

    .line 578
    nop

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

    .line 579
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
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dny;-><init>(I)V

    .line 2
    return-void
.end method

.method private constructor <init>(I)V
    .locals 2

    .prologue
    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/dnq;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dnq;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dny;-><init>(Lcom/google/android/gms/internal/ads/dnw;I)V

    .line 4
    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dnw;I)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v3, 0x4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    .line 7
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    .line 8
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->v:J

    .line 9
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    .line 10
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->C:J

    .line 11
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->D:J

    .line 12
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->E:J

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dny;->e:Lcom/google/android/gms/internal/ads/dnw;

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->e:Lcom/google/android/gms/internal/ads/dnw;

    new-instance v1, Lcom/google/android/gms/internal/ads/doa;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/gms/internal/ads/doa;-><init>(Lcom/google/android/gms/internal/ads/dny;Lcom/google/android/gms/internal/ads/dnx;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnw;->a(Lcom/google/android/gms/internal/ads/dnu;)V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->h:Z

    .line 16
    new-instance v0, Lcom/google/android/gms/internal/ads/dob;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dob;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->f:Lcom/google/android/gms/internal/ads/dob;

    .line 17
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->g:Landroid/util/SparseArray;

    .line 18
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    .line 19
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->l:Lcom/google/android/gms/internal/ads/dsk;

    .line 20
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->m:Lcom/google/android/gms/internal/ads/dsk;

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    sget-object v1, Lcom/google/android/gms/internal/ads/dsf;->a:[B

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>([B)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->i:Lcom/google/android/gms/internal/ads/dsk;

    .line 22
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->j:Lcom/google/android/gms/internal/ads/dsk;

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    .line 24
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    .line 25
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->p:Lcom/google/android/gms/internal/ads/dsk;

    .line 26
    new-instance v0, Lcom/google/android/gms/internal/ads/dsk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dsk;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->q:Lcom/google/android/gms/internal/ads/dsk;

    .line 27
    return-void
.end method

.method static a(I)I
    .locals 1

    .prologue
    .line 56
    sparse-switch p0, :sswitch_data_0

    .line 62
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 57
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 58
    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    .line 59
    :sswitch_2
    const/4 v0, 0x3

    goto :goto_0

    .line 60
    :sswitch_3
    const/4 v0, 0x4

    goto :goto_0

    .line 61
    :sswitch_4
    const/4 v0, 0x5

    goto :goto_0

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_1
        0x86 -> :sswitch_2
        0x88 -> :sswitch_1
        0x9b -> :sswitch_1
        0x9f -> :sswitch_1
        0xa0 -> :sswitch_0
        0xa1 -> :sswitch_3
        0xa3 -> :sswitch_3
        0xae -> :sswitch_0
        0xb0 -> :sswitch_1
        0xb3 -> :sswitch_1
        0xb5 -> :sswitch_4
        0xb7 -> :sswitch_0
        0xba -> :sswitch_1
        0xbb -> :sswitch_0
        0xd7 -> :sswitch_1
        0xe0 -> :sswitch_0
        0xe1 -> :sswitch_0
        0xe7 -> :sswitch_1
        0xf1 -> :sswitch_1
        0xfb -> :sswitch_1
        0x4254 -> :sswitch_1
        0x4255 -> :sswitch_3
        0x4282 -> :sswitch_2
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_1
        0x4489 -> :sswitch_4
        0x47e1 -> :sswitch_1
        0x47e2 -> :sswitch_3
        0x47e7 -> :sswitch_0
        0x47e8 -> :sswitch_1
        0x4dbb -> :sswitch_0
        0x5031 -> :sswitch_1
        0x5032 -> :sswitch_1
        0x5034 -> :sswitch_0
        0x5035 -> :sswitch_0
        0x53ab -> :sswitch_3
        0x53ac -> :sswitch_1
        0x53b8 -> :sswitch_1
        0x54b0 -> :sswitch_1
        0x54b2 -> :sswitch_1
        0x54ba -> :sswitch_1
        0x55aa -> :sswitch_1
        0x55b0 -> :sswitch_0
        0x55b9 -> :sswitch_1
        0x55ba -> :sswitch_1
        0x55bb -> :sswitch_1
        0x55bc -> :sswitch_1
        0x55bd -> :sswitch_1
        0x55d0 -> :sswitch_0
        0x55d1 -> :sswitch_4
        0x55d2 -> :sswitch_4
        0x55d3 -> :sswitch_4
        0x55d4 -> :sswitch_4
        0x55d5 -> :sswitch_4
        0x55d6 -> :sswitch_4
        0x55d7 -> :sswitch_4
        0x55d8 -> :sswitch_4
        0x55d9 -> :sswitch_4
        0x55da -> :sswitch_4
        0x56aa -> :sswitch_1
        0x56bb -> :sswitch_1
        0x6240 -> :sswitch_0
        0x6264 -> :sswitch_1
        0x63a2 -> :sswitch_3
        0x6d80 -> :sswitch_0
        0x7670 -> :sswitch_0
        0x7672 -> :sswitch_3
        0x22b59c -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_1
        0x114d9b74 -> :sswitch_0
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_0
        0x18538067 -> :sswitch_0
        0x1a45dfa3 -> :sswitch_0
        0x1c53bb6b -> :sswitch_0
        0x1f43b675 -> :sswitch_0
    .end sparse-switch
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dno;I)I
    .locals 2

    .prologue
    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->b()I

    move-result v0

    .line 561
    if-lez v0, :cond_0

    .line 562
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 563
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {p2, v1, v0}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 565
    :goto_0
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 566
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 567
    return v0

    .line 564
    :cond_0
    const/4 v0, 0x0

    invoke-interface {p2, p1, p3, v0}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dng;IZ)I

    move-result v0

    goto :goto_0
.end method

.method private final a(J)J
    .locals 7

    .prologue
    .line 568
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 569
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 570
    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/dsn;->a(JJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .prologue
    .line 576
    sget-object v0, Lcom/google/android/gms/internal/ads/dny;->d:Ljava/util/UUID;

    return-object v0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dng;I)V
    .locals 3

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v0

    if-lt v0, p2, :cond_0

    .line 458
    :goto_0
    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->e()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    .line 454
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v2

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dsk;->a([BI)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 457
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/dsk;->b(I)V

    goto :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnz;I)V
    .locals 10

    .prologue
    const/16 v6, 0x8

    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 459
    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 460
    sget-object v0, Lcom/google/android/gms/internal/ads/dny;->b:[B

    array-length v0, v0

    add-int/2addr v0, p3

    .line 461
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->e()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 462
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    sget-object v3, Lcom/google/android/gms/internal/ads/dny;->b:[B

    add-int v4, v0, p3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    sget-object v3, Lcom/google/android/gms/internal/ads/dny;->b:[B

    array-length v3, v3

    invoke-interface {p1, v1, v3, p3}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 464
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 465
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dsk;->b(I)V

    .line 559
    :cond_1
    :goto_0
    return-void

    .line 467
    :cond_2
    iget-object v5, p2, Lcom/google/android/gms/internal/ads/dnz;->N:Lcom/google/android/gms/internal/ads/dno;

    .line 468
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->S:Z

    if-nez v0, :cond_e

    .line 469
    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/dnz;->e:Z

    if-eqz v0, :cond_12

    .line 470
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    .line 471
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->T:Z

    if-nez v0, :cond_4

    .line 472
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 473
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 474
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0x80

    const/16 v3, 0x80

    if-ne v0, v3, :cond_3

    .line 475
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Extension bit is set in signal byte"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    aget-byte v0, v0, v2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dny;->W:B

    .line 477
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->T:Z

    .line 478
    :cond_4
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/dny;->W:B

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_d

    .line 479
    iget-byte v0, p0, Lcom/google/android/gms/internal/ads/dny;->W:B

    and-int/lit8 v0, v0, 0x2

    if-ne v0, v8, :cond_9

    move v0, v1

    .line 480
    :goto_1
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    const/high16 v4, 0x40000000    # 2.0f

    or-int/2addr v3, v4

    iput v3, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    .line 481
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/dny;->U:Z

    if-nez v3, :cond_5

    .line 482
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->p:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v3, v2, v6}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 483
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 484
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->U:Z

    .line 485
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    if-eqz v0, :cond_a

    const/16 v3, 0x80

    :goto_2
    or-int/lit8 v3, v3, 0x8

    int-to-byte v3, v3

    aput-byte v3, v4, v2

    .line 486
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 487
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {v5, v3, v1}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 488
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 489
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->p:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 490
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->p:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {v5, v3, v6}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 491
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/lit8 v3, v3, 0x8

    iput v3, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 492
    :cond_5
    if-eqz v0, :cond_d

    .line 493
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->V:Z

    if-nez v0, :cond_6

    .line 494
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v0, v2, v1}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 495
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 496
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 497
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->f()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    .line 498
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->V:Z

    .line 499
    :cond_6
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    shl-int/lit8 v0, v0, 0x2

    .line 500
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/dsk;->a(I)V

    .line 501
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    invoke-interface {p1, v3, v2, v0}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 502
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 503
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    .line 504
    mul-int/lit8 v3, v0, 0x6

    add-int/lit8 v6, v3, 0x2

    .line 505
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    .line 506
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v3, v6, :cond_8

    .line 507
    :cond_7
    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    .line 508
    :cond_8
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move v0, v2

    move v3, v2

    .line 511
    :goto_3
    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    if-ge v0, v4, :cond_c

    .line 513
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v4

    .line 514
    rem-int/lit8 v7, v0, 0x2

    if-nez v7, :cond_b

    .line 515
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    int-to-short v3, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 517
    :goto_4
    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_3

    :cond_9
    move v0, v2

    .line 479
    goto/16 :goto_1

    :cond_a
    move v3, v2

    .line 485
    goto/16 :goto_2

    .line 516
    :cond_b
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    sub-int v3, v4, v3

    invoke-virtual {v7, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 518
    :cond_c
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    sub-int v0, p3, v0

    sub-int/2addr v0, v3

    .line 519
    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    rem-int/lit8 v3, v3, 0x2

    if-ne v3, v1, :cond_11

    .line 520
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 523
    :goto_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->q:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v0, v3, v6}, Lcom/google/android/gms/internal/ads/dsk;->a([BI)V

    .line 524
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->q:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {v5, v0, v6}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 525
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/2addr v0, v6

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 528
    :cond_d
    :goto_6
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->S:Z

    .line 529
    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v0

    add-int/2addr v0, p3

    .line 530
    const-string/jumbo v3, "V_MPEG4/ISO/AVC"

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "V_MPEGH/ISO/HEVC"

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 531
    :cond_f
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->j:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    .line 532
    aput-byte v2, v3, v2

    .line 533
    aput-byte v2, v3, v1

    .line 534
    aput-byte v2, v3, v8

    .line 535
    iget v1, p2, Lcom/google/android/gms/internal/ads/dnz;->O:I

    .line 536
    iget v4, p2, Lcom/google/android/gms/internal/ads/dnz;->O:I

    rsub-int/lit8 v4, v4, 0x4

    .line 537
    :goto_7
    iget v6, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    if-ge v6, v0, :cond_15

    .line 538
    iget v6, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    if-nez v6, :cond_13

    .line 540
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dsk;->b()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 541
    add-int v7, v4, v6

    sub-int v8, v1, v6

    invoke-interface {p1, v3, v7, v8}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 542
    if-lez v6, :cond_10

    .line 543
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v7, v3, v4, v6}, Lcom/google/android/gms/internal/ads/dsk;->a([BII)V

    .line 544
    :cond_10
    iget v6, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    add-int/2addr v6, v1

    iput v6, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 545
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->j:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 546
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->j:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/dsk;->o()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    .line 547
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->i:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v6, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 548
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->i:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {v5, v6, v9}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 549
    iget v6, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    goto :goto_7

    .line 521
    :cond_11
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    int-to-short v0, v0

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 522
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->r:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto/16 :goto_5

    .line 526
    :cond_12
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    if-eqz v0, :cond_d

    .line 527
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v3, p2, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    array-length v4, v4

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/dsk;->a([BI)V

    goto/16 :goto_6

    .line 550
    :cond_13
    iget v6, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    .line 551
    invoke-direct {p0, p1, v5, v7}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dno;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    goto :goto_7

    .line 553
    :cond_14
    :goto_8
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    if-ge v1, v0, :cond_15

    .line 554
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    sub-int v1, v0, v1

    invoke-direct {p0, p1, v5, v1}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dno;I)I

    goto :goto_8

    .line 555
    :cond_15
    const-string/jumbo v0, "A_VORBIS"

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 556
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->l:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 557
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->l:Lcom/google/android/gms/internal/ads/dsk;

    invoke-interface {v5, v0, v9}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 558
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    goto/16 :goto_0
.end method

.method private final a(Lcom/google/android/gms/internal/ads/dnz;J)V
    .locals 12

    .prologue
    const-wide v8, 0xd693a400L

    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 417
    const-string/jumbo v0, "S_TEXT/UTF8"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->K:J

    .line 420
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 421
    sget-object v0, Lcom/google/android/gms/internal/ads/dny;->c:[B

    .line 432
    :goto_0
    const/16 v2, 0x13

    const/16 v3, 0xc

    invoke-static {v0, v6, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dnz;->N:Lcom/google/android/gms/internal/ads/dno;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dno;->a(Lcom/google/android/gms/internal/ads/dsk;I)V

    .line 434
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->o:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dsk;->c()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 435
    :cond_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/dnz;->N:Lcom/google/android/gms/internal/ads/dno;

    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    iget-object v7, p1, Lcom/google/android/gms/internal/ads/dnz;->g:Lcom/google/android/gms/internal/ads/dnr;

    move-wide v2, p2

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/dno;->a(JIIILcom/google/android/gms/internal/ads/dnr;)V

    .line 436
    iput-boolean v10, p0, Lcom/google/android/gms/internal/ads/dny;->aa:Z

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dny;->b()V

    .line 438
    return-void

    .line 422
    :cond_1
    div-long v4, v2, v8

    long-to-int v0, v4

    .line 423
    int-to-long v4, v0

    mul-long/2addr v4, v8

    sub-long/2addr v2, v4

    .line 424
    const-wide/32 v4, 0x3938700

    div-long v4, v2, v4

    long-to-int v4, v4

    .line 425
    const v5, 0x3938700

    mul-int/2addr v5, v4

    int-to-long v8, v5

    sub-long/2addr v2, v8

    .line 426
    const-wide/32 v8, 0xf4240

    div-long v8, v2, v8

    long-to-int v5, v8

    .line 427
    const v7, 0xf4240

    mul-int/2addr v7, v5

    int-to-long v8, v7

    sub-long/2addr v2, v8

    .line 428
    const-wide/16 v8, 0x3e8

    div-long/2addr v2, v8

    long-to-int v2, v2

    .line 429
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v7, "%02d:%02d:%02d,%03d"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v6

    .line 430
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v8, v10

    const/4 v0, 0x2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v0

    const/4 v0, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v8, v0

    .line 431
    invoke-static {v3, v7, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/dsn;->c(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0
.end method

.method private static a([II)[I
    .locals 1

    .prologue
    .line 571
    if-nez p0, :cond_1

    .line 572
    new-array p0, p1, [I

    .line 575
    :cond_0
    :goto_0
    return-object p0

    .line 573
    :cond_1
    array-length v0, p0

    if-ge v0, p1, :cond_0

    .line 575
    array-length v0, p0

    shl-int/lit8 v0, v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-array p0, v0, [I

    goto :goto_0
.end method

.method private final b()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 439
    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->R:I

    .line 440
    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Z:I

    .line 441
    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Y:I

    .line 442
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->S:Z

    .line 443
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->T:Z

    .line 444
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->V:Z

    .line 445
    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->X:I

    .line 446
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dny;->W:B

    .line 447
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->U:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->n:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->a()V

    .line 449
    return-void
.end method

.method static b(I)Z
    .locals 1

    .prologue
    .line 63
    const v0, 0x1549a966

    if-eq p0, v0, :cond_0

    const v0, 0x1f43b675

    if-eq p0, v0, :cond_0

    const v0, 0x1c53bb6b

    if-eq p0, v0, :cond_0

    const v0, 0x1654ae6b

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnn;)I
    .locals 8

    .prologue
    const-wide/16 v6, -0x1

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 38
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->aa:Z

    move v2, v0

    .line 40
    :goto_0
    if-eqz v2, :cond_2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/dny;->aa:Z

    if-nez v3, :cond_2

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->e:Lcom/google/android/gms/internal/ads/dnw;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/dnw;->a(Lcom/google/android/gms/internal/ads/dng;)Z

    move-result v3

    .line 42
    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dng;->b()J

    move-result-wide v4

    .line 43
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dny;->B:Z

    if-eqz v2, :cond_0

    .line 44
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->D:J

    .line 45
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->C:J

    iput-wide v4, p2, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 46
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->B:Z

    move v2, v0

    .line 53
    :goto_1
    if-eqz v2, :cond_4

    .line 55
    :goto_2
    return v0

    .line 48
    :cond_0
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dny;->y:Z

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->D:J

    cmp-long v2, v4, v6

    if-eqz v2, :cond_1

    .line 49
    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/dny;->D:J

    iput-wide v4, p2, Lcom/google/android/gms/internal/ads/dnn;->a:J

    .line 50
    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/dny;->D:J

    move v2, v0

    .line 51
    goto :goto_1

    :cond_1
    move v2, v1

    .line 52
    goto :goto_1

    .line 55
    :cond_2
    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_0
.end method

.method final a(ID)V
    .locals 2

    .prologue
    .line 276
    sparse-switch p1, :sswitch_data_0

    .line 300
    :goto_0
    return-void

    .line 277
    :sswitch_0
    double-to-long v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->v:J

    goto :goto_0

    .line 279
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->I:I

    goto :goto_0

    .line 281
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->w:F

    goto :goto_0

    .line 283
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->x:F

    goto :goto_0

    .line 285
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->y:F

    goto :goto_0

    .line 287
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->z:F

    goto :goto_0

    .line 289
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->A:F

    goto :goto_0

    .line 291
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->B:F

    goto :goto_0

    .line 293
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->C:F

    goto :goto_0

    .line 295
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->D:F

    goto :goto_0

    .line 297
    :sswitch_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->E:F

    goto :goto_0

    .line 299
    :sswitch_b
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    double-to-float v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->F:F

    goto :goto_0

    .line 276
    :sswitch_data_0
    .sparse-switch
        0xb5 -> :sswitch_1
        0x4489 -> :sswitch_0
        0x55d1 -> :sswitch_2
        0x55d2 -> :sswitch_3
        0x55d3 -> :sswitch_4
        0x55d4 -> :sswitch_5
        0x55d5 -> :sswitch_6
        0x55d6 -> :sswitch_7
        0x55d7 -> :sswitch_8
        0x55d8 -> :sswitch_9
        0x55d9 -> :sswitch_a
        0x55da -> :sswitch_b
    .end sparse-switch
.end method

.method final a(IILcom/google/android/gms/internal/ads/dng;)V
    .locals 12

    .prologue
    .line 308
    sparse-switch p1, :sswitch_data_0

    .line 416
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x1a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "Unexpected id: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    :sswitch_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->m:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 310
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->m:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    rsub-int/lit8 v1, p2, 0x4

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 311
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->m:Lcom/google/android/gms/internal/ads/dsk;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/dsk;->c(I)V

    .line 312
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->m:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->j()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->z:I

    .line 415
    :goto_0
    return-void

    .line 314
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dnz;->h:[B

    .line 315
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->h:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    goto :goto_0

    .line 317
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dnz;->o:[B

    .line 318
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->o:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    goto :goto_0

    .line 320
    :sswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    new-array v1, p2, [B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    .line 321
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    goto :goto_0

    .line 323
    :sswitch_4
    new-array v0, p2, [B

    .line 324
    const/4 v1, 0x0

    invoke-interface {p3, v0, v1, p2}, Lcom/google/android/gms/internal/ads/dng;->b([BII)V

    .line 325
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    new-instance v2, Lcom/google/android/gms/internal/ads/dnr;

    const/4 v3, 0x1

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/internal/ads/dnr;-><init>(I[B)V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/dnz;->g:Lcom/google/android/gms/internal/ads/dnr;

    goto :goto_0

    .line 327
    :sswitch_5
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    if-nez v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->f:Lcom/google/android/gms/internal/ads/dob;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x8

    invoke-virtual {v0, p3, v1, v2, v3}, Lcom/google/android/gms/internal/ads/dob;->a(Lcom/google/android/gms/internal/ads/dng;ZZI)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->O:I

    .line 329
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->f:Lcom/google/android/gms/internal/ads/dob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dob;->b()I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    .line 330
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->K:J

    .line 331
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    .line 332
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dsk;->a()V

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->O:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnz;

    .line 334
    if-nez v0, :cond_1

    .line 335
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    sub-int v0, p2, v0

    invoke-interface {p3, v0}, Lcom/google/android/gms/internal/ads/dng;->b(I)V

    .line 336
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    goto :goto_0

    .line 338
    :cond_1
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 339
    const/4 v1, 0x3

    invoke-direct {p0, p3, v1}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;I)V

    .line 340
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x6

    shr-int/lit8 v1, v1, 0x1

    .line 341
    if-nez v1, :cond_4

    .line 342
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    .line 343
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/dny;->a([II)[I

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    .line 344
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v2, 0x0

    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    sub-int v3, p2, v3

    add-int/lit8 v3, v3, -0x3

    aput v3, v1, v2

    .line 398
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    shl-int/lit8 v1, v1, 0x8

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    .line 399
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->E:J

    int-to-long v4, v1

    invoke-direct {p0, v4, v5}, Lcom/google/android/gms/internal/ads/dny;->a(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->J:J

    .line 400
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit8 v1, v1, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_13

    const/4 v1, 0x1

    .line 401
    :goto_2
    iget v2, v0, Lcom/google/android/gms/internal/ads/dnz;->c:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/16 v2, 0xa3

    if-ne p1, v2, :cond_14

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v3, 0x2

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0x80

    const/16 v3, 0x80

    if-ne v2, v3, :cond_14

    :cond_2
    const/4 v2, 0x1

    .line 402
    :goto_3
    if-eqz v2, :cond_15

    const/4 v2, 0x1

    .line 403
    :goto_4
    if-eqz v1, :cond_16

    const/high16 v1, -0x80000000

    :goto_5
    or-int/2addr v1, v2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    .line 404
    const/4 v1, 0x2

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    .line 405
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    .line 406
    :cond_3
    const/16 v1, 0xa3

    if-ne p1, v1, :cond_18

    .line 407
    :goto_6
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    if-ge v1, v2, :cond_17

    .line 408
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    aget v1, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnz;I)V

    .line 409
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->J:J

    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    iget v4, v0, Lcom/google/android/gms/internal/ads/dnz;->d:I

    mul-int/2addr v1, v4

    div-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 410
    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dnz;J)V

    .line 411
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/ads/dny;->L:I

    goto :goto_6

    .line 345
    :cond_4
    const/16 v2, 0xa3

    if-eq p1, v2, :cond_5

    .line 346
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Lacing only supported in SimpleBlocks."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_5
    const/4 v2, 0x4

    invoke-direct {p0, p3, v2}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;I)V

    .line 348
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    const/4 v3, 0x3

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    .line 349
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    iget v3, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    .line 350
    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/dny;->a([II)[I

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    .line 351
    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    .line 352
    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, -0x4

    iget v2, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    div-int/2addr v1, v2

    .line 353
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v3, 0x0

    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    invoke-static {v2, v3, v4, v1}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_1

    .line 354
    :cond_6
    const/4 v2, 0x1

    if-ne v1, v2, :cond_9

    .line 355
    const/4 v3, 0x0

    .line 356
    const/4 v2, 0x4

    .line 357
    const/4 v1, 0x0

    :goto_7
    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_8

    .line 358
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 359
    :cond_7
    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;I)V

    .line 360
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    .line 361
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    aget v6, v5, v1

    add-int/2addr v6, v4

    aput v6, v5, v1

    .line 362
    const/16 v5, 0xff

    if-eq v4, v5, :cond_7

    .line 363
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 364
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 365
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    sub-int v5, p2, v5

    sub-int v2, v5, v2

    sub-int/2addr v2, v3

    aput v2, v1, v4

    goto/16 :goto_1

    .line 366
    :cond_9
    const/4 v2, 0x3

    if-ne v1, v2, :cond_12

    .line 367
    const/4 v3, 0x0

    .line 368
    const/4 v2, 0x4

    .line 369
    const/4 v1, 0x0

    :goto_8
    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    add-int/lit8 v4, v4, -0x1

    if-ge v1, v4, :cond_11

    .line 370
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v5, 0x0

    aput v5, v4, v1

    .line 371
    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0, p3, v2}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;I)V

    .line 372
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v5, v2, -0x1

    aget-byte v4, v4, v5

    if-nez v4, :cond_a

    .line 373
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "No valid varint length mask found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 374
    :cond_a
    const-wide/16 v4, 0x0

    .line 375
    const/4 v6, 0x0

    move v8, v6

    :goto_9
    const/16 v6, 0x8

    if-ge v8, v6, :cond_c

    .line 376
    const/4 v6, 0x1

    rsub-int/lit8 v7, v8, 0x7

    shl-int v7, v6, v7

    .line 377
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v9, v2, -0x1

    aget-byte v6, v6, v9

    and-int/2addr v6, v7

    if-eqz v6, :cond_e

    .line 378
    add-int/lit8 v4, v2, -0x1

    .line 379
    add-int/2addr v2, v8

    .line 380
    invoke-direct {p0, p3, v2}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;I)V

    .line 381
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, v5, v4

    and-int/lit16 v4, v4, 0xff

    xor-int/lit8 v5, v7, -0x1

    and-int/2addr v4, v5

    int-to-long v4, v4

    .line 382
    :goto_a
    if-ge v6, v2, :cond_b

    .line 383
    const/16 v7, 0x8

    shl-long/2addr v4, v7

    .line 384
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->k:Lcom/google/android/gms/internal/ads/dsk;

    iget-object v9, v7, Lcom/google/android/gms/internal/ads/dsk;->a:[B

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    int-to-long v10, v6

    or-long/2addr v4, v10

    move v6, v7

    goto :goto_a

    .line 385
    :cond_b
    if-lez v1, :cond_c

    .line 386
    const-wide/16 v6, 0x1

    mul-int/lit8 v8, v8, 0x7

    add-int/lit8 v8, v8, 0x6

    shl-long/2addr v6, v8

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    sub-long/2addr v4, v6

    .line 388
    :cond_c
    const-wide/32 v6, -0x80000000

    cmp-long v6, v4, v6

    if-ltz v6, :cond_d

    const-wide/32 v6, 0x7fffffff

    cmp-long v6, v4, v6

    if-lez v6, :cond_f

    .line 389
    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "EBML lacing sample size out of range."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_e
    add-int/lit8 v6, v8, 0x1

    move v8, v6

    goto :goto_9

    .line 390
    :cond_f
    long-to-int v4, v4

    .line 391
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    if-nez v1, :cond_10

    .line 392
    :goto_b
    aput v4, v5, v1

    .line 393
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    aget v4, v4, v1

    add-int/2addr v3, v4

    .line 394
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_8

    .line 392
    :cond_10
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    add-int/2addr v4, v6

    goto :goto_b

    .line 395
    :cond_11
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    iget v4, p0, Lcom/google/android/gms/internal/ads/dny;->M:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/google/android/gms/internal/ads/dny;->P:I

    sub-int v5, p2, v5

    sub-int v2, v5, v2

    sub-int/2addr v2, v3

    aput v2, v1, v4

    goto/16 :goto_1

    .line 397
    :cond_12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v2, 0x24

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Unexpected lacing value: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 400
    :cond_13
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 401
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 402
    :cond_15
    const/4 v2, 0x0

    goto/16 :goto_4

    .line 403
    :cond_16
    const/4 v1, 0x0

    goto/16 :goto_5

    .line 413
    :cond_17
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    goto/16 :goto_0

    .line 414
    :cond_18
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->N:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, p3, v0, v1}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dng;Lcom/google/android/gms/internal/ads/dnz;I)V

    goto/16 :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0xa1 -> :sswitch_5
        0xa3 -> :sswitch_5
        0x4255 -> :sswitch_3
        0x47e2 -> :sswitch_4
        0x53ab -> :sswitch_0
        0x63a2 -> :sswitch_1
        0x7672 -> :sswitch_2
    .end sparse-switch
.end method

.method final a(IJ)V
    .locals 8

    .prologue
    const/4 v6, 0x3

    const/4 v3, 0x2

    const/4 v1, 0x0

    const-wide/16 v4, 0x1

    const/4 v0, 0x1

    .line 180
    sparse-switch p1, :sswitch_data_0

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 181
    :sswitch_0
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "EBMLReadVersion "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :sswitch_1
    cmp-long v0, p2, v4

    if-ltz v0, :cond_1

    const-wide/16 v0, 0x2

    cmp-long v0, p2, v0

    if-lez v0, :cond_0

    .line 184
    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x35

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "DocTypeReadVersion "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :sswitch_2
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->A:J

    goto :goto_0

    .line 187
    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    goto :goto_0

    .line 189
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->j:I

    goto :goto_0

    .line 191
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->k:I

    goto :goto_0

    .line 193
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->l:I

    goto :goto_0

    .line 195
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->m:I

    goto :goto_0

    .line 197
    :sswitch_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->n:I

    goto :goto_0

    .line 199
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->b:I

    goto/16 :goto_0

    .line 201
    :sswitch_a
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    cmp-long v3, p2, v4

    if-nez v3, :cond_2

    :goto_1
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/dnz;->L:Z

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 203
    :sswitch_b
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    cmp-long v3, p2, v4

    if-nez v3, :cond_3

    :goto_2
    iput-boolean v0, v2, Lcom/google/android/gms/internal/ads/dnz;->M:Z

    goto/16 :goto_0

    :cond_3
    move v0, v1

    goto :goto_2

    .line 205
    :sswitch_c
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->c:I

    goto/16 :goto_0

    .line 207
    :sswitch_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->d:I

    goto/16 :goto_0

    .line 209
    :sswitch_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/dnz;->J:J

    goto/16 :goto_0

    .line 211
    :sswitch_f
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-wide p2, v0, Lcom/google/android/gms/internal/ads/dnz;->K:J

    goto/16 :goto_0

    .line 213
    :sswitch_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->G:I

    goto/16 :goto_0

    .line 215
    :sswitch_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->H:I

    goto/16 :goto_0

    .line 217
    :sswitch_12
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->ab:Z

    goto/16 :goto_0

    .line 219
    :sswitch_13
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ContentEncodingOrder "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 221
    :sswitch_14
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 222
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x37

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ContentEncodingScope "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :sswitch_15
    const-wide/16 v0, 0x3

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 224
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x32

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ContentCompAlgo "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 225
    :sswitch_16
    const-wide/16 v0, 0x5

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 226
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x31

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "ContentEncAlgo "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 227
    :sswitch_17
    cmp-long v0, p2, v4

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const/16 v1, 0x38

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "AESSettingsCipherMode "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 229
    :sswitch_18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dny;->a(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dse;->a(J)V

    goto/16 :goto_0

    .line 231
    :sswitch_19
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/dny;->H:Z

    if-nez v1, :cond_0

    .line 232
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    invoke-virtual {v1, p2, p3}, Lcom/google/android/gms/internal/ads/dse;->a(J)V

    .line 233
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->H:Z

    goto/16 :goto_0

    .line 234
    :sswitch_1a
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dny;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->E:J

    goto/16 :goto_0

    .line 236
    :sswitch_1b
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/dny;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->K:J

    goto/16 :goto_0

    .line 238
    :sswitch_1c
    long-to-int v2, p2

    .line 239
    sparse-switch v2, :sswitch_data_1

    goto/16 :goto_0

    .line 240
    :sswitch_1d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->p:I

    goto/16 :goto_0

    .line 242
    :sswitch_1e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v3, v0, Lcom/google/android/gms/internal/ads/dnz;->p:I

    goto/16 :goto_0

    .line 244
    :sswitch_1f
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v0, v1, Lcom/google/android/gms/internal/ads/dnz;->p:I

    goto/16 :goto_0

    .line 246
    :sswitch_20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v6, v0, Lcom/google/android/gms/internal/ads/dnz;->p:I

    goto/16 :goto_0

    .line 249
    :sswitch_21
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/dnz;->q:Z

    .line 250
    long-to-int v1, p2

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 251
    :pswitch_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v0, v1, Lcom/google/android/gms/internal/ads/dnz;->r:I

    goto/16 :goto_0

    .line 253
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v3, v0, Lcom/google/android/gms/internal/ads/dnz;->r:I

    goto/16 :goto_0

    .line 255
    :pswitch_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->r:I

    goto/16 :goto_0

    .line 258
    :sswitch_22
    long-to-int v0, p2

    sparse-switch v0, :sswitch_data_2

    goto/16 :goto_0

    .line 259
    :sswitch_23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v6, v0, Lcom/google/android/gms/internal/ads/dnz;->s:I

    goto/16 :goto_0

    .line 261
    :sswitch_24
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    const/4 v1, 0x6

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->s:I

    goto/16 :goto_0

    .line 263
    :sswitch_25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    const/4 v1, 0x7

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->s:I

    goto/16 :goto_0

    .line 266
    :sswitch_26
    long-to-int v1, p2

    packed-switch v1, :pswitch_data_1

    goto/16 :goto_0

    .line 267
    :pswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v3, v0, Lcom/google/android/gms/internal/ads/dnz;->t:I

    goto/16 :goto_0

    .line 269
    :pswitch_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput v0, v1, Lcom/google/android/gms/internal/ads/dnz;->t:I

    goto/16 :goto_0

    .line 272
    :sswitch_27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->u:I

    goto/16 :goto_0

    .line 274
    :sswitch_28
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    long-to-int v1, p2

    iput v1, v0, Lcom/google/android/gms/internal/ads/dnz;->v:I

    goto/16 :goto_0

    .line 180
    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_c
        0x88 -> :sswitch_a
        0x9b -> :sswitch_1b
        0x9f -> :sswitch_10
        0xb0 -> :sswitch_4
        0xb3 -> :sswitch_18
        0xba -> :sswitch_5
        0xd7 -> :sswitch_9
        0xe7 -> :sswitch_1a
        0xf1 -> :sswitch_19
        0xfb -> :sswitch_12
        0x4254 -> :sswitch_15
        0x4285 -> :sswitch_1
        0x42f7 -> :sswitch_0
        0x47e1 -> :sswitch_16
        0x47e8 -> :sswitch_17
        0x5031 -> :sswitch_13
        0x5032 -> :sswitch_14
        0x53ac -> :sswitch_2
        0x53b8 -> :sswitch_1c
        0x54b0 -> :sswitch_6
        0x54b2 -> :sswitch_8
        0x54ba -> :sswitch_7
        0x55aa -> :sswitch_b
        0x55b9 -> :sswitch_26
        0x55ba -> :sswitch_22
        0x55bb -> :sswitch_21
        0x55bc -> :sswitch_27
        0x55bd -> :sswitch_28
        0x56aa -> :sswitch_e
        0x56bb -> :sswitch_f
        0x6264 -> :sswitch_11
        0x23e383 -> :sswitch_d
        0x2ad7b1 -> :sswitch_3
    .end sparse-switch

    .line 239
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1d
        0x1 -> :sswitch_1e
        0x3 -> :sswitch_1f
        0xf -> :sswitch_20
    .end sparse-switch

    .line 250
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 258
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_23
        0x6 -> :sswitch_23
        0x7 -> :sswitch_23
        0x10 -> :sswitch_24
        0x12 -> :sswitch_25
    .end sparse-switch

    .line 266
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method final a(IJJ)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    .line 64
    sparse-switch p1, :sswitch_data_0

    .line 91
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 65
    :sswitch_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    cmp-long v0, v0, p2

    if-eqz v0, :cond_1

    .line 66
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Multiple Segment elements not supported"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :cond_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    .line 68
    iput-wide p4, p0, Lcom/google/android/gms/internal/ads/dny;->s:J

    goto :goto_0

    .line 70
    :sswitch_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->z:I

    .line 71
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->A:J

    goto :goto_0

    .line 73
    :sswitch_3
    new-instance v0, Lcom/google/android/gms/internal/ads/dse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dse;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    .line 74
    new-instance v0, Lcom/google/android/gms/internal/ads/dse;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dse;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    goto :goto_0

    .line 76
    :sswitch_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->H:Z

    goto :goto_0

    .line 78
    :sswitch_5
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->y:Z

    if-nez v0, :cond_0

    .line 79
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->h:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->C:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 80
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dny;->B:Z

    goto :goto_0

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->ac:Lcom/google/android/gms/internal/ads/dnj;

    new-instance v1, Lcom/google/android/gms/internal/ads/dnp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/dnp;-><init>(J)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/dnj;->a(Lcom/google/android/gms/internal/ads/dnm;)V

    .line 82
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dny;->y:Z

    goto :goto_0

    .line 83
    :sswitch_6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->ab:Z

    goto :goto_0

    .line 86
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dnz;->e:Z

    goto :goto_0

    .line 88
    :sswitch_8
    new-instance v0, Lcom/google/android/gms/internal/ads/dnz;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/dnz;-><init>(Lcom/google/android/gms/internal/ads/dnx;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    goto :goto_0

    .line 90
    :sswitch_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-boolean v4, v0, Lcom/google/android/gms/internal/ads/dnz;->q:Z

    goto :goto_0

    .line 64
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_6
        0xae -> :sswitch_8
        0xbb -> :sswitch_4
        0x4dbb -> :sswitch_2
        0x5035 -> :sswitch_7
        0x55d0 -> :sswitch_9
        0x6240 -> :sswitch_0
        0x18538067 -> :sswitch_1
        0x1c53bb6b -> :sswitch_3
        0x1f43b675 -> :sswitch_5
    .end sparse-switch
.end method

.method final a(ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 301
    sparse-switch p1, :sswitch_data_0

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 302
    :sswitch_0
    const-string/jumbo v0, "webm"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "matroska"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x16

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v1, "DocType "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 304
    :sswitch_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iput-object p2, v0, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    goto :goto_0

    .line 306
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/ads/dnz;->a(Lcom/google/android/gms/internal/ads/dnz;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 301
    :sswitch_data_0
    .sparse-switch
        0x86 -> :sswitch_1
        0x4282 -> :sswitch_0
        0x22b59c -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(JJ)V
    .locals 2

    .prologue
    .line 31
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->E:J

    .line 32
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->e:Lcom/google/android/gms/internal/ads/dnw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnw;->a()V

    .line 34
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->f:Lcom/google/android/gms/internal/ads/dob;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dob;->a()V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dny;->b()V

    .line 36
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dnj;)V
    .locals 0

    .prologue
    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dny;->ac:Lcom/google/android/gms/internal/ads/dnj;

    .line 30
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dng;)Z
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/google/android/gms/internal/ads/doc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/doc;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/doc;->a(Lcom/google/android/gms/internal/ads/dng;)Z

    move-result v0

    return v0
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method

.method final c(I)V
    .locals 12

    .prologue
    .line 92
    sparse-switch p1, :sswitch_data_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 93
    :sswitch_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 94
    const-wide/32 v0, 0xf4240

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->u:J

    .line 95
    :cond_1
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->v:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 96
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->v:J

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/ads/dny;->a(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    goto :goto_0

    .line 97
    :sswitch_1
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->z:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->A:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 98
    :cond_2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->z:I

    const v1, 0x1c53bb6b

    if-ne v0, v1, :cond_0

    .line 100
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->A:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dny;->C:J

    goto :goto_0

    .line 101
    :sswitch_2
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->y:Z

    if-nez v0, :cond_0

    .line 102
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->ac:Lcom/google/android/gms/internal/ads/dnj;

    .line 103
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    .line 104
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dse;->a()I

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    .line 105
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dse;->a()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/dse;->a()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 106
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    .line 107
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    .line 108
    new-instance v0, Lcom/google/android/gms/internal/ads/dnp;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dnp;-><init>(J)V

    .line 127
    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/dnj;->a(Lcom/google/android/gms/internal/ads/dnm;)V

    .line 128
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->y:Z

    goto/16 :goto_0

    .line 109
    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dse;->a()I

    move-result v2

    .line 110
    new-array v3, v2, [I

    .line 111
    new-array v4, v2, [J

    .line 112
    new-array v5, v2, [J

    .line 113
    new-array v6, v2, [J

    .line 114
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v2, :cond_6

    .line 115
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/dse;->a(I)J

    move-result-wide v8

    aput-wide v8, v6, v0

    .line 116
    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/dse;->a(I)J

    move-result-wide v10

    add-long/2addr v8, v10

    aput-wide v8, v4, v0

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 118
    :cond_6
    const/4 v0, 0x0

    :goto_3
    add-int/lit8 v7, v2, -0x1

    if-ge v0, v7, :cond_7

    .line 119
    add-int/lit8 v7, v0, 0x1

    aget-wide v8, v4, v7

    aget-wide v10, v4, v0

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v3, v0

    .line 120
    add-int/lit8 v7, v0, 0x1

    aget-wide v8, v6, v7

    aget-wide v10, v6, v0

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 122
    :cond_7
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dny;->t:J

    iget-wide v10, p0, Lcom/google/android/gms/internal/ads/dny;->s:J

    add-long/2addr v8, v10

    add-int/lit8 v7, v2, -0x1

    aget-wide v10, v4, v7

    sub-long/2addr v8, v10

    long-to-int v7, v8

    aput v7, v3, v0

    .line 123
    add-int/lit8 v0, v2, -0x1

    iget-wide v8, p0, Lcom/google/android/gms/internal/ads/dny;->w:J

    add-int/lit8 v2, v2, -0x1

    aget-wide v10, v6, v2

    sub-long/2addr v8, v10

    aput-wide v8, v5, v0

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->F:Lcom/google/android/gms/internal/ads/dse;

    .line 125
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->G:Lcom/google/android/gms/internal/ads/dse;

    .line 126
    new-instance v0, Lcom/google/android/gms/internal/ads/dnf;

    invoke-direct {v0, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/dnf;-><init>([I[J[J[J)V

    goto :goto_1

    .line 129
    :sswitch_3
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/dny;->ab:Z

    if-nez v0, :cond_8

    .line 132
    iget v0, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->Q:I

    .line 133
    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->g:Landroid/util/SparseArray;

    iget v1, p0, Lcom/google/android/gms/internal/ads/dny;->O:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/dnz;

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dny;->J:J

    invoke-direct {p0, v0, v2, v3}, Lcom/google/android/gms/internal/ads/dny;->a(Lcom/google/android/gms/internal/ads/dnz;J)V

    .line 134
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/dny;->I:I

    goto/16 :goto_0

    .line 136
    :sswitch_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dnz;->e:Z

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->g:Lcom/google/android/gms/internal/ads/dnr;

    if-nez v0, :cond_9

    .line 138
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    new-instance v1, Lcom/google/android/gms/internal/ads/dmw;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/dmw$a;

    const/4 v3, 0x0

    new-instance v4, Lcom/google/android/gms/internal/ads/dmw$a;

    sget-object v5, Lcom/google/android/gms/internal/ads/dkr;->b:Ljava/util/UUID;

    const-string/jumbo v6, "video/webm"

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dnz;->g:Lcom/google/android/gms/internal/ads/dnr;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/dnr;->b:[B

    invoke-direct {v4, v5, v6, v7}, Lcom/google/android/gms/internal/ads/dmw$a;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/dmw;-><init>([Lcom/google/android/gms/internal/ads/dmw$a;)V

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/dnz;->i:Lcom/google/android/gms/internal/ads/dmw;

    goto/16 :goto_0

    .line 140
    :sswitch_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/dnz;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->f:[B

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "Combining encryption and compression is not supported"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :sswitch_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/dnz;->a:Ljava/lang/String;

    .line 143
    const-string/jumbo v1, "V_VP8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_VP9"

    .line 144
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEG2"

    .line 145
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEG4/ISO/SP"

    .line 146
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEG4/ISO/ASP"

    .line 147
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEG4/ISO/AP"

    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEG4/ISO/AVC"

    .line 149
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MPEGH/ISO/HEVC"

    .line 150
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_MS/VFW/FOURCC"

    .line 151
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "V_THEORA"

    .line 152
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_OPUS"

    .line 153
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_VORBIS"

    .line 154
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_AAC"

    .line 155
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_MPEG/L2"

    .line 156
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_MPEG/L3"

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_AC3"

    .line 158
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_EAC3"

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_TRUEHD"

    .line 160
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_DTS"

    .line 161
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_DTS/EXPRESS"

    .line 162
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_DTS/LOSSLESS"

    .line 163
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_FLAC"

    .line 164
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_MS/ACM"

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "A_PCM/INT/LIT"

    .line 166
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "S_TEXT/UTF8"

    .line 167
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "S_VOBSUB"

    .line 168
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "S_HDMV/PGS"

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string/jumbo v1, "S_DVBSUB"

    .line 170
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    .line 171
    :goto_4
    if-eqz v0, :cond_b

    .line 172
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->ac:Lcom/google/android/gms/internal/ads/dnj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget v2, v2, Lcom/google/android/gms/internal/ads/dnz;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/dnz;->a(Lcom/google/android/gms/internal/ads/dnj;I)V

    .line 173
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->g:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    iget v1, v1, Lcom/google/android/gms/internal/ads/dnz;->b:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 174
    :cond_b
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->x:Lcom/google/android/gms/internal/ads/dnz;

    goto/16 :goto_0

    .line 170
    :cond_c
    const/4 v0, 0x0

    goto :goto_4

    .line 176
    :sswitch_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->g:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_d

    .line 177
    new-instance v0, Lcom/google/android/gms/internal/ads/zzhi;

    const-string/jumbo v1, "No valid tracks were found"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhi;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dny;->ac:Lcom/google/android/gms/internal/ads/dnj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/dnj;->a()V

    goto/16 :goto_0

    .line 92
    :sswitch_data_0
    .sparse-switch
        0xa0 -> :sswitch_3
        0xae -> :sswitch_6
        0x4dbb -> :sswitch_1
        0x6240 -> :sswitch_4
        0x6d80 -> :sswitch_5
        0x1549a966 -> :sswitch_0
        0x1654ae6b -> :sswitch_7
        0x1c53bb6b -> :sswitch_2
    .end sparse-switch
.end method
