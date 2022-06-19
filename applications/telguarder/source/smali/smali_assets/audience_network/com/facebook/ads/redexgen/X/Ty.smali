.class public final Lcom/facebook/ads/redexgen/X/Ty;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/HI;


# static fields
.field public static A0A:[B

.field public static A0B:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/HI;

.field public A01:Lcom/facebook/ads/redexgen/X/HI;

.field public A02:Lcom/facebook/ads/redexgen/X/HI;

.field public A03:Lcom/facebook/ads/redexgen/X/HI;

.field public A04:Lcom/facebook/ads/redexgen/X/HI;

.field public A05:Lcom/facebook/ads/redexgen/X/HI;

.field public A06:Lcom/facebook/ads/redexgen/X/HI;

.field public final A07:Landroid/content/Context;

.field public final A08:Lcom/facebook/ads/redexgen/X/HI;

.field public final A09:Lcom/facebook/ads/redexgen/X/Hd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ty;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ty;->A07()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;Lcom/facebook/ads/redexgen/X/HI;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/ads/redexgen/X/Hd<",
            "-",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/HI;",
            ")V"
        }
    .end annotation

    .line 55476
    .local p3, "listener":Lcom/facebook/ads/redexgen/X/Hd;, "Lcom/facebook/ads/internal/exoplayer2/upstream/TransferListener<-Lcom/facebook/ads/internal/exoplayer2/upstream/DataSource;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55477
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A07:Landroid/content/Context;

    .line 55478
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    .line 55479
    invoke-static {p3}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A08:Lcom/facebook/ads/redexgen/X/HI;

    .line 55480
    return-void
.end method

.method private A00()Lcom/facebook/ads/redexgen/X/HI;
    .locals 3

    .line 55481
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55482
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A07:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/U3;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/U3;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:Lcom/facebook/ads/redexgen/X/HI;

    .line 55483
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A00:Lcom/facebook/ads/redexgen/X/HI;

    return-object v0
.end method

.method private A01()Lcom/facebook/ads/redexgen/X/HI;
    .locals 3

    .line 55484
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55485
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A07:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/U2;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/U2;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/HI;

    .line 55486
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A01:Lcom/facebook/ads/redexgen/X/HI;

    return-object v0
.end method

.method private A02()Lcom/facebook/ads/redexgen/X/HI;
    .locals 1

    .line 55487
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55488
    new-instance v0, Lcom/facebook/ads/redexgen/X/U1;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/U1;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/HI;

    .line 55489
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A02:Lcom/facebook/ads/redexgen/X/HI;

    return-object v0
.end method

.method private A03()Lcom/facebook/ads/redexgen/X/HI;
    .locals 4

    .line 55490
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A04:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55491
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Tu;-><init>(Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A04:Lcom/facebook/ads/redexgen/X/HI;

    .line 55492
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ty;->A04:Lcom/facebook/ads/redexgen/X/HI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const-string v1, "h9KXkVSEYofP3G7HUhmamE2WM0inoZma"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "ZXzJhCYargCXMLGqnv3XrO1VkbDexkET"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-object v3

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A04()Lcom/facebook/ads/redexgen/X/HI;
    .locals 3

    .line 55493
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A05:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55494
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ty;->A07:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A09:Lcom/facebook/ads/redexgen/X/Hd;

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tl;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/Tl;-><init>(Landroid/content/Context;Lcom/facebook/ads/redexgen/X/Hd;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A05:Lcom/facebook/ads/redexgen/X/HI;

    .line 55495
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A05:Lcom/facebook/ads/redexgen/X/HI;

    return-object v0
.end method

.method private A05()Lcom/facebook/ads/redexgen/X/HI;
    .locals 4

    .line 55496
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A06:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55497
    :try_start_0
    const/16 v2, 0x8d

    const/16 v1, 0x3c

    const/16 v0, 0x2a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    .line 55498
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 55499
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    new-array v0, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A06:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 55500
    :catch_0
    move-exception v3

    .line 55501
    .local p0, "e":Ljava/lang/Exception;
    const/16 v2, 0x66

    const/16 v1, 0x22

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 55502
    .end local p0    # "e":Ljava/lang/Exception;
    .local p0, "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    const/16 v2, 0x55

    const/16 v1, 0x11

    const/16 v0, 0x7d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x46

    const/4 v0, 0x1

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55503
    .end local p0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A06:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    .line 55504
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A08:Lcom/facebook/ads/redexgen/X/HI;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A06:Lcom/facebook/ads/redexgen/X/HI;

    .line 55505
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A06:Lcom/facebook/ads/redexgen/X/HI;

    return-object v0
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Ty;->A0A:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0xe

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 3

    const/16 v0, 0xe3

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Ty;->A0A:[B

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const-string v1, "kZO5B5w9wI59X"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "Gqhg3Q2hfpcrM"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :array_0
    .array-data 1
        0x77t
        -0x57t
        -0x4at
        -0x54t
        -0x46t
        -0x49t
        -0x4ft
        -0x54t
        -0x59t
        -0x57t
        -0x45t
        -0x45t
        -0x53t
        -0x44t
        0x77t
        0x50t
        -0x7dt
        -0x7dt
        0x74t
        0x7ct
        0x7ft
        -0x7dt
        0x78t
        0x7dt
        0x76t
        0x2ft
        -0x7dt
        0x7et
        0x2ft
        0x7ft
        0x7bt
        0x70t
        -0x78t
        0x2ft
        0x61t
        0x63t
        0x5ct
        0x5ft
        0x2ft
        -0x7et
        -0x7dt
        -0x7ft
        0x74t
        0x70t
        0x7ct
        0x2ft
        -0x7at
        0x78t
        -0x7dt
        0x77t
        0x7et
        -0x7ct
        -0x7dt
        0x2ft
        0x73t
        0x74t
        0x7ft
        0x74t
        0x7dt
        0x73t
        0x78t
        0x7dt
        0x76t
        0x2ft
        0x7et
        0x7dt
        0x2ft
        -0x7dt
        0x77t
        0x74t
        0x2ft
        0x61t
        0x63t
        0x5ct
        0x5ft
        0x2ft
        0x74t
        -0x79t
        -0x7dt
        0x74t
        0x7dt
        -0x7et
        0x78t
        0x7et
        0x7dt
        -0x31t
        -0x10t
        -0xft
        -0x14t
        0x0t
        -0x9t
        -0x1t
        -0x31t
        -0x14t
        -0x1t
        -0x14t
        -0x22t
        -0x6t
        0x0t
        -0x3t
        -0x12t
        -0x10t
        -0x70t
        -0x43t
        -0x43t
        -0x46t
        -0x43t
        0x6bt
        -0x4ct
        -0x47t
        -0x42t
        -0x41t
        -0x54t
        -0x47t
        -0x41t
        -0x4ct
        -0x54t
        -0x41t
        -0x4ct
        -0x47t
        -0x4et
        0x6bt
        -0x63t
        -0x61t
        -0x68t
        -0x65t
        0x6bt
        -0x50t
        -0x3dt
        -0x41t
        -0x50t
        -0x47t
        -0x42t
        -0x4ct
        -0x46t
        -0x47t
        -0x1et
        -0xct
        -0xct
        -0x1at
        -0xbt
        -0x65t
        -0x59t
        -0x5bt
        0x66t
        -0x62t
        -0x67t
        -0x65t
        -0x63t
        -0x66t
        -0x59t
        -0x59t
        -0x5dt
        0x66t
        -0x67t
        -0x64t
        -0x55t
        0x66t
        -0x5ft
        -0x5at
        -0x54t
        -0x63t
        -0x56t
        -0x5at
        -0x67t
        -0x5ct
        0x66t
        -0x63t
        -0x50t
        -0x59t
        -0x58t
        -0x5ct
        -0x67t
        -0x4ft
        -0x63t
        -0x56t
        0x6at
        0x66t
        -0x63t
        -0x50t
        -0x54t
        0x66t
        -0x56t
        -0x54t
        -0x5bt
        -0x58t
        0x66t
        -0x76t
        -0x54t
        -0x5bt
        -0x58t
        0x7ct
        -0x67t
        -0x54t
        -0x67t
        -0x75t
        -0x59t
        -0x53t
        -0x56t
        -0x65t
        -0x63t
        -0x78t
        -0x6ct
        -0x6dt
        -0x67t
        -0x76t
        -0x6dt
        -0x67t
        -0x73t
        -0x76t
        -0x63t
        -0x76t
        -0x52t
        -0x63t
        -0x4dt
        -0x52t
        -0x5ft
        -0x51t
        -0x55t
        -0x4ft
        -0x52t
        -0x61t
        -0x5ft
        -0x78t
        -0x76t
        -0x7dt
        -0x7at
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "2wLKHz7gl9mvVtXzhzxFVMdyIwv8DoE6"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "wh6gM9QUPbh2tCcNKpWYlpMvJWTGL02c"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "1SGI3QJqpExau"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "mAq3uZDr4c15LfKZt07H"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "n3VtccKkHievrr76VoTsAMaJYqV64eF7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "nRLJIH3Rbg2BCCxtWS8"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "2aLO9aVtuIOk95k69yoITyn8H2j4Q29o"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "nRuj2z166KGVt"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A7T()Landroid/net/Uri;
    .locals 1

    .line 55506
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->A7T()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method public final ACC(Lcom/facebook/ads/redexgen/X/HM;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55507
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    if-nez v0, :cond_7

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 55508
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 55509
    .local p0, "scheme":Ljava/lang/String;
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ic;->A0f(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55510
    iget-object v0, p1, Lcom/facebook/ads/redexgen/X/HM;->A04:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55511
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A00()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    .line 55512
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/HI;->ACC(Lcom/facebook/ads/redexgen/X/HM;)J

    move-result-wide v0

    return-wide v0

    .line 55513
    :cond_0
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A03()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55514
    :cond_1
    const/16 v2, 0x88

    const/4 v1, 0x5

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55515
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A00()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55516
    :cond_2
    const/16 v2, 0xc9

    const/4 v1, 0x7

    const/16 v0, 0x17

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 55517
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A01()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55518
    :cond_3
    const/16 v2, 0xdf

    const/4 v1, 0x4

    const/16 v0, 0x8

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55519
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A05()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55520
    :cond_4
    const/16 v2, 0xd0

    const/4 v1, 0x4

    const/16 v0, 0x1b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 55521
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A02()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55522
    :cond_5
    const/16 v2, 0xd4

    const/16 v1, 0xb

    const/16 v0, 0x2e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Ty;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 55523
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Ty;->A04()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto :goto_1

    .line 55524
    :cond_6
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Ty;->A08:Lcom/facebook/ads/redexgen/X/HI;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_8

    sget-object v2, Lcom/facebook/ads/redexgen/X/Ty;->A0B:[Ljava/lang/String;

    const-string v1, "QXN3zyuBcALLUyrlne5yu7nYtDEtcn9H"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    const-string v1, "pIF32cDzbEqzVDfT9ZCxnoiVPibrPUSV"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    iput-object v3, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    goto/16 :goto_1

    .line 55525
    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55526
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    if-eqz v0, :cond_0

    .line 55527
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HI;->close()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55528
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    .line 55529
    throw v0

    .line 55530
    :goto_0
    iput-object v1, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    .line 55531
    :cond_0
    return-void
.end method

.method public final read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55532
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ty;->A03:Lcom/facebook/ads/redexgen/X/HI;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/HI;->read([BII)I

    move-result v0

    return v0
.end method
