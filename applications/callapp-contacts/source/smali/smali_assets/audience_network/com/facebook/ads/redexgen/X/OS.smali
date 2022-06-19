.class public final Lcom/facebook/ads/redexgen/X/OS;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/ON;,
        Lcom/facebook/ads/redexgen/X/OO;,
        Lcom/facebook/ads/redexgen/X/Xb;,
        Lcom/facebook/ads/redexgen/X/OP;,
        Lcom/facebook/ads/redexgen/X/OQ;,
        Lcom/facebook/ads/redexgen/X/OR;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/OQ;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/OR;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/QE;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/16;

.field public final A07:Lcom/facebook/ads/redexgen/X/7D;

.field public final A08:Lcom/facebook/ads/redexgen/X/XJ;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JJ;

.field public final A0B:Lcom/facebook/ads/redexgen/X/La;

.field public final A0C:Lcom/facebook/ads/redexgen/X/OH;

.field public final A0D:Lcom/facebook/ads/redexgen/X/Xb;

.field public final A0E:Lcom/facebook/ads/redexgen/X/Od;

.field public final A0F:Lcom/facebook/ads/redexgen/X/Oe;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Og;

.field public final A0H:Ljava/lang/String;

.field public final A0I:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/ads/redexgen/X/OP;",
            ">;"
        }
    .end annotation
.end field

.field public final A0J:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 46504
    invoke-static {}, Lcom/facebook/ads/redexgen/X/OS;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OS;->A0E()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/OS;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V
    .locals 10

    .line 46505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46506
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0I:Ljava/util/LinkedList;

    .line 46507
    new-instance v0, Lcom/facebook/ads/redexgen/X/La;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/La;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0B:Lcom/facebook/ads/redexgen/X/La;

    .line 46508
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46509
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A05:Z

    .line 46510
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A04:Z

    .line 46511
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:J

    .line 46512
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 46513
    move-object v3, p3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 46514
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/OS;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 46515
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xb;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/Xb;-><init>(Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/XJ;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0D:Lcom/facebook/ads/redexgen/X/Xb;

    .line 46516
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A07:Lcom/facebook/ads/redexgen/X/7D;

    .line 46517
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    .line 46518
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v2

    .line 46519
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OH;

    invoke-direct {v0, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/OH;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0C:Lcom/facebook/ads/redexgen/X/OH;

    .line 46520
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    .line 46521
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 46522
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0c()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/OS;->A07:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/OS;->A0C:Lcom/facebook/ads/redexgen/X/OH;

    .line 46523
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A0J()Z

    move-result v9

    .line 46524
    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Of;->A00(Lcom/facebook/ads/redexgen/X/XJ;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JJ;Lcom/facebook/ads/redexgen/X/OH;Z)Lcom/facebook/ads/redexgen/X/Oe;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0F:Lcom/facebook/ads/redexgen/X/Oe;

    .line 46525
    new-instance v0, Lcom/facebook/ads/redexgen/X/Od;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A0C:Lcom/facebook/ads/redexgen/X/OH;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    .line 46526
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Od;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/OS;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/OH;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0E:Lcom/facebook/ads/redexgen/X/Od;

    .line 46527
    new-instance v0, Lcom/facebook/ads/redexgen/X/Xc;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Xc;-><init>(Lcom/facebook/ads/redexgen/X/OS;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0G:Lcom/facebook/ads/redexgen/X/Og;

    .line 46528
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/OS;)J
    .locals 1

    .line 46529
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 46530
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A06:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/7D;
    .locals 0

    .line 46531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A07:Lcom/facebook/ads/redexgen/X/7D;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/XJ;
    .locals 0

    .line 46532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/JJ;
    .locals 0

    .line 46533
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/La;
    .locals 0

    .line 46534
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0B:Lcom/facebook/ads/redexgen/X/La;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OH;
    .locals 0

    .line 46535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0C:Lcom/facebook/ads/redexgen/X/OH;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OQ;
    .locals 0

    .line 46536
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Lcom/facebook/ads/redexgen/X/OQ;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OR;
    .locals 0

    .line 46537
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:Lcom/facebook/ads/redexgen/X/OR;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/Oe;
    .locals 0

    .line 46538
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0F:Lcom/facebook/ads/redexgen/X/Oe;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/Og;
    .locals 0

    .line 46539
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0G:Lcom/facebook/ads/redexgen/X/Og;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/OS;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/OS;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 46540
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private A0D()V
    .locals 8

    .line 46541
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v2, 0x91

    const/16 v1, 0x16

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46542
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0F:Lcom/facebook/ads/redexgen/X/Oe;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/Oe;->A04:Lorg/json/JSONObject;

    .line 46543
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 46544
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 46545
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x2d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46546
    .local p0, "assets":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    aput-object v0, v3, v7

    const/16 v2, 0xa7

    const/16 v1, 0x1a

    const/16 v0, 0x49

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46547
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/OS;->A0K:[B

    return-void

    :array_0
    .array-data 1
        0x25t
        0x3ft
        0x27t
        0x3bt
        0x27t
        0x38t
        0xdt
        0x22t
        0x28t
        0x3et
        0x23t
        0x25t
        0x28t
        0x5t
        0x22t
        0x38t
        0x29t
        0x3et
        0x2at
        0x2dt
        0x2ft
        0x29t
        0x5t
        0x0t
        0x36t
        0x1t
        0x14t
        0xbt
        0x16t
        0x10t
        0xdt
        0xat
        0x3t
        0x22t
        0xdt
        0xat
        0xdt
        0x17t
        0xct
        0x1t
        0x0t
        0x4ct
        0x43t
        0x41t
        0x17t
        0x43t
        0x4dt
        0x5ft
        0x60t
        0x65t
        0x53t
        0x64t
        0x71t
        0x6et
        0x73t
        0x75t
        0x68t
        0x6ft
        0x66t
        0x52t
        0x75t
        0x60t
        0x73t
        0x75t
        0x64t
        0x65t
        0x29t
        0x26t
        0x24t
        0x72t
        0x26t
        0x28t
        0x3at
        0x22t
        0x37t
        0x37t
        0x22t
        0x20t
        0x2bt
        0x26t
        0x27t
        0x14t
        0x15t
        0xdt
        0x36t
        0x2et
        0xbt
        0x1dt
        0x1at
        0x1at
        0xdt
        0x6t
        0x1ct
        0x3ft
        0x3et
        0x26t
        0x1dt
        0x5t
        0x58t
        0x59t
        0x76t
        0x54t
        0x43t
        0x5et
        0x41t
        0x5et
        0x43t
        0x4et
        0x67t
        0x56t
        0x42t
        0x44t
        0x52t
        0x53t
        0x1ft
        0x10t
        0x12t
        0x44t
        0x10t
        0x1et
        0xct
        0x39t
        0x38t
        0x17t
        0x35t
        0x22t
        0x3ft
        0x20t
        0x3ft
        0x22t
        0x2ft
        0x4t
        0x33t
        0x25t
        0x23t
        0x3bt
        0x33t
        0x32t
        0x7et
        0x71t
        0x73t
        0x25t
        0x71t
        0x7ft
        0x6dt
        0x64t
        0x72t
        0x63t
        0x56t
        0x62t
        0x63t
        0x7ft
        0x5ct
        0x72t
        0x6et
        0x3ft
        0x30t
        0x32t
        0x64t
        0x30t
        0x3bt
        0x30t
        0x32t
        0x64t
        0x30t
        0x3et
        0x2ct
        0x38t
        0x2et
        0x3ft
        0x9t
        0x2at
        0x38t
        0x2et
        0x7dt
        0x7ft
        0xat
        0x38t
        0x38t
        0x2et
        0x3ft
        0x38t
        0x63t
        0x6ct
        0x6et
        0x38t
        0x6ct
        0x67t
        0x6ct
        0x6et
        0x38t
        0x6ct
        0x62t
        0x48t
        0x53t
        0x48t
        0x5dt
        0x50t
        0x6bt
        0x6at
        0x72t
        0x49t
        0x51t
        0x59t
        0x5et
        0x40t
        0x51t
        0x4et
        0x43t
        0x42t
        0x48t
        0x62t
        0x51t
        0x42t
        0x49t
        0x53t
        0xft
        0x0t
        0x2t
        0x54t
        0x0t
        0xbt
        0x7t
        0x0t
        0x2t
        0x54t
        0x0t
        0xbt
        0x7t
        0x0t
        0x2t
        0x54t
        0x0t
        0xet
        0x1ct
        0x61t
        0x7et
        0x72t
        0x60t
        0x45t
        0x72t
        0x76t
        0x73t
        0x6et
        0x43t
        0x78t
        0x44t
        0x7ft
        0x78t
        0x60t
        0x3ft
        0x30t
        0x32t
        0x64t
        0x30t
        0x3et
        0x2ct
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "FzSVXB4mYbOB8Ap0RZsCDdXVsmLfm8Jd"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "1LkH26oE6mA26lQtC6YvQW7uIFVycFeK"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "rW0HdwO1ZwlnSaQ2Af"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "GQ1qj5ap6z56eCi2le"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "uXieXG3T7mAXvJ2"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "QucdoxB0vpGTNezXYptNtkyhh8Rjdnlc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "00yn0QSHmKstnvXW3I3NQQkY4p"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "j2c94AiQV22NdXj9VV604tyulZ5jlQdF"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/OS;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized A0G()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 46548
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A04:Z

    if-eqz v0, :cond_1

    .line 46549
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46550
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/OP;

    .line 46551
    .local p0, "call":Lcom/facebook/ads/redexgen/X/OP;
    if-eqz v4, :cond_0

    .line 46552
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A0D:Lcom/facebook/ads/redexgen/X/Xb;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/OP;->A00:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/OP;->A02:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    .line 46553
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46554
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NS;->A05(Ljava/lang/String;)V

    .line 46555
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/OP;->A01:Z

    if-eqz v0, :cond_0

    .line 46556
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0L:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 46557
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/OP;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4u(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46558
    :cond_1
    monitor-exit p0

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v2, v0

    const/4 v0, 0x7

    aget-object v2, v2, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/OS;->A0L:[Ljava/lang/String;

    const-string v1, "zGpus9wW0BJIjoljGX"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "A1e8XSvn3Bv6Tp7Ifd"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46559
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0H(Lcom/facebook/ads/redexgen/X/OP;)V
    .locals 1

    monitor-enter p0

    .line 46560
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 46561
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A0G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46562
    monitor-exit p0

    return-void

    .line 46563
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/OP;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/OS;)V
    .locals 0

    .line 46564
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A0G()V

    return-void
.end method

.method private A0J()Z
    .locals 1

    .line 46565
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A0K()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0K()Z
    .locals 2

    .line 46566
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    .line 46567
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v0

    .line 46568
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1t(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/OS;Z)Z
    .locals 0

    .line 46569
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/OS;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0M()Lcom/facebook/ads/redexgen/X/JJ;
    .locals 1

    .line 46570
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/La;
    .locals 1

    .line 46571
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0B:Lcom/facebook/ads/redexgen/X/La;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/Xb;
    .locals 1

    .line 46572
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0D:Lcom/facebook/ads/redexgen/X/Xb;

    return-object v0
.end method

.method public final A0P()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46573
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0Q()V
    .locals 4

    .line 46574
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46575
    return-void
.end method

.method public final A0R()V
    .locals 4

    .line 46576
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x30

    const/16 v1, 0x19

    const/4 v0, 0x3

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46577
    return-void
.end method

.method public final A0S()V
    .locals 1

    .line 46578
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A05:Z

    .line 46579
    return-void
.end method

.method public final A0T()V
    .locals 1

    .line 46580
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A05:Z

    .line 46581
    return-void
.end method

.method public final A0U()V
    .locals 4

    .line 46582
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x62

    const/16 v1, 0x17

    const/16 v0, 0x35

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46583
    return-void
.end method

.method public final A0V()V
    .locals 4

    .line 46584
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0xeb

    const/16 v1, 0x16

    const/16 v0, 0x15

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46585
    return-void
.end method

.method public final A0W()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 46586
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 46587
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/OS;->A0D:Lcom/facebook/ads/redexgen/X/Xb;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A0E:Lcom/facebook/ads/redexgen/X/Od;

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x4e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/Xb;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46588
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/OS;->A0A:Lcom/facebook/ads/redexgen/X/JJ;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0O:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 46589
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0F:Lcom/facebook/ads/redexgen/X/Oe;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/Oe;->A00:Ljava/lang/String;

    .line 46590
    .local p0, "url":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A00:J

    .line 46591
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0D:Lcom/facebook/ads/redexgen/X/Xb;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/Xb;->loadUrl(Ljava/lang/String;)V

    .line 46592
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46593
    .local v1, "funnelJSON":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46594
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x6a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OT;->A00()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46595
    const/16 v2, 0xc1

    const/16 v1, 0xa

    const/16 v0, 0x3e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/OS;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46596
    const/16 v2, 0x49

    const/16 v1, 0xd

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Y4;->getAttachedDynamicAdViews()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46597
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46598
    .local v0, "funnelMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A08:Lcom/facebook/ads/redexgen/X/XJ;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A50(Ljava/lang/String;)V

    .line 46599
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/OS;->A0D()V

    .line 46600
    return-void
.end method

.method public final A0X()V
    .locals 4

    .line 46601
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x79

    const/16 v1, 0x18

    const/16 v0, 0x54

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46602
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/OQ;)V
    .locals 0

    .line 46603
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OS;->A01:Lcom/facebook/ads/redexgen/X/OQ;

    .line 46604
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/OR;)V
    .locals 0

    .line 46605
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OS;->A02:Lcom/facebook/ads/redexgen/X/OR;

    .line 46606
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/Oc;)V
    .locals 1

    .line 46607
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0E:Lcom/facebook/ads/redexgen/X/Od;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/Od;->A0I(Lcom/facebook/ads/redexgen/X/Oc;)V

    .line 46608
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/QE;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46609
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:Lcom/facebook/ads/redexgen/X/QE;

    .line 46610
    return-void
.end method

.method public final A0c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 46611
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0H:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 46612
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/16 v2, 0xce

    const/16 v1, 0x1d

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OP;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/OP;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 46613
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/OS;->A0H(Lcom/facebook/ads/redexgen/X/OP;)V

    .line 46614
    return-void
.end method

.method public final A0d(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46615
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/OS;->A09:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 46616
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/Nc;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/Nc;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A03:Lcom/facebook/ads/redexgen/X/QE;

    .line 46617
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/Nc;->A04(Lcom/facebook/ads/redexgen/X/QE;)Lcom/facebook/ads/redexgen/X/Nc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nc;->A06()Ljava/util/Map;

    move-result-object v0

    .line 46618
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8U(Ljava/lang/String;Ljava/util/Map;)V

    .line 46619
    return-void
.end method

.method public final A0e()Z
    .locals 1

    .line 46620
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A0E:Lcom/facebook/ads/redexgen/X/Od;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Od;->A0J()Z

    move-result v0

    return v0
.end method

.method public final A0f()Z
    .locals 1

    .line 46621
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/OS;->A05:Z

    return v0
.end method
