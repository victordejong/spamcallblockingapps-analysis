.class public final Lcom/facebook/ads/redexgen/X/8C;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;

.field public static final A01:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Wl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 17694
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A01()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/8C;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Wl;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 17696
    sget-object v3, Lcom/facebook/ads/redexgen/X/8C;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/facebook/ads/redexgen/X/8C;->A00:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v1, v1, v0

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x32

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/8C;->A00:[Ljava/lang/String;

    const-string v1, "t"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Wl;

    return-object v0
.end method

.method public static A01()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "WfUJfZecOVcHzzrBpx92ELEjWhu2m"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "ABQQ5taiOepRv8Mi5iWio7B3aVpn"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "lqinWbZDhv0Ny2jUIa5P6Phm3DGMmF2T"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "dPu2X3zgdKacWkfyqxYrIyrhes"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b2oe8Nr0EFLLItrmCHMxvIgMHIYOeqfq"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "h"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "yKBaB64vFuTn7zYoCnuYBPVEHVJ9GNEq"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, ""

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/8C;->A00:[Ljava/lang/String;

    return-void
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/Wl;)V
    .locals 2

    .line 17697
    if-nez p0, :cond_0

    .line 17698
    return-void

    .line 17699
    :cond_0
    sget-object v1, Lcom/facebook/ads/redexgen/X/8C;->A01:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v0, 0x0

    invoke-virtual {v1, v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 17700
    return-void
.end method
