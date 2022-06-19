.class public final Lcom/facebook/ads/redexgen/X/Qc;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/QI;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A01:[B

.field public static A02:[Ljava/lang/String;

.field public static final A03:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A04:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 49357
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A07()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A03:Ljava/util/Set;

    .line 49358
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    .line 49359
    sget-object v3, Lcom/facebook/ads/redexgen/X/Qc;->A03:Ljava/util/Set;

    const/4 v2, 0x3

    const/16 v1, 0x1d

    const/16 v0, 0x1e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49360
    sget-object v3, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    const/16 v2, 0xa5

    const/16 v1, 0x1d

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49361
    sget-object v3, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    const/16 v2, 0x20

    const/16 v1, 0x1d

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49362
    sget-object v3, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    const/16 v2, 0x3d

    const/16 v1, 0x1d

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49363
    sget-object v3, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    const/16 v2, 0x71

    const/16 v1, 0x1d

    const/16 v0, 0x1d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49364
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 1

    .line 49366
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Qc;->A03(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 1

    .line 49367
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/Qc;->A02(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    return-object v0
.end method

.method public static A02(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 6

    .line 49368
    new-instance v4, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v4}, Lcom/facebook/ads/redexgen/X/QO;-><init>()V

    .line 49369
    .local p0, "networkModuleConfigurationBuilder":Lcom/facebook/ads/redexgen/X/QO;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v5

    .line 49370
    .local p1, "networkModuleRequestConfigurationBuilder":Lcom/facebook/ads/redexgen/X/QR;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49371
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A04:Ljava/util/Set;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/QO;->A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QO;

    .line 49372
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A03:Ljava/util/Set;

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/QO;->A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QO;

    .line 49373
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kz;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49374
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kz;->A02()Ljava/util/Map;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/4 v0, 0x7

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const-string v1, "6CjO7LbqJIONUadrRHmx0RuGBypxStir"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "VKsjD9ddp6JrHwn0FL0Df9QGs7RhJ4JT"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v5, v3}, Lcom/facebook/ads/redexgen/X/QR;->A08(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QR;

    .line 49375
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QM;->A00()Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v3

    .line 49376
    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/QR;->A09()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/facebook/ads/redexgen/X/QO;->A00(Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    .line 49377
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QO;->A03(Z)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v1

    .line 49378
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A04(Z)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    .line 49379
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A05()Lcom/facebook/ads/redexgen/X/QP;

    move-result-object v2

    .line 49380
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    .line 49381
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lm;->A01()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 49382
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A01(Lcom/facebook/ads/redexgen/X/QP;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    .line 49383
    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A03(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QK;
    .locals 4

    .line 49384
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QM;->A00()Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/QO;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QO;-><init>()V

    .line 49385
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QO;->A03(Z)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v1

    .line 49386
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/Qc;->A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QR;->A09()Lcom/facebook/ads/redexgen/X/QS;

    move-result-object v0

    .line 49387
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A00(Lcom/facebook/ads/redexgen/X/QS;)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v1

    .line 49388
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QO;->A04(Z)Lcom/facebook/ads/redexgen/X/QO;

    move-result-object v0

    .line 49389
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QO;->A05()Lcom/facebook/ads/redexgen/X/QP;

    move-result-object v2

    .line 49390
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    .line 49391
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lm;->A01()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 49392
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A01(Lcom/facebook/ads/redexgen/X/QP;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v0

    .line 49393
    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QR;
    .locals 5

    .line 49394
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/Qc;->A09(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 49395
    new-instance v3, Lcom/facebook/ads/redexgen/X/QR;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/QR;-><init>()V

    .line 49396
    .local p0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/QR;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Qc;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49397
    const v0, 0x57e40

    .line 49398
    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/QR;->A02(I)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v1

    const v0, 0x1d4c0

    .line 49399
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QR;->A04(I)Lcom/facebook/ads/redexgen/X/QR;

    .line 49400
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A08(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/QR;->A03(I)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v1

    .line 49401
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A09(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QR;->A04(I)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v1

    .line 49402
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0A(Landroid/content/Context;)I

    move-result v0

    .line 49403
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QR;->A05(I)Lcom/facebook/ads/redexgen/X/QR;

    move-result-object v1

    .line 49404
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0B(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QR;->A06(I)Lcom/facebook/ads/redexgen/X/QR;

    .line 49405
    const-class v1, Lcom/facebook/ads/redexgen/X/Qc;

    monitor-enter v1

    goto :goto_1

    .line 49406
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A07(Landroid/content/Context;)I

    move-result v4

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v1, v0

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x6b

    if-eq v1, v0, :cond_2

    .line 49407
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const-string v1, "dD0oPHmij4s2ObzR7OPOejAtm2pYkwQj"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "6BD1tyrnooF6YeHGpiFkkFGNAjU2pFFN"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v3, v4}, Lcom/facebook/ads/redexgen/X/QR;->A02(I)Lcom/facebook/ads/redexgen/X/QR;

    goto :goto_0

    .line 49408
    :goto_1
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A00:Lcom/facebook/ads/redexgen/X/QI;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A00:Lcom/facebook/ads/redexgen/X/QI;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/QI;

    if-eqz v0, :cond_1

    .line 49409
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A00:Lcom/facebook/ads/redexgen/X/QI;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/QR;->A07(Lcom/facebook/ads/redexgen/X/QI;)Lcom/facebook/ads/redexgen/X/QR;

    .line 49410
    :cond_1
    monitor-exit v1

    .line 49411
    return-object v3

    .line 49412
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x38

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A06()V
    .locals 2

    .line 49413
    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49414
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xc2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x24t
        0x79t
        0x68t
        0x17t
        0x51t
        0x51t
        0x1et
        0x63t
        0x16t
        0x67t
        0x7ft
        0x55t
        0x74t
        0x14t
        0x49t
        0x7et
        0x13t
        0x4at
        0x48t
        0x42t
        0x4dt
        0x14t
        0x4et
        0x51t
        0x56t
        0x14t
        0x73t
        0x49t
        0x55t
        0x4dt
        0x1bt
        0x2ct
        0x9t
        0x56t
        0x71t
        0x4ct
        0x50t
        0x74t
        0x49t
        0x5ct
        0x57t
        0x48t
        0x54t
        0x11t
        0x6dt
        0x57t
        0x5ct
        0x7et
        0x52t
        0x4ct
        0x48t
        0x8t
        0x53t
        0x6ct
        0x52t
        0x15t
        0x43t
        0x68t
        0x49t
        0x7t
        0x30t
        0xet
        0x7ct
        0x74t
        0x1dt
        0x38t
        0x9t
        0x78t
        0x35t
        0x0t
        0xft
        0x28t
        0x20t
        0x25t
        0x78t
        0x3et
        0x3ct
        0x38t
        0x35t
        0x3dt
        0xdt
        0x9t
        0x2ft
        0x36t
        0x14t
        0x3t
        0x29t
        0xdt
        0x71t
        0x46t
        0x1t
        0x2at
        0x3bt
        0x38t
        0x20t
        0x3dt
        0x24t
        0x26t
        0x21t
        0x28t
        0x6ft
        0x2dt
        0x2at
        0x29t
        0x20t
        0x3dt
        0x2at
        0x6ft
        0x26t
        0x21t
        0x26t
        0x3bt
        0x6et
        0x7dt
        0x7ft
        0x7dt
        0x6ct
        0x13t
        0x44t
        0x4bt
        0x7ft
        0x47t
        0x41t
        0x6et
        0x43t
        0xet
        0x51t
        0x44t
        0x70t
        0x77t
        0x41t
        0x4bt
        0x5ct
        0x70t
        0x6dt
        0x10t
        0x4ct
        0x55t
        0x42t
        0x68t
        0x18t
        0x2ft
        0x48t
        0x40t
        0x5bt
        0x59t
        0x45t
        0x48t
        0x47t
        0x4ct
        0x76t
        0x44t
        0x46t
        0x4dt
        0x4ct
        0x76t
        0x46t
        0x47t
        0x39t
        0x32t
        0x23t
        0x20t
        0x38t
        0x25t
        0x3ct
        0x1dt
        0x6t
        0x33t
        0x5bt
        0x2et
        0x3bt
        0x7t
        0x3bt
        0x3t
        0x2at
        0x50t
        0x39t
        0x5ct
        0x3ft
        0x3ft
        0x3ct
        0xdt
        0x2at
        0x19t
        0x26t
        0x1bt
        0x2ft
        0x21t
        0x51t
        0x5t
        0xft
        0x38t
        0x54t
        0x63t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "b"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "jWWIi2TrnHAAyoG5itvaKpzBpE6rwsKb"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "4piz2zd6PBPCOA5LKuru6huyc0Gk9hmI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ThWxRwfxtMClt6xxWNEGrvPqHoOGiBgN"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VC0ltrZe3ujZ5yBmE9F34w5pTHRf8GMT"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "g0Z7XyqsbnnTrD4DkPgr08gcmreNHhpx"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VVYGWntGozQ2sTcwE1XxLnyTeGzWkyyX"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "XVqTwdXEkxL4UUDwn3dakWK60VTsxJd5"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 5

    .line 49415
    sget-object v0, Lcom/facebook/ads/redexgen/X/Qc;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49416
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1j:I

    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0x77

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 49417
    const/16 v2, 0x9e

    const/4 v1, 0x7

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 49418
    :cond_0
    return-void
.end method

.method public static declared-synchronized A0A(Lcom/facebook/ads/redexgen/X/QI;)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/Qc;

    monitor-enter v1

    .line 49419
    :try_start_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/Qc;->A00:Lcom/facebook/ads/redexgen/X/QI;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49420
    monitor-exit v1

    return-void

    .line 49421
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A0B()Z
    .locals 4

    .line 49422
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v3

    .line 49423
    .local v3, "urlPrefix":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    const/4 v1, 0x3

    const/16 v0, 0x32

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 5

    .line 49424
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x1

    const/16 v2, 0x8e

    const/16 v1, 0x10

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Qc;->A05(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0x11

    if-ge v3, v0, :cond_1

    .line 49425
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49426
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 49427
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49428
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x1

    if-eq v1, v0, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/Qc;->A02:[Ljava/lang/String;

    const-string v1, "6SlcDzdssqL5L6jmaJN4q0YtRJ9ZiIN0"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    const-string v1, "IhCDgNyX5tEXKuNPsF1SGphg5lyX1n5g"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    :goto_1
    return v4

    :cond_3
    const/4 v4, 0x0

    goto :goto_1
.end method
