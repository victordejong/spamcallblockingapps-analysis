.class public final Lcom/facebook/ads/redexgen/X/Kk;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/Kj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 41815
    const/4 v1, 0x0

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41816
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()Lcom/facebook/ads/redexgen/X/Kj;
    .locals 1

    .line 41817
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Kj;

    .line 41818
    .local v0, "errorLogger":Lcom/facebook/ads/redexgen/X/Kj;
    if-nez v0, :cond_0

    .line 41819
    new-instance v0, Lcom/facebook/ads/redexgen/X/Sr;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Sr;-><init>()V

    return-object v0

    .line 41820
    :cond_0
    return-object v0
.end method

.method public static A01(Lcom/facebook/ads/redexgen/X/Kj;)V
    .locals 1

    .line 41821
    sget-object v0, Lcom/facebook/ads/redexgen/X/Kk;->A00:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41822
    return-void
.end method
