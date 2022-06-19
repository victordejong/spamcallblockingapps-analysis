.class public final Lcom/facebook/ads/redexgen/X/QX;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/QD;
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

    .line 49330
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QX;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/QX;->A07()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QX;->A03:Ljava/util/Set;

    .line 49331
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    .line 49332
    sget-object v3, Lcom/facebook/ads/redexgen/X/QX;->A03:Ljava/util/Set;

    const/4 v2, 0x3

    const/16 v1, 0x1d

    const/16 v0, 0x3a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49333
    sget-object v3, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    const/16 v2, 0xa5

    const/16 v1, 0x1d

    const/16 v0, 0x6e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49334
    sget-object v3, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    const/16 v2, 0x20

    const/16 v1, 0x1d

    const/16 v0, 0x5d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49335
    sget-object v3, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    const/16 v2, 0x3d

    const/16 v1, 0x1d

    const/16 v0, 0x11

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49336
    sget-object v3, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    const/16 v2, 0x71

    const/16 v1, 0x1d

    const/16 v0, 0xb

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 49337
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/QX;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49338
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 1

    .line 49339
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/QX;->A03(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 1

    .line 49340
    const/4 v0, 0x1

    invoke-static {v0, p0}, Lcom/facebook/ads/redexgen/X/QX;->A02(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    return-object v0
.end method

.method public static A02(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 4

    .line 49341
    new-instance v2, Lcom/facebook/ads/redexgen/X/QJ;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/QJ;-><init>()V

    .line 49342
    .local p0, "networkModuleConfigurationBuilder":Lcom/facebook/ads/redexgen/X/QJ;
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/QX;->A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v1

    .line 49343
    .local p1, "networkModuleRequestConfigurationBuilder":Lcom/facebook/ads/redexgen/X/QM;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QX;->A0B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49344
    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A04:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A02(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QJ;

    .line 49345
    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A03:Ljava/util/Set;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A01(Ljava/util/Set;)Lcom/facebook/ads/redexgen/X/QJ;

    .line 49346
    :cond_0
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L1;->A04()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49347
    invoke-static {}, Lcom/facebook/ads/redexgen/X/L1;->A02()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A09(Ljava/util/Map;)Lcom/facebook/ads/redexgen/X/QM;

    .line 49348
    :cond_1
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QH;->A00()Lcom/facebook/ads/redexgen/X/QH;

    move-result-object v3

    .line 49349
    invoke-virtual {v1}, Lcom/facebook/ads/redexgen/X/QM;->A0A()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(Lcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    .line 49350
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A03(Z)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v1

    .line 49351
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A04(Z)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    .line 49352
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A05()Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v2

    .line 49353
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    .line 49354
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lo;->A01()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 49355
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QH;->A01(Lcom/facebook/ads/redexgen/X/QK;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    .line 49356
    return-object v0
.end method

.method public static A03(ZLcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QF;
    .locals 4

    .line 49357
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QH;->A00()Lcom/facebook/ads/redexgen/X/QH;

    move-result-object v3

    new-instance v0, Lcom/facebook/ads/redexgen/X/QJ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/QJ;-><init>()V

    .line 49358
    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/QJ;->A03(Z)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v1

    .line 49359
    invoke-static {p1}, Lcom/facebook/ads/redexgen/X/QX;->A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QM;->A0A()Lcom/facebook/ads/redexgen/X/QN;

    move-result-object v0

    .line 49360
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A00(Lcom/facebook/ads/redexgen/X/QN;)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v1

    .line 49361
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QJ;->A04(Z)Lcom/facebook/ads/redexgen/X/QJ;

    move-result-object v0

    .line 49362
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QJ;->A05()Lcom/facebook/ads/redexgen/X/QK;

    move-result-object v2

    .line 49363
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v1

    .line 49364
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lo;->A01()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 49365
    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QH;->A01(Lcom/facebook/ads/redexgen/X/QK;Lcom/facebook/ads/redexgen/X/8d;Ljava/util/concurrent/Executor;)Lcom/facebook/ads/redexgen/X/QF;

    move-result-object v0

    .line 49366
    return-object v0
.end method

.method public static A04(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/QM;
    .locals 3

    .line 49367
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/QX;->A09(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 49368
    new-instance v2, Lcom/facebook/ads/redexgen/X/QM;

    invoke-direct {v2}, Lcom/facebook/ads/redexgen/X/QM;-><init>()V

    .line 49369
    .local p0, "requestConfiguration":Lcom/facebook/ads/redexgen/X/QM;
    invoke-static {}, Lcom/facebook/ads/redexgen/X/QX;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49370
    const v0, 0x57e40

    .line 49371
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QM;->A03(I)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v1

    const v0, 0x1d4c0

    .line 49372
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A05(I)Lcom/facebook/ads/redexgen/X/QM;

    .line 49373
    :goto_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A08(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QM;->A04(I)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v1

    .line 49374
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A09(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A05(I)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v1

    .line 49375
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0A(Landroid/content/Context;)I

    move-result v0

    .line 49376
    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A06(I)Lcom/facebook/ads/redexgen/X/QM;

    move-result-object v1

    .line 49377
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A0B(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/QM;->A07(I)Lcom/facebook/ads/redexgen/X/QM;

    .line 49378
    const-class v1, Lcom/facebook/ads/redexgen/X/QX;

    monitor-enter v1

    goto :goto_1

    .line 49379
    :cond_0
    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/J4;->A07(Landroid/content/Context;)I

    move-result v0

    .line 49380
    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QM;->A03(I)Lcom/facebook/ads/redexgen/X/QM;

    goto :goto_0

    .line 49381
    :goto_1
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A00:Lcom/facebook/ads/redexgen/X/QD;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A00:Lcom/facebook/ads/redexgen/X/QD;

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/QD;

    if-eqz v0, :cond_1

    .line 49382
    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A00:Lcom/facebook/ads/redexgen/X/QD;

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/QM;->A08(Lcom/facebook/ads/redexgen/X/QD;)Lcom/facebook/ads/redexgen/X/QM;

    .line 49383
    :cond_1
    monitor-exit v1

    .line 49384
    return-object v2

    .line 49385
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static A05(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/QX;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x1d

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

    .line 49386
    sget-object v1, Lcom/facebook/ads/redexgen/X/QX;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49387
    return-void
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0xc2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/QX;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x33t
        0x6et
        0x7ft
        0x16t
        0x50t
        0x50t
        0x1ft
        0x62t
        0x17t
        0x66t
        0x7et
        0x54t
        0x75t
        0x15t
        0x48t
        0x7ft
        0x12t
        0x4bt
        0x49t
        0x43t
        0x4ct
        0x15t
        0x4ft
        0x50t
        0x57t
        0x15t
        0x72t
        0x48t
        0x54t
        0x4ct
        0x1at
        0x2dt
        0x73t
        0x2ct
        0xbt
        0x36t
        0x2at
        0xet
        0x33t
        0x26t
        0x2dt
        0x32t
        0x2et
        0x6bt
        0x17t
        0x2dt
        0x26t
        0x4t
        0x28t
        0x36t
        0x32t
        0x72t
        0x29t
        0x16t
        0x28t
        0x6ft
        0x39t
        0x12t
        0x33t
        0x7dt
        0x4at
        0x4et
        0x3ct
        0x34t
        0x5dt
        0x78t
        0x49t
        0x38t
        0x75t
        0x40t
        0x4ft
        0x68t
        0x60t
        0x65t
        0x38t
        0x7et
        0x7ct
        0x78t
        0x75t
        0x7dt
        0x4dt
        0x49t
        0x6ft
        0x76t
        0x54t
        0x43t
        0x69t
        0x4dt
        0x31t
        0x6t
        0x5dt
        0x76t
        0x67t
        0x64t
        0x7ct
        0x61t
        0x78t
        0x7at
        0x7dt
        0x74t
        0x33t
        0x71t
        0x76t
        0x75t
        0x7ct
        0x61t
        0x76t
        0x33t
        0x7at
        0x7dt
        0x7at
        0x67t
        0x32t
        0x4et
        0x4ct
        0x4et
        0x5ft
        0x20t
        0x77t
        0x78t
        0x4ct
        0x74t
        0x72t
        0x5dt
        0x70t
        0x3dt
        0x62t
        0x77t
        0x43t
        0x44t
        0x72t
        0x78t
        0x6ft
        0x43t
        0x5et
        0x23t
        0x7ft
        0x66t
        0x71t
        0x5bt
        0x2bt
        0x1ct
        0x6at
        0x62t
        0x79t
        0x7bt
        0x67t
        0x6at
        0x65t
        0x6et
        0x54t
        0x66t
        0x64t
        0x6ft
        0x6et
        0x54t
        0x64t
        0x65t
        0x0t
        0xbt
        0x1at
        0x19t
        0x1t
        0x1ct
        0x5t
        0x7t
        0x1ct
        0x29t
        0x41t
        0x34t
        0x21t
        0x1dt
        0x21t
        0x19t
        0x30t
        0x4at
        0x23t
        0x46t
        0x25t
        0x25t
        0x26t
        0x17t
        0x30t
        0x3t
        0x3ct
        0x1t
        0x35t
        0x3bt
        0x4bt
        0x1ft
        0x15t
        0x22t
        0x4et
        0x79t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "Exh265jAav1qtr7DpUJygZZaxxxpTmtC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "SQBLkInLDj0AmyeNrKbyEjSv0WgCkDkZ"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "06QylMQTFFo6cEpa4I5MzAhDcCrM0H1v"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "bzwZfLa9eTUZ8p"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BSexlEWnCsnZL2P3IrJeM"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "xvhAQNaWy5i1wmIORFOtMbrpefZc"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, ""

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/QX;->A02:[Ljava/lang/String;

    return-void
.end method

.method public static A09(Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 5

    .line 49388
    sget-object v0, Lcom/facebook/ads/redexgen/X/QX;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49389
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object p0

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A1k:I

    const/16 v2, 0x5a

    const/16 v1, 0x17

    const/16 v0, 0xe

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 49390
    const/16 v2, 0x9e

    const/4 v1, 0x7

    const/16 v0, 0x73

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 49391
    :cond_0
    return-void
.end method

.method public static declared-synchronized A0A(Lcom/facebook/ads/redexgen/X/QD;)V
    .locals 2

    const-class v1, Lcom/facebook/ads/redexgen/X/QX;

    monitor-enter v1

    .line 49392
    :try_start_0
    sput-object p0, Lcom/facebook/ads/redexgen/X/QX;->A00:Lcom/facebook/ads/redexgen/X/QD;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49393
    monitor-exit v1

    return-void

    .line 49394
    .end local v1
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static A0B()Z
    .locals 5

    .line 49395
    invoke-static {}, Lcom/facebook/ads/internal/settings/AdInternalSettings;->getUrlPrefix()Ljava/lang/String;

    move-result-object v4

    .line 49396
    .local v4, "urlPrefix":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/QX;->A02:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x15

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/QX;->A02:[Ljava/lang/String;

    const-string v1, "sPH3F7x0hAeCkRCZohRBY"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const/4 v1, 0x3

    const/4 v0, 0x0

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static A0C(Lcom/facebook/ads/redexgen/X/8D;)Z
    .locals 5

    .line 49397
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x1

    const/16 v2, 0x8e

    const/16 v1, 0x10

    const/16 v0, 0x16

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/QX;->A05(III)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const/16 v0, 0x11

    if-ge v4, v0, :cond_1

    .line 49398
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49399
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 49400
    :cond_1
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/8D;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 49401
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    return v3

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method
