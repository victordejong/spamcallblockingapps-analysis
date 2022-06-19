.class public final Lcom/google/android/gms/internal/ads/dyl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/dxv;


# static fields
.field private static final F:Lcom/google/android/gms/internal/ads/dxw;

.field private static final G:[B

.field private static final H:[B

.field private static final I:Ljava/util/UUID;


# instance fields
.field A:I

.field B:I

.field C:I

.field D:Z

.field E:Lcom/google/android/gms/internal/ads/dxx;

.field private final J:Lcom/google/android/gms/internal/ads/dyj;

.field private final K:Lcom/google/android/gms/internal/ads/ecy;

.field private final L:Lcom/google/android/gms/internal/ads/ecy;

.field private final M:Lcom/google/android/gms/internal/ads/ecy;

.field private final N:Lcom/google/android/gms/internal/ads/ecy;

.field private final O:Lcom/google/android/gms/internal/ads/ecy;

.field private final P:Lcom/google/android/gms/internal/ads/ecy;

.field private final Q:Lcom/google/android/gms/internal/ads/ecy;

.field private R:Ljava/nio/ByteBuffer;

.field private S:J

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Z

.field private X:Z

.field private Y:B

.field private Z:I

.field final a:Lcom/google/android/gms/internal/ads/dyo;

.field private aa:I

.field private ab:I

.field private ac:Z

.field final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/google/android/gms/internal/ads/dym;",
            ">;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:Lcom/google/android/gms/internal/ads/ecy;

.field final e:Lcom/google/android/gms/internal/ads/ecy;

.field f:J

.field g:J

.field h:J

.field i:J

.field j:J

.field k:Lcom/google/android/gms/internal/ads/dym;

.field l:Z

.field m:I

.field n:J

.field o:Z

.field p:J

.field q:J

.field r:Lcom/google/android/gms/internal/ads/ecs;

.field s:Lcom/google/android/gms/internal/ads/ecs;

.field t:Z

.field u:I

.field v:J

.field w:J

.field x:I

.field y:I

.field z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 577
    new-instance v0, Lcom/google/android/gms/internal/ads/dyk;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/dyk;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyl;->F:Lcom/google/android/gms/internal/ads/dxw;

    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 578
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/dyl;->G:[B

    const/16 v0, 0xc

    new-array v0, v0, [B

    .line 579
    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/dyl;->H:[B

    .line 580
    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/dyl;->I:Ljava/util/UUID;

    return-void

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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/dyl;-><init>(I)V

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 3
    new-instance p1, Lcom/google/android/gms/internal/ads/dye;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dye;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/dyl;-><init>(Lcom/google/android/gms/internal/ads/dyj;I)V

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/ads/dyj;I)V
    .locals 4

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dyl;->g:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    .line 7
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->h:J

    .line 8
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->i:J

    .line 9
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->j:J

    .line 10
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dyl;->p:J

    .line 11
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/dyl;->S:J

    .line 12
    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->q:J

    .line 13
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->J:Lcom/google/android/gms/internal/ads/dyj;

    .line 14
    new-instance p2, Lcom/google/android/gms/internal/ads/dyn;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/google/android/gms/internal/ads/dyn;-><init>(Lcom/google/android/gms/internal/ads/dyl;Lcom/google/android/gms/internal/ads/dyk;)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/dyj;->a(Lcom/google/android/gms/internal/ads/dyi;)V

    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/dyl;->c:Z

    .line 16
    new-instance p1, Lcom/google/android/gms/internal/ads/dyo;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/dyo;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dyo;

    .line 17
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->b:Landroid/util/SparseArray;

    .line 18
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    .line 19
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->M:Lcom/google/android/gms/internal/ads/ecy;

    .line 20
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->e:Lcom/google/android/gms/internal/ads/ecy;

    .line 21
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    sget-object v0, Lcom/google/android/gms/internal/ads/ecx;->a:[B

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/ecy;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->K:Lcom/google/android/gms/internal/ads/ecy;

    .line 22
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->L:Lcom/google/android/gms/internal/ads/ecy;

    .line 23
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ecy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    .line 24
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ecy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    .line 25
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    const/16 p2, 0x8

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->P:Lcom/google/android/gms/internal/ads/ecy;

    .line 26
    new-instance p1, Lcom/google/android/gms/internal/ads/ecy;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/ecy;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->Q:Lcom/google/android/gms/internal/ads/ecy;

    return-void
.end method

.method static a(I)I
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
        0x56aa -> :sswitch_4
        0x56bb -> :sswitch_4
        0x6240 -> :sswitch_2
        0x6264 -> :sswitch_4
        0x63a2 -> :sswitch_1
        0x6d80 -> :sswitch_2
        0x7670 -> :sswitch_2
        0x7672 -> :sswitch_1
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

.method private final a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyc;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 560
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecy;->b()I

    move-result v0

    if-lez v0, :cond_0

    .line 562
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 563
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {p2, p3, p1}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    goto :goto_0

    .line 564
    :cond_0
    invoke-interface {p2, p1, p3}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/dxt;I)I

    move-result p1

    .line 565
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 566
    iget p2, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    return p1
.end method

.method static synthetic a()Ljava/util/UUID;
    .locals 1

    .line 576
    sget-object v0, Lcom/google/android/gms/internal/ads/dyl;->I:Ljava/util/UUID;

    return-object v0
.end method

.method static a([II)[I
    .locals 1

    if-nez p0, :cond_0

    .line 572
    new-array p0, p1, [I

    return-object p0

    .line 573
    :cond_0
    array-length v0, p0

    if-lt v0, p1, :cond_1

    return-object p0

    .line 575
    :cond_1
    array-length p0, p0

    shl-int/lit8 p0, p0, 0x1

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    new-array p0, p0, [I

    return-object p0
.end method

.method private final b()V
    .locals 1

    const/4 v0, 0x0

    .line 439
    iput v0, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 440
    iput v0, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    .line 441
    iput v0, p0, Lcom/google/android/gms/internal/ads/dyl;->aa:I

    .line 442
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->U:Z

    .line 443
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->V:Z

    .line 444
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->X:Z

    .line 445
    iput v0, p0, Lcom/google/android/gms/internal/ads/dyl;->Z:I

    .line 446
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/dyl;->Y:B

    .line 447
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->W:Z

    .line 448
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecy;->a()V

    return-void
.end method

.method static b(I)Z
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


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyb;)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->ac:Z

    const/4 v1, 0x1

    const/4 v2, 0x1

    :cond_0
    if-eqz v2, :cond_3

    .line 40
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/dyl;->ac:Z

    if-nez v3, :cond_3

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->J:Lcom/google/android/gms/internal/ads/dyj;

    invoke-interface {v2, p1}, Lcom/google/android/gms/internal/ads/dyj;->a(Lcom/google/android/gms/internal/ads/dxt;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 42
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dxt;->b()J

    move-result-wide v3

    .line 43
    iget-boolean v5, p0, Lcom/google/android/gms/internal/ads/dyl;->o:Z

    if-eqz v5, :cond_1

    .line 44
    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/dyl;->S:J

    .line 45
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dyl;->p:J

    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 46
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/dyl;->o:Z

    :goto_0
    const/4 v3, 0x1

    goto :goto_1

    .line 48
    :cond_1
    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/dyl;->l:Z

    if-eqz v3, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/dyl;->S:J

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    .line 49
    iput-wide v3, p2, Lcom/google/android/gms/internal/ads/dyb;->a:J

    .line 50
    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/dyl;->S:J

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    return v1

    :cond_3
    if-eqz v2, :cond_4

    return v0

    :cond_4
    const/4 p1, -0x1

    return p1
.end method

.method final a(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzhw;
        }
    .end annotation

    .line 568
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->h:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    move-wide v0, p1

    .line 570
    invoke-static/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ede;->a(JJJ)J

    move-result-wide p1

    return-wide p1

    .line 569
    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string p2, "Can\'t scale timecode prior to timecodeScale being set."

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 31
    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/dyl;->q:J

    const/4 p1, 0x0

    .line 32
    iput p1, p0, Lcom/google/android/gms/internal/ads/dyl;->u:I

    .line 33
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->J:Lcom/google/android/gms/internal/ads/dyj;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/dyj;->a()V

    .line 34
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->a:Lcom/google/android/gms/internal/ads/dyo;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dyo;->a()V

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyl;->b()V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dxt;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 450
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    .line 4020
    iget v0, v0, Lcom/google/android/gms/internal/ads/ecy;->c:I

    if-lt v0, p2, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ecy;->c()I

    move-result v0

    if-ge v0, p2, :cond_1

    .line 453
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    array-length v2, v2

    shl-int/lit8 v2, v2, 0x1

    invoke-static {v2, p2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    .line 5020
    iget v2, v2, Lcom/google/android/gms/internal/ads/ecy;->c:I

    .line 455
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/ecy;->a([BI)V

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    .line 6020
    iget v1, v1, Lcom/google/android/gms/internal/ads/ecy;->c:I

    .line 456
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    .line 7020
    iget v2, v2, Lcom/google/android/gms/internal/ads/ecy;->c:I

    sub-int v2, p2, v2

    .line 456
    invoke-interface {p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 457
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/ecy;->b(I)V

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dym;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 459
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 460
    sget-object p2, Lcom/google/android/gms/internal/ads/dyl;->G:[B

    array-length v0, p2

    add-int/2addr v0, p3

    .line 461
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ecy;->c()I

    move-result v2

    if-ge v2, v0, :cond_0

    .line 462
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    add-int v3, v0, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    iput-object v3, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    .line 463
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    array-length p2, p2

    invoke-interface {p1, v2, p2, p3}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 464
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 465
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/ecy;->b(I)V

    return-void

    .line 467
    :cond_1
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/dym;->O:Lcom/google/android/gms/internal/ads/dyc;

    .line 468
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dyl;->U:Z

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_f

    .line 469
    iget-boolean v2, p2, Lcom/google/android/gms/internal/ads/dym;->e:Z

    if-eqz v2, :cond_d

    .line 470
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->C:I

    const v5, -0x40000001    # -1.9999999f

    and-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/dyl;->C:I

    .line 471
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dyl;->V:Z

    const/16 v5, 0x80

    if-nez v2, :cond_3

    .line 472
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 473
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 474
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v2, v2, v1

    and-int/2addr v2, v5

    if-eq v2, v5, :cond_2

    .line 476
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v2, v2, v1

    iput-byte v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Y:B

    .line 477
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dyl;->V:Z

    goto :goto_0

    .line 475
    :cond_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhw;

    const-string p2, "Extension bit is set in signal byte"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(Ljava/lang/String;)V

    throw p1

    .line 478
    :cond_3
    :goto_0
    iget-byte v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Y:B

    and-int/lit8 v6, v2, 0x1

    if-ne v6, v4, :cond_e

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_4

    const/4 v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 480
    :goto_1
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->C:I

    const/high16 v7, 0x40000000    # 2.0f

    or-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->C:I

    .line 481
    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/dyl;->W:Z

    if-nez v6, :cond_6

    .line 482
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->P:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/16 v7, 0x8

    invoke-interface {p1, v6, v1, v7}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 483
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 484
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dyl;->W:Z

    .line 485
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    if-eqz v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    or-int/2addr v5, v7

    int-to-byte v5, v5

    aput-byte v5, v6, v1

    .line 486
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 487
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {v0, v5, v4}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 488
    iget v5, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    .line 489
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->P:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 490
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->P:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 491
    iget v5, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr v5, v7

    iput v5, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    :cond_6
    if-eqz v2, :cond_e

    .line 493
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/dyl;->X:Z

    if-nez v2, :cond_7

    .line 494
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {p1, v2, v1, v4}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 495
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 496
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 497
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/ecy;->d()I

    move-result v2

    iput v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Z:I

    .line 498
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dyl;->X:Z

    .line 499
    :cond_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Z:I

    shl-int/2addr v2, v3

    .line 500
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v5, v2}, Lcom/google/android/gms/internal/ads/ecy;->a(I)V

    .line 501
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {p1, v5, v1, v2}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    .line 502
    iget v5, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr v5, v2

    iput v5, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 503
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Z:I

    div-int/2addr v2, v3

    add-int/2addr v2, v4

    int-to-short v2, v2

    mul-int/lit8 v5, v2, 0x6

    add-int/2addr v5, v3

    .line 505
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_8

    .line 506
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v6

    if-ge v6, v5, :cond_9

    .line 507
    :cond_8
    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    .line 508
    :cond_9
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 509
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 511
    :goto_3
    iget v7, p0, Lcom/google/android/gms/internal/ads/dyl;->Z:I

    if-ge v2, v7, :cond_b

    .line 513
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dyl;->d:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v7

    .line 514
    rem-int/lit8 v8, v2, 0x2

    if-nez v8, :cond_a

    .line 515
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    int-to-short v6, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_4

    .line 516
    :cond_a
    iget-object v8, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    sub-int v6, v7, v6

    invoke-virtual {v8, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    add-int/lit8 v2, v2, 0x1

    move v6, v7

    goto :goto_3

    .line 518
    :cond_b
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    sub-int v2, p3, v2

    sub-int/2addr v2, v6

    .line 519
    rem-int/2addr v7, v3

    if-ne v7, v4, :cond_c

    .line 520
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_5

    .line 521
    :cond_c
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    int-to-short v2, v2

    invoke-virtual {v6, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 522
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 523
    :goto_5
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Q:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->R:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Lcom/google/android/gms/internal/ads/ecy;->a([BI)V

    .line 524
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->Q:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {v0, v2, v5}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 525
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr v2, v5

    iput v2, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    goto :goto_6

    .line 526
    :cond_d
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dym;->f:[B

    if-eqz v2, :cond_e

    .line 527
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v5, p2, Lcom/google/android/gms/internal/ads/dym;->f:[B

    iget-object v6, p2, Lcom/google/android/gms/internal/ads/dym;->f:[B

    array-length v6, v6

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/ecy;->a([BI)V

    .line 528
    :cond_e
    :goto_6
    iput-boolean v4, p0, Lcom/google/android/gms/internal/ads/dyl;->U:Z

    .line 529
    :cond_f
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    .line 8020
    iget v2, v2, Lcom/google/android/gms/internal/ads/ecy;->c:I

    add-int/2addr p3, v2

    .line 530
    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string v5, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x4

    if-nez v2, :cond_11

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string v6, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_8

    .line 553
    :cond_10
    :goto_7
    iget v2, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    if-ge v2, p3, :cond_14

    sub-int v2, p3, v2

    .line 554
    invoke-direct {p0, p1, v0, v2}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyc;I)I

    goto :goto_7

    .line 531
    :cond_11
    :goto_8
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->L:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    .line 532
    aput-byte v1, v2, v1

    .line 533
    aput-byte v1, v2, v4

    .line 534
    aput-byte v1, v2, v3

    .line 535
    iget v3, p2, Lcom/google/android/gms/internal/ads/dym;->P:I

    .line 536
    iget v4, p2, Lcom/google/android/gms/internal/ads/dym;->P:I

    rsub-int/lit8 v4, v4, 0x4

    .line 537
    :goto_9
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    if-ge v6, p3, :cond_14

    .line 538
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->aa:I

    if-nez v6, :cond_13

    .line 540
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ecy;->b()I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int v7, v4, v6

    sub-int v8, v3, v6

    .line 541
    invoke-interface {p1, v2, v7, v8}, Lcom/google/android/gms/internal/ads/dxt;->b([BII)V

    if-lez v6, :cond_12

    .line 543
    iget-object v7, p0, Lcom/google/android/gms/internal/ads/dyl;->N:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v7, v2, v4, v6}, Lcom/google/android/gms/internal/ads/ecy;->a([BII)V

    .line 544
    :cond_12
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    add-int/2addr v6, v3

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->T:I

    .line 545
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->L:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 546
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->L:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/ecy;->i()I

    move-result v6

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->aa:I

    .line 547
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->K:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v6, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 548
    iget-object v6, p0, Lcom/google/android/gms/internal/ads/dyl;->K:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {v0, v6, v5}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 549
    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    goto :goto_9

    .line 551
    :cond_13
    invoke-direct {p0, p1, v0, v6}, Lcom/google/android/gms/internal/ads/dyl;->a(Lcom/google/android/gms/internal/ads/dxt;Lcom/google/android/gms/internal/ads/dyc;I)I

    move-result v7

    sub-int/2addr v6, v7

    iput v6, p0, Lcom/google/android/gms/internal/ads/dyl;->aa:I

    goto :goto_9

    .line 555
    :cond_14
    iget-object p1, p2, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string p2, "A_VORBIS"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    .line 556
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->M:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/ecy;->c(I)V

    .line 557
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->M:Lcom/google/android/gms/internal/ads/ecy;

    invoke-interface {v0, p1, v5}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 558
    iget p1, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    add-int/2addr p1, v5

    iput p1, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    :cond_15
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxx;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/dyl;->E:Lcom/google/android/gms/internal/ads/dxx;

    return-void
.end method

.method final a(Lcom/google/android/gms/internal/ads/dym;J)V
    .locals 11

    .line 417
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dym;->a:Ljava/lang/String;

    const-string v1, "S_TEXT/UTF8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 419
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/dyl;->w:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x0

    cmp-long v7, v2, v4

    if-nez v7, :cond_0

    .line 421
    sget-object v2, Lcom/google/android/gms/internal/ads/dyl;->H:[B

    goto :goto_0

    :cond_0
    const-wide v4, 0xd693a400L

    .line 422
    div-long v7, v2, v4

    long-to-int v8, v7

    int-to-long v9, v8

    mul-long v9, v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v4, 0x3938700

    .line 424
    div-long v4, v2, v4

    long-to-int v5, v4

    const v4, 0x3938700

    mul-int v4, v4, v5

    int-to-long v9, v4

    sub-long/2addr v2, v9

    const-wide/32 v9, 0xf4240

    .line 426
    div-long v9, v2, v9

    long-to-int v4, v9

    const v7, 0xf4240

    mul-int v7, v7, v4

    int-to-long v9, v7

    sub-long/2addr v2, v9

    const-wide/16 v9, 0x3e8

    .line 428
    div-long/2addr v2, v9

    long-to-int v3, v2

    .line 429
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    .line 430
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v1

    const/4 v5, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v5

    const/4 v4, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "%02d:%02d:%02d,%03d"

    .line 431
    invoke-static {v2, v3, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/ede;->b(Ljava/lang/String;)[B

    move-result-object v2

    :goto_0
    const/16 v3, 0x13

    const/16 v4, 0xc

    .line 432
    invoke-static {v2, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 433
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dym;->O:Lcom/google/android/gms/internal/ads/dyc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    .line 2020
    iget v3, v2, Lcom/google/android/gms/internal/ads/ecy;->c:I

    .line 433
    invoke-interface {v0, v2, v3}, Lcom/google/android/gms/internal/ads/dyc;->a(Lcom/google/android/gms/internal/ads/ecy;I)V

    .line 434
    iget v0, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/dyl;->O:Lcom/google/android/gms/internal/ads/ecy;

    .line 3020
    iget v2, v2, Lcom/google/android/gms/internal/ads/ecy;->c:I

    add-int/2addr v0, v2

    .line 434
    iput v0, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    .line 435
    :cond_1
    iget-object v2, p1, Lcom/google/android/gms/internal/ads/dym;->O:Lcom/google/android/gms/internal/ads/dyc;

    iget v5, p0, Lcom/google/android/gms/internal/ads/dyl;->C:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/dyl;->ab:I

    const/4 v7, 0x0

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/dym;->g:Lcom/google/android/gms/internal/ads/dyf;

    move-wide v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/dyc;->a(JIIILcom/google/android/gms/internal/ads/dyf;)V

    .line 436
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/dyl;->ac:Z

    .line 437
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dyl;->b()V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dxt;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 28
    new-instance v1, Lcom/google/android/gms/internal/ads/dyp;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/dyp;-><init>()V

    .line 1004
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/dxt;->c()J

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

    .line 1007
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    const/4 v6, 0x0

    const/4 v7, 0x4

    invoke-interface {v0, v4, v6, v7}, Lcom/google/android/gms/internal/ads/dxt;->c([BII)V

    .line 1008
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/ecy;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/ecy;->f()J

    move-result-wide v9

    .line 1009
    iput v7, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    :goto_1
    const-wide/32 v11, 0x1a45dfa3

    const/4 v4, 0x1

    cmp-long v7, v9, v11

    if-eqz v7, :cond_2

    .line 1011
    iget v7, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    add-int/2addr v7, v4

    iput v7, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    if-eq v7, v5, :cond_7

    .line 1013
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    invoke-interface {v0, v7, v6, v4}, Lcom/google/android/gms/internal/ads/dxt;->c([BII)V

    const/16 v4, 0x8

    shl-long/2addr v9, v4

    const-wide/16 v11, -0x100

    and-long/2addr v9, v11

    .line 1015
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/dyp;->a:Lcom/google/android/gms/internal/ads/ecy;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/ecy;->a:[B

    aget-byte v4, v4, v6

    and-int/lit16 v4, v4, 0xff

    int-to-long v11, v4

    or-long/2addr v9, v11

    goto :goto_1

    .line 1016
    :cond_2
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dyp;->a(Lcom/google/android/gms/internal/ads/dxt;)J

    move-result-wide v9

    .line 1017
    iget v5, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    int-to-long v11, v5

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v5, v9, v13

    if-eqz v5, :cond_7

    if-eqz v8, :cond_3

    add-long v7, v11, v9

    cmp-long v5, v7, v2

    if-ltz v5, :cond_3

    goto :goto_4

    .line 1020
    :cond_3
    :goto_2
    iget v2, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    int-to-long v2, v2

    add-long v7, v11, v9

    cmp-long v5, v2, v7

    if-gez v5, :cond_6

    .line 1021
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dyp;->a(Lcom/google/android/gms/internal/ads/dxt;)J

    move-result-wide v2

    cmp-long v5, v2, v13

    if-eqz v5, :cond_7

    .line 1024
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/dyp;->a(Lcom/google/android/gms/internal/ads/dxt;)J

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

    long-to-int v5, v2

    .line 1028
    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/dxt;->c(I)V

    .line 1029
    iget v5, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    int-to-long v7, v5

    add-long/2addr v7, v2

    long-to-int v2, v7

    iput v2, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    goto :goto_2

    :cond_5
    :goto_3
    return v6

    .line 1031
    :cond_6
    iget v0, v1, Lcom/google/android/gms/internal/ads/dyp;->b:I

    int-to-long v0, v0

    cmp-long v2, v0, v7

    if-nez v2, :cond_7

    return v4

    :cond_7
    :goto_4
    return v6
.end method
