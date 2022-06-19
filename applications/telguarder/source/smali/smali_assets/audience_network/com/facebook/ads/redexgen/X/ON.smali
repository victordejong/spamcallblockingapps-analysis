.class public final Lcom/facebook/ads/redexgen/X/ON;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/OI;,
        Lcom/facebook/ads/redexgen/X/OJ;,
        Lcom/facebook/ads/redexgen/X/RW;,
        Lcom/facebook/ads/redexgen/X/OK;,
        Lcom/facebook/ads/redexgen/X/OL;,
        Lcom/facebook/ads/redexgen/X/OM;
    }
.end annotation


# static fields
.field public static A0K:[B

.field public static A0L:[Ljava/lang/String;

.field public static final A0M:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public A00:J

.field public A01:Lcom/facebook/ads/redexgen/X/OL;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/OM;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Lcom/facebook/ads/redexgen/X/Q9;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public A05:Z

.field public final A06:Lcom/facebook/ads/redexgen/X/16;

.field public final A07:Lcom/facebook/ads/redexgen/X/7D;

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/JK;

.field public final A0B:Lcom/facebook/ads/redexgen/X/Lc;

.field public final A0C:Lcom/facebook/ads/redexgen/X/OC;

.field public final A0D:Lcom/facebook/ads/redexgen/X/RW;

.field public final A0E:Lcom/facebook/ads/redexgen/X/OY;

.field public final A0F:Lcom/facebook/ads/redexgen/X/OZ;

.field public final A0G:Lcom/facebook/ads/redexgen/X/Ob;

.field public final A0H:Ljava/lang/String;

.field public final A0I:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/facebook/ads/redexgen/X/OK;",
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

    .line 46499
    invoke-static {}, Lcom/facebook/ads/redexgen/X/ON;->A0F()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ON;->A0E()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/ON;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/16;Lcom/facebook/ads/redexgen/X/JC;I)V
    .locals 10

    .line 46500
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46501
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0I:Ljava/util/LinkedList;

    .line 46502
    new-instance v0, Lcom/facebook/ads/redexgen/X/Lc;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Lc;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    .line 46503
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    .line 46504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A05:Z

    .line 46505
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A04:Z

    .line 46506
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:J

    .line 46507
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 46508
    move-object v3, p3

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/ON;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 46509
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/ON;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 46510
    new-instance v0, Lcom/facebook/ads/redexgen/X/RW;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/RW;-><init>(Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0D:Lcom/facebook/ads/redexgen/X/RW;

    .line 46511
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A07:Lcom/facebook/ads/redexgen/X/7D;

    .line 46512
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/JK;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    .line 46513
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0W()Ljava/lang/String;

    move-result-object v2

    .line 46514
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0L()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0D()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OC;

    invoke-direct {v0, v2, v1, p4}, Lcom/facebook/ads/redexgen/X/OC;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0C:Lcom/facebook/ads/redexgen/X/OC;

    .line 46515
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    .line 46516
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 46517
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0a()Lorg/json/JSONObject;

    move-result-object v5

    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/ON;->A07:Lcom/facebook/ads/redexgen/X/7D;

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/ON;->A0C:Lcom/facebook/ads/redexgen/X/OC;

    .line 46518
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ON;->A0J()Z

    move-result v9

    .line 46519
    invoke-static/range {v4 .. v9}, Lcom/facebook/ads/redexgen/X/Oa;->A00(Lcom/facebook/ads/redexgen/X/Wm;Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/JK;Lcom/facebook/ads/redexgen/X/OC;Z)Lcom/facebook/ads/redexgen/X/OZ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    .line 46520
    new-instance v0, Lcom/facebook/ads/redexgen/X/OY;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ON;->A0C:Lcom/facebook/ads/redexgen/X/OC;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    .line 46521
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v6

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/OY;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/ON;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/OC;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    .line 46522
    new-instance v0, Lcom/facebook/ads/redexgen/X/RX;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/RX;-><init>(Lcom/facebook/ads/redexgen/X/ON;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0G:Lcom/facebook/ads/redexgen/X/Ob;

    .line 46523
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/ON;)J
    .locals 1

    .line 46524
    iget-wide v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:J

    return-wide v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/16;
    .locals 0

    .line 46525
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A06:Lcom/facebook/ads/redexgen/X/16;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/7D;
    .locals 0

    .line 46526
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A07:Lcom/facebook/ads/redexgen/X/7D;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 46527
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/JK;
    .locals 0

    .line 46528
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Lc;
    .locals 0

    .line 46529
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OC;
    .locals 0

    .line 46530
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0C:Lcom/facebook/ads/redexgen/X/OC;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OL;
    .locals 0

    .line 46531
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A01:Lcom/facebook/ads/redexgen/X/OL;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OM;
    .locals 0

    .line 46532
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A02:Lcom/facebook/ads/redexgen/X/OM;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/OZ;
    .locals 0

    .line 46533
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/ON;)Lcom/facebook/ads/redexgen/X/Ob;
    .locals 0

    .line 46534
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0G:Lcom/facebook/ads/redexgen/X/Ob;

    return-object p0
.end method

.method public static A0B(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/ON;->A0K:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/ON;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 46535
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private A0D()V
    .locals 8

    .line 46536
    const/4 v6, 0x2

    new-array v3, v6, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v0, v3, v5

    const/4 v7, 0x1

    const/4 v2, 0x1

    const/4 v1, 0x5

    const/16 v0, 0x43

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v7

    const/16 v2, 0x91

    const/16 v1, 0x16

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46537
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/OZ;->A04:Lorg/json/JSONObject;

    .line 46538
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 46539
    invoke-static {v0, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    .line 46540
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 46541
    .local p0, "assets":Ljava/lang/String;
    new-array v3, v6, [Ljava/lang/String;

    aput-object v0, v3, v5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    aput-object v0, v3, v7

    const/16 v2, 0xa7

    const/16 v1, 0x1a

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46542
    return-void
.end method

.method public static A0E()V
    .locals 1

    const/16 v0, 0x101

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/ON;->A0K:[B

    return-void

    :array_0
    .array-data 1
        -0x47t
        -0x4ft
        -0x57t
        -0x52t
        -0x57t
        -0x55t
        -0x43t
        -0x16t
        -0x20t
        -0x12t
        -0x15t
        -0x1bt
        -0x20t
        -0x3bt
        -0x16t
        -0x10t
        -0x1ft
        -0x12t
        -0x1et
        -0x23t
        -0x21t
        -0x1ft
        -0xct
        -0x9t
        -0x1bt
        -0x8t
        0x3t
        0x2t
        0x5t
        0x7t
        -0x4t
        0x1t
        -0x6t
        -0x27t
        -0x4t
        0x1t
        -0x4t
        0x6t
        -0x5t
        -0x8t
        -0x9t
        -0x45t
        -0x46t
        -0x48t
        0x6t
        -0x46t
        -0x44t
        -0x32t
        -0x25t
        -0x22t
        -0x34t
        -0x21t
        -0x16t
        -0x17t
        -0x14t
        -0x12t
        -0x1dt
        -0x18t
        -0x1ft
        -0x33t
        -0x12t
        -0x25t
        -0x14t
        -0x12t
        -0x21t
        -0x22t
        -0x5et
        -0x5ft
        -0x61t
        -0x13t
        -0x5ft
        -0x5dt
        -0x4bt
        -0x67t
        -0x54t
        -0x54t
        -0x67t
        -0x65t
        -0x60t
        -0x63t
        -0x64t
        -0x71t
        -0x72t
        -0x7at
        -0x53t
        -0x5bt
        -0xft
        0x3t
        0x0t
        0x0t
        -0xdt
        -0x4t
        0x2t
        -0x1bt
        -0x1ct
        -0x24t
        0x3t
        -0x5t
        0x12t
        0x11t
        -0x1ct
        0x6t
        0x17t
        0xct
        0x19t
        0xct
        0x17t
        0x1ct
        -0xdt
        0x4t
        0x18t
        0x16t
        0x8t
        0x7t
        -0x35t
        -0x36t
        -0x38t
        0x16t
        -0x36t
        -0x34t
        -0x22t
        0x25t
        0x24t
        -0x9t
        0x19t
        0x2at
        0x1ft
        0x2ct
        0x1ft
        0x2at
        0x2ft
        0x8t
        0x1bt
        0x29t
        0x2bt
        0x23t
        0x1bt
        0x1at
        -0x22t
        -0x23t
        -0x25t
        0x29t
        -0x23t
        -0x21t
        -0xft
        -0x30t
        -0x3et
        -0x2ft
        -0x62t
        -0x2et
        -0x2ft
        -0x3bt
        -0x58t
        -0x3et
        -0x2at
        -0x7bt
        -0x7ct
        -0x7et
        -0x30t
        -0x7ct
        -0x77t
        -0x7ct
        -0x7et
        -0x30t
        -0x7ct
        -0x7at
        -0x68t
        -0x19t
        -0x27t
        -0x18t
        -0x4at
        -0x2bt
        -0x19t
        -0x27t
        -0x56t
        -0x58t
        -0x4bt
        -0x19t
        -0x19t
        -0x27t
        -0x18t
        -0x19t
        -0x64t
        -0x65t
        -0x67t
        -0x19t
        -0x65t
        -0x60t
        -0x65t
        -0x67t
        -0x19t
        -0x65t
        -0x63t
        0x19t
        0x14t
        0x19t
        0x6t
        0x11t
        -0x4t
        -0x5t
        -0xdt
        0x1at
        0x12t
        -0x4dt
        -0x50t
        -0x56t
        -0x4bt
        -0x58t
        -0x5dt
        -0x5ct
        -0x52t
        -0x7ct
        -0x4bt
        -0x5ct
        -0x53t
        -0x4dt
        0x67t
        0x66t
        0x64t
        -0x4et
        0x66t
        0x6bt
        0x5ft
        0x66t
        0x64t
        -0x4et
        0x66t
        0x6bt
        0x5ft
        0x66t
        0x64t
        -0x4et
        0x66t
        0x68t
        0x7at
        0x23t
        0x16t
        0x12t
        0x24t
        -0x1t
        0x12t
        0xet
        0x11t
        0x26t
        0x1t
        0x1ct
        0x0t
        0x15t
        0x1ct
        0x24t
        -0x2bt
        -0x2ct
        -0x2et
        0x20t
        -0x2ct
        -0x2at
        -0x18t
    .end array-data
.end method

.method public static A0F()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "QJ7W4e4PJvclr77cDyA2o1qIxMihX3tE"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RH0qaB2vXSlWTV"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TMgHIdn8e0jRrsJAq9rOuGvMgMhVzLRj"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8zeB"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "h3DHJTryp4843oQXq4V40YlaMfy8fMY9"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "5EUDcWbBtTwBMpPZObVlQHA1Luk9oa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "lBOFkjXt9ejA3EivMitoOA5tI6ifJJ8U"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jkkICjKEbDq5EoZUmm0oqZxt7dyZ5DGY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ON;->A0L:[Ljava/lang/String;

    return-void
.end method

.method private declared-synchronized A0G()V
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    monitor-enter p0

    .line 46543
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A04:Z

    if-eqz v0, :cond_1

    .line 46544
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 46545
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/ads/redexgen/X/OK;

    .line 46546
    .local p0, "call":Lcom/facebook/ads/redexgen/X/OK;
    if-eqz v4, :cond_0

    .line 46547
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ON;->A0D:Lcom/facebook/ads/redexgen/X/RW;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, v4, Lcom/facebook/ads/redexgen/X/OK;->A00:Ljava/lang/String;

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/OK;->A02:[Ljava/lang/String;

    check-cast v0, [Ljava/lang/Object;

    .line 46548
    invoke-static {v2, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 46549
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/NN;->A05(Ljava/lang/String;)V

    .line 46550
    iget-boolean v0, v4, Lcom/facebook/ads/redexgen/X/OK;->A01:Z

    if-eqz v0, :cond_0

    .line 46551
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0K:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 46552
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v1

    iget-object v0, v4, Lcom/facebook/ads/redexgen/X/OK;->A00:Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/0R;->A4s(Ljava/lang/String;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46553
    :cond_1
    monitor-exit p0

    return-void

    .line 46554
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized A0H(Lcom/facebook/ads/redexgen/X/OK;)V
    .locals 1

    monitor-enter p0

    .line 46555
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0I:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    .line 46556
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ON;->A0G()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46557
    monitor-exit p0

    return-void

    .line 46558
    .end local p1    # null:Lcom/facebook/ads/redexgen/X/OK;
    .end local v0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static synthetic A0I(Lcom/facebook/ads/redexgen/X/ON;)V
    .locals 0

    .line 46559
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ON;->A0G()V

    return-void
.end method

.method private A0J()Z
    .locals 1

    .line 46560
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ON;->A0K()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private A0K()Z
    .locals 2

    .line 46561
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 46562
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Pt;->A03()Z

    move-result v0

    .line 46563
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/J4;->A1r(Landroid/content/Context;Z)Z

    move-result v0

    return v0
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/ON;Z)Z
    .locals 0

    .line 46564
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A04:Z

    return p1
.end method


# virtual methods
.method public final A0M()Lcom/facebook/ads/redexgen/X/JK;
    .locals 1

    .line 46565
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    return-object v0
.end method

.method public final A0N()Lcom/facebook/ads/redexgen/X/Lc;
    .locals 1

    .line 46566
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0B:Lcom/facebook/ads/redexgen/X/Lc;

    return-object v0
.end method

.method public final A0O()Lcom/facebook/ads/redexgen/X/RW;
    .locals 1

    .line 46567
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0D:Lcom/facebook/ads/redexgen/X/RW;

    return-object v0
.end method

.method public final A0P()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 46568
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0J:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final A0Q()V
    .locals 4

    .line 46569
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x16

    const/16 v1, 0x1a

    const/16 v0, 0x5b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46570
    return-void
.end method

.method public final A0R()V
    .locals 4

    .line 46571
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x30

    const/16 v1, 0x19

    const/16 v0, 0x42

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46572
    return-void
.end method

.method public final A0S()V
    .locals 1

    .line 46573
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A05:Z

    .line 46574
    return-void
.end method

.method public final A0T()V
    .locals 1

    .line 46575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A05:Z

    .line 46576
    return-void
.end method

.method public final A0U()V
    .locals 4

    .line 46577
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x62

    const/16 v1, 0x17

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46578
    return-void
.end method

.method public final A0V()V
    .locals 4

    .line 46579
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0xeb

    const/16 v1, 0x16

    const/16 v0, 0x75

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46580
    return-void
.end method

.method public final A0W()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "AddJavascriptInterface"
        }
    .end annotation

    .line 46581
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-le v1, v0, :cond_0

    .line 46582
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/ON;->A0D:Lcom/facebook/ads/redexgen/X/RW;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ON;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x44

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/RW;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46583
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/ON;->A0A:Lcom/facebook/ads/redexgen/X/JK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0N:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 46584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0F:Lcom/facebook/ads/redexgen/X/OZ;

    iget-object v4, v0, Lcom/facebook/ads/redexgen/X/OZ;->A00:Ljava/lang/String;

    .line 46585
    .local p0, "url":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A00:J

    .line 46586
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0D:Lcom/facebook/ads/redexgen/X/RW;

    invoke-virtual {v0, v4}, Lcom/facebook/ads/redexgen/X/RW;->loadUrl(Ljava/lang/String;)V

    .line 46587
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 46588
    .local v1, "funnelJSON":Lorg/json/JSONObject;
    :try_start_0
    const/16 v2, 0xcb

    const/4 v1, 0x3

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 46589
    const/16 v2, 0x56

    const/16 v1, 0xc

    const/16 v0, 0x56

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/OO;->A00()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46590
    const/16 v2, 0xc1

    const/16 v1, 0xa

    const/16 v0, 0x6d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/ON;->A0M:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46591
    const/16 v2, 0x49

    const/16 v1, 0xd

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rb;->getAttachedDynamicAdViews()I

    move-result v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 46592
    :catch_0
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 46593
    .local v0, "funnelMessage":Ljava/lang/String;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/0R;->A4y(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/ads/redexgen/X/ON;->A0L:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v1, v1, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 46594
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/ON;->A0L:[Ljava/lang/String;

    const-string v1, "F37Uv1pNa1vK7Gl1ach1LU4YjGU0eDGU"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/ON;->A0D()V

    .line 46595
    return-void
.end method

.method public final A0X()V
    .locals 4

    .line 46596
    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v0, 0x0

    aput-object v1, v3, v0

    const/16 v2, 0x79

    const/16 v1, 0x18

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46597
    return-void
.end method

.method public final A0Y(Lcom/facebook/ads/redexgen/X/OL;)V
    .locals 0

    .line 46598
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A01:Lcom/facebook/ads/redexgen/X/OL;

    .line 46599
    return-void
.end method

.method public final A0Z(Lcom/facebook/ads/redexgen/X/OM;)V
    .locals 0

    .line 46600
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A02:Lcom/facebook/ads/redexgen/X/OM;

    .line 46601
    return-void
.end method

.method public final A0a(Lcom/facebook/ads/redexgen/X/OX;)V
    .locals 1

    .line 46602
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/OY;->A0J(Lcom/facebook/ads/redexgen/X/OX;)V

    .line 46603
    return-void
.end method

.method public final A0b(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 0
    .param p1    # Lcom/facebook/ads/redexgen/X/Q9;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 46604
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ON;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 46605
    return-void
.end method

.method public final A0c(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 5

    .line 46606
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0H:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v4, v3

    const/4 v0, 0x1

    aput-object p1, v4, v0

    .line 46607
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/16 v2, 0xce

    const/16 v1, 0x1d

    const/4 v0, 0x7

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0B(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/OK;

    invoke-direct {v0, v1, v4, v3}, Lcom/facebook/ads/redexgen/X/OK;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 46608
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/ON;->A0H(Lcom/facebook/ads/redexgen/X/OK;)V

    .line 46609
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

    .line 46610
    .local v1, "extraData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/ON;->A09:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A06:Lcom/facebook/ads/redexgen/X/16;

    .line 46611
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0R()Ljava/lang/String;

    move-result-object v2

    new-instance v1, Lcom/facebook/ads/redexgen/X/NX;

    invoke-direct {v1, p1}, Lcom/facebook/ads/redexgen/X/NX;-><init>(Ljava/util/Map;)V

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A03:Lcom/facebook/ads/redexgen/X/Q9;

    .line 46612
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NX;->A03(Lcom/facebook/ads/redexgen/X/Q9;)Lcom/facebook/ads/redexgen/X/NX;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/NX;->A05()Ljava/util/Map;

    move-result-object v0

    .line 46613
    invoke-interface {v3, v2, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8W(Ljava/lang/String;Ljava/util/Map;)V

    .line 46614
    return-void
.end method

.method public final A0e()Z
    .locals 1

    .line 46615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A0E:Lcom/facebook/ads/redexgen/X/OY;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/OY;->A0K()Z

    move-result v0

    return v0
.end method

.method public final A0f()Z
    .locals 1

    .line 46616
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/ON;->A05:Z

    return v0
.end method
