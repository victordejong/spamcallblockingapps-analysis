.class public final Lcom/facebook/ads/redexgen/X/Um;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/CG;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Un;,
        Lcom/facebook/ads/redexgen/X/Uo;,
        Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsExtractor$Mode;
    }
.end annotation


# static fields
.field public static A0C:[B

.field public static A0D:[Ljava/lang/String;

.field public static final A0E:Lcom/facebook/ads/redexgen/X/CJ;

.field public static final A0F:J

.field public static final A0G:J

.field public static final A0H:J


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Lcom/facebook/ads/redexgen/X/CI;

.field public A03:Lcom/facebook/ads/redexgen/X/Db;

.field public A04:Z

.field public final A05:I

.field public final A06:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/facebook/ads/redexgen/X/Db;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Landroid/util/SparseBooleanArray;

.field public final A08:Landroid/util/SparseIntArray;

.field public final A09:Lcom/facebook/ads/redexgen/X/DZ;

.field public final A0A:Lcom/facebook/ads/redexgen/X/IM;

.field public final A0B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/IY;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 57104
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Um;->A0H()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Um;->A0G()V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Up;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Up;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Um;->A0E:Lcom/facebook/ads/redexgen/X/CJ;

    .line 57105
    const/4 v2, 0x0

    const/4 v1, 0x4

    const/16 v0, 0x26

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0F:J

    .line 57106
    const/16 v2, 0x3e

    const/4 v1, 0x4

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0G:J

    .line 57107
    const/16 v2, 0x42

    const/4 v1, 0x4

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0D(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A08(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    sput-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0H:J

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 57108
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Um;-><init>(I)V

    .line 57109
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 57110
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Um;-><init>(II)V

    .line 57111
    return-void
.end method

.method public constructor <init>(II)V
    .locals 4

    .line 57112
    const-wide/16 v2, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/IY;

    invoke-direct {v1, v2, v3}, Lcom/facebook/ads/redexgen/X/IY;-><init>(J)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/V3;

    invoke-direct {v0, p2}, Lcom/facebook/ads/redexgen/X/V3;-><init>(I)V

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Um;-><init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/DZ;)V

    .line 57113
    return-void
.end method

.method public constructor <init>(ILcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/DZ;)V
    .locals 3

    .line 57114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57115
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/DZ;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/DZ;

    .line 57116
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A05:I

    .line 57117
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 57118
    :cond_0
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    .line 57119
    :goto_0
    const/16 v0, 0x24b8

    new-array v2, v0, [B

    const/4 v1, 0x0

    new-instance v0, Lcom/facebook/ads/redexgen/X/IM;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/IM;-><init>([BI)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    .line 57120
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Landroid/util/SparseBooleanArray;

    .line 57121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    .line 57122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A08:Landroid/util/SparseIntArray;

    .line 57123
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Um;->A0F()V

    .line 57124
    return-void

    .line 57125
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    .line 57126
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/Um;)I
    .locals 0

    .line 57127
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:I

    return p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/Um;)I
    .locals 2

    .line 57128
    iget v1, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:I

    add-int/lit8 v0, v1, 0x1

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:I

    return v1
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/Um;)I
    .locals 0

    .line 57129
    iget p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A05:I

    return p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/Um;I)I
    .locals 0

    .line 57130
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A01:I

    return p1
.end method

.method public static synthetic A04()J
    .locals 2

    .line 57131
    sget-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0G:J

    return-wide v0
.end method

.method public static synthetic A05()J
    .locals 2

    .line 57132
    sget-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0H:J

    return-wide v0
.end method

.method public static synthetic A06()J
    .locals 2

    .line 57133
    sget-wide v0, Lcom/facebook/ads/redexgen/X/Um;->A0F:J

    return-wide v0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseArray;
    .locals 0

    .line 57134
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/Um;)Landroid/util/SparseBooleanArray;
    .locals 0

    .line 57135
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/CI;
    .locals 0

    .line 57136
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A02:Lcom/facebook/ads/redexgen/X/CI;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/DZ;
    .locals 0

    .line 57137
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/DZ;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/Um;)Lcom/facebook/ads/redexgen/X/Db;
    .locals 0

    .line 57138
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A03:Lcom/facebook/ads/redexgen/X/Db;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/Um;Lcom/facebook/ads/redexgen/X/Db;)Lcom/facebook/ads/redexgen/X/Db;
    .locals 0

    .line 57139
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A03:Lcom/facebook/ads/redexgen/X/Db;

    return-object p1
.end method

.method public static A0D(III)Ljava/lang/String;
    .locals 4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Um;->A0C:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    const/4 p0, 0x0

    :goto_0
    array-length v3, p1

    sget-object v1, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const-string v1, "B4P7Fbm4gkAVs"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    if-ge p0, v3, :cond_0

    aget-byte v0, p1, p0

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x55

    int-to-byte v0, v0

    aput-byte v0, p1, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static synthetic A0E(Lcom/facebook/ads/redexgen/X/Um;)Ljava/util/List;
    .locals 0

    .line 57140
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    return-object p0
.end method

.method private A0F()V
    .locals 6

    .line 57141
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A07:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->clear()V

    .line 57142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 57143
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A09:Lcom/facebook/ads/redexgen/X/DZ;

    .line 57144
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/DZ;->A4H()Landroid/util/SparseArray;

    move-result-object v5

    .line 57145
    .local p0, "initialPayloadReaders":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/facebook/ads/internal/exoplayer2/extractor/ts/TsPayloadReader;>;"
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 57146
    .local v0, "initialPayloadReadersSize":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v4, :cond_0

    .line 57147
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57148
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57149
    .end local v0    # "i":I
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    const/4 v2, 0x0

    new-instance v1, Lcom/facebook/ads/redexgen/X/Uo;

    invoke-direct {v1, p0}, Lcom/facebook/ads/redexgen/X/Uo;-><init>(Lcom/facebook/ads/redexgen/X/Um;)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Ur;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Ur;-><init>(Lcom/facebook/ads/redexgen/X/DU;)V

    invoke-virtual {v3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 57150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A03:Lcom/facebook/ads/redexgen/X/Db;

    .line 57151
    return-void
.end method

.method public static A0G()V
    .locals 4

    const/16 v0, 0x46

    new-array v3, v0, [B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const-string v1, "WZMhJsnMx3LV02eNA1pIJEe0ZC6MKkXF"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "JoKbgG289ux5qWXckYbmKPYA4hx4tMTr"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/Um;->A0C:[B

    return-void

    :array_0
    .array-data 1
        0x32t
        0x30t
        0x5et
        0x40t
        0x7ct
        0x5et
        0x51t
        0x51t
        0x50t
        0x4bt
        0x1ft
        0x59t
        0x56t
        0x51t
        0x5bt
        0x1ft
        0x4ct
        0x46t
        0x51t
        0x5ct
        0x1ft
        0x5dt
        0x46t
        0x4bt
        0x5at
        0x11t
        0x1ft
        0x72t
        0x50t
        0x4ct
        0x4bt
        0x1ft
        0x53t
        0x56t
        0x54t
        0x5at
        0x53t
        0x46t
        0x1ft
        0x51t
        0x50t
        0x4bt
        0x1ft
        0x5et
        0x1ft
        0x6bt
        0x4dt
        0x5et
        0x51t
        0x4ct
        0x4ft
        0x50t
        0x4dt
        0x4bt
        0x1ft
        0x6ct
        0x4bt
        0x4dt
        0x5at
        0x5et
        0x52t
        0x11t
        0x3at
        0x3et
        0x3ct
        0x4ct
        0x51t
        0x5ct
        0x4ft
        0x5at
    .end array-data
.end method

.method public static A0H()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "cjSEM8WhXi8CCuWJSlk9ONQ465Sf1M7s"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "qLyDudSK1Odt7B3w6j044POizSWavAbb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "6dhUz5oSfXeMhldVTdWz6MACxMLce94Z"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "55DnEkFRRjjAJJyGS1DKmqOcYIlgHkDm"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "D6qMqw8qZGCMyrQWkrdvceV3ENtWSxkl"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "erknDLNYePNrpoM5WCOcGxuyunYsV0Ap"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "c2UA5rPX9JSkJb9HIn"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "ziqgWx0CDdyigJnu2sSpdfGl1X6X14WO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    return-void
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/Um;)Z
    .locals 0

    .line 57152
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/Um;->A04:Z

    return p0
.end method

.method public static synthetic A0J(Lcom/facebook/ads/redexgen/X/Um;Z)Z
    .locals 0

    .line 57153
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A04:Z

    return p1
.end method


# virtual methods
.method public final A7s(Lcom/facebook/ads/redexgen/X/CI;)V
    .locals 3

    .line 57154
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Um;->A02:Lcom/facebook/ads/redexgen/X/CI;

    .line 57155
    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    new-instance v0, Lcom/facebook/ads/redexgen/X/Vh;

    invoke-direct {v0, v1, v2}, Lcom/facebook/ads/redexgen/X/Vh;-><init>(J)V

    invoke-interface {p1, v0}, Lcom/facebook/ads/redexgen/X/CI;->ADY(Lcom/facebook/ads/redexgen/X/CP;)V

    .line 57156
    return-void
.end method

.method public final ACk(Lcom/facebook/ads/redexgen/X/CH;Lcom/facebook/ads/redexgen/X/CN;)I
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57157
    move-object v7, p0

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57158
    .local p1, "data":[B
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    rsub-int v0, v0, 0x24b8

    const/16 v4, 0xbc

    const/4 v2, 0x0

    if-ge v0, v4, :cond_1

    .line 57159
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v1

    .line 57160
    .local p2, "bytesLeft":I
    if-lez v1, :cond_0

    .line 57161
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v0

    invoke-static {v5, v0, v5, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57162
    :cond_0
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0c([BI)V

    .line 57163
    .end local p2    # "bytesLeft":I
    :cond_1
    :goto_0
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v0

    if-ge v0, v4, :cond_3

    .line 57164
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v3

    .line 57165
    .local p2, "limit":I
    rsub-int v0, v3, 0x24b8

    invoke-interface {p1, v5, v3, v0}, Lcom/facebook/ads/redexgen/X/CH;->read([BII)I

    move-result v1

    .line 57166
    .local v5, "read":I
    const/4 v0, -0x1

    if-ne v1, v0, :cond_2

    .line 57167
    return v0

    .line 57168
    :cond_2
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 57169
    .end local p2    # "limit":I
    .end local v5    # "read":I
    goto :goto_0

    .line 57170
    :cond_3
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A08()I

    move-result v6

    .line 57171
    .restart local p2    # "limit":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A07()I

    move-result v4

    .line 57172
    .local v7, "position":I
    move v3, v4

    .line 57173
    .local v5, "searchStart":I
    :goto_1
    if-ge v4, v6, :cond_4

    aget-byte v1, v5, v4

    const/16 v0, 0x47

    if-eq v1, v0, :cond_4

    .line 57174
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 57175
    :cond_4
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57176
    add-int/lit16 v5, v4, 0xbc

    .line 57177
    .local v0, "endOfPacket":I
    const/4 v10, 0x2

    if-le v5, v6, :cond_7

    .line 57178
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    sub-int/2addr v4, v3

    add-int/2addr v0, v4

    iput v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    .line 57179
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A05:I

    if-ne v0, v10, :cond_5

    iget v1, v7, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    const/16 v0, 0x178

    if-gt v1, v0, :cond_6

    .line 57180
    :cond_5
    return v2

    .line 57181
    :cond_6
    const/4 v2, 0x4

    const/16 v1, 0x3a

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Um;->A0D(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/AJ;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/AJ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57182
    :cond_7
    iput v2, v7, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    .line 57183
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A09()I

    move-result v11

    .line 57184
    .local v4, "tsPacketHeader":I
    const/high16 v0, 0x800000

    and-int/2addr v0, v11

    if-eqz v0, :cond_8

    .line 57185
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57186
    return v2

    .line 57187
    :cond_8
    const/high16 v0, 0x400000

    and-int/2addr v0, v11

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    const/4 v8, 0x1

    .line 57188
    .local v2, "payloadUnitStartIndicator":Z
    :goto_2
    const v0, 0x1fff00

    and-int/2addr v0, v11

    shr-int/lit8 v9, v0, 0x8

    .line 57189
    .local v1, "pid":I
    and-int/lit8 v0, v11, 0x20

    if-eqz v0, :cond_b

    const/4 v3, 0x1

    .line 57190
    .local v0, "adaptationFieldExists":Z
    :goto_3
    and-int/lit8 v0, v11, 0x10

    if-eqz v0, :cond_a

    .line 57191
    .local v0, "payloadExists":Z
    :goto_4
    if-eqz v1, :cond_9

    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A06:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/Db;

    .line 57192
    .local v0, "payloadReader":Lcom/facebook/ads/redexgen/X/Db;
    :goto_5
    if-nez v4, :cond_d

    .line 57193
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57194
    return v2

    .line 57195
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    .line 57196
    :cond_a
    const/4 v1, 0x0

    goto :goto_4

    .line 57197
    :cond_b
    const/4 v3, 0x0

    goto :goto_3

    .line 57198
    :cond_c
    const/4 v8, 0x0

    goto :goto_2

    .line 57199
    :cond_d
    iget v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A05:I

    if-eq v0, v10, :cond_f

    .line 57200
    and-int/lit8 v2, v11, 0xf

    .line 57201
    .local v0, "continuityCounter":I
    iget-object v1, v7, Lcom/facebook/ads/redexgen/X/Um;->A08:Landroid/util/SparseIntArray;

    add-int/lit8 v0, v2, -0x1

    invoke-virtual {v1, v9, v0}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 57202
    .local v0, "previousCounter":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A08:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v9, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 57203
    if-ne v1, v2, :cond_e

    .line 57204
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57205
    const/4 v0, 0x0

    return v0

    .line 57206
    :cond_e
    add-int/lit8 v0, v1, 0x1

    and-int/lit8 v0, v0, 0xf

    if-eq v2, v0, :cond_f

    .line 57207
    invoke-interface {v4}, Lcom/facebook/ads/redexgen/X/Db;->ADW()V

    .line 57208
    .end local v0    # "previousCounter":I
    .end local v0
    :cond_f
    if-eqz v3, :cond_10

    .line 57209
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v1

    .line 57210
    .local v0, "adaptationFieldLength":I
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 57211
    .end local v0    # "adaptationFieldLength":I
    :cond_10
    iget-object v3, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    sget-object v1, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x70

    if-eq v1, v0, :cond_11

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_11
    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const-string v1, "YIdUi4Zmxh2T4Tn7EQh4xqwtLNZFyTrD"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 57212
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-interface {v4, v0, v8}, Lcom/facebook/ads/redexgen/X/Db;->A46(Lcom/facebook/ads/redexgen/X/IM;Z)V

    .line 57213
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v6}, Lcom/facebook/ads/redexgen/X/IM;->A0Y(I)V

    .line 57214
    iget-object v0, v7, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0Z(I)V

    .line 57215
    const/4 v0, 0x0

    return v0
.end method

.method public final ADX(JJ)V
    .locals 3

    .line 57216
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 57217
    .local p0, "timestampAdjustersCount":I
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 57218
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0B:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/IY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IY;->A09()V

    .line 57219
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57220
    .end local p1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/IM;->A0W()V

    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0x1c

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 57221
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/Um;->A0D:[Ljava/lang/String;

    const-string v1, "AFHTcbe8wx3mpCqV4sbjDL9DI5lvukIY"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A08:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 57222
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Um;->A0F()V

    .line 57223
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A00:I

    .line 57224
    return-void
.end method

.method public final AE6(Lcom/facebook/ads/redexgen/X/CH;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 57225
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Um;->A0A:Lcom/facebook/ads/redexgen/X/IM;

    iget-object v5, v0, Lcom/facebook/ads/redexgen/X/IM;->A00:[B

    .line 57226
    .local p0, "buffer":[B
    const/4 v4, 0x0

    const/16 v0, 0x3ac

    invoke-interface {p1, v5, v4, v0}, Lcom/facebook/ads/redexgen/X/CH;->ACM([BII)V

    .line 57227
    const/4 v3, 0x0

    .local v0, "j":I
    :goto_0
    const/16 v0, 0xbc

    if-ge v3, v0, :cond_2

    .line 57228
    const/4 v2, 0x0

    .line 57229
    .local v5, "i":I
    :goto_1
    const/4 v0, 0x5

    if-ne v2, v0, :cond_0

    .line 57230
    invoke-interface {p1, v3}, Lcom/facebook/ads/redexgen/X/CH;->AE4(I)V

    .line 57231
    const/4 v0, 0x1

    return v0

    .line 57232
    :cond_0
    mul-int/lit16 v0, v2, 0xbc

    add-int/2addr v0, v3

    aget-byte v1, v5, v0

    const/16 v0, 0x47

    if-eq v1, v0, :cond_1

    .line 57233
    .end local v5    # "i":I
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 57234
    .restart local v5    # "i":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 57235
    .end local v0    # "j":I
    .end local v5    # "i":I
    :cond_2
    return v4
.end method
