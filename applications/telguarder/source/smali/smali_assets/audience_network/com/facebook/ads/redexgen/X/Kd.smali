.class public abstract Lcom/facebook/ads/redexgen/X/Kd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "CatchGeneralException"
    }
.end annotation


# static fields
.field public static A01:[B

.field public static final A02:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A03:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A04:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/KT;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/KR;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 41499
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kd;->A03()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41500
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 41501
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 41502
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41503
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41504
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v1, 0x1a

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Kd;->A02(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41505
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Kh;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Kh;-><init>(Ljava/lang/String;)V

    .line 41506
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ki;->A01(Lcom/facebook/ads/redexgen/X/Kh;)Lcom/facebook/ads/redexgen/X/KR;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/KR;

    .line 41507
    :goto_0
    return-void

    .line 41508
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/KR;

    goto :goto_0
.end method

.method public static A02(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Kd;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x20

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A03()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x2ct
        0xbt
        0x10t
        0x10t
        0x1ft
        0x1ct
        0x12t
        0x1bt
        0x5et
        0x1dt
        0xct
        0x1bt
        0x1ft
        0xat
        0x1bt
        0x1at
        0x50t
        0x5et
        0x2at
        0x16t
        0xct
        0x1bt
        0x1ft
        0x1at
        0x44t
        0x5et
    .end array-data
.end method

.method public static A04(Z)V
    .locals 1

    .line 41509
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41510
    return-void
.end method

.method public static A05(ZLcom/facebook/ads/redexgen/X/KT;)V
    .locals 1

    .line 41511
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41512
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41513
    return-void
.end method


# virtual methods
.method public final A06()Lcom/facebook/ads/redexgen/X/KR;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 41514
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Kd;->A00:Lcom/facebook/ads/redexgen/X/KR;

    return-object v0
.end method

.method public abstract A07()V
.end method

.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 41515
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Kd;
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41516
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ki;->A04(Lcom/facebook/ads/redexgen/X/Kd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 41517
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Kd;
    :cond_1
    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/Kd;->A07()V

    goto :goto_0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41518
    :catchall_0
    move-exception v2

    .line 41519
    .local v0, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A02:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41520
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kk;->A00()Lcom/facebook/ads/redexgen/X/Kj;

    move-result-object v1

    const/16 v0, 0xce5

    invoke-interface {v1, v0, v2}, Lcom/facebook/ads/redexgen/X/Kj;->A8N(ILjava/lang/Throwable;)V

    .line 41521
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A04:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KT;

    .line 41522
    .local v3, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KT;
    if-eqz v0, :cond_2

    .line 41523
    invoke-interface {v0, v2, v3}, Lcom/facebook/ads/redexgen/X/KT;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41524
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_2
    :goto_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kd;->A03:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 41525
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ki;->A05(Lcom/facebook/ads/redexgen/X/Kd;)V

    .line 41526
    :cond_3
    return-void

    .line 41527
    .restart local v0    # "t":Ljava/lang/Throwable;
    :cond_4
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 41528
    .end local v0    # "t":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
