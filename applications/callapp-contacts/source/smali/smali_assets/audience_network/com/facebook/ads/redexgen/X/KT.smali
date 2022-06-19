.class public final Lcom/facebook/ads/redexgen/X/KT;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final A00:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final A01:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static final A02:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/facebook/ads/redexgen/X/KR;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 40995
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 40996
    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Set;

    .line 40997
    const/4 v1, 0x1

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40998
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(Ljava/lang/Throwable;Ljava/lang/Object;)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RethrownThrowableArgument"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 41000
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41001
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 41002
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ki;->A00()Lcom/facebook/ads/redexgen/X/Kh;

    move-result-object v1

    const/16 v0, 0xcea

    invoke-interface {v1, v0, p0}, Lcom/facebook/ads/redexgen/X/Kh;->A8L(ILjava/lang/Throwable;)V

    .line 41003
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/KR;

    .line 41004
    .local p0, "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KR;
    if-eqz v0, :cond_0

    .line 41005
    invoke-interface {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/KR;->ADD(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 41006
    .end local p0    # "contextRepairHelper":Lcom/facebook/ads/redexgen/X/KR;
    :cond_0
    return-void

    .line 41007
    :cond_1
    throw p0
.end method

.method public static A01(ZLcom/facebook/ads/redexgen/X/KR;)V
    .locals 1

    .line 41008
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A01:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41009
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 41010
    return-void
.end method

.method public static A02(Ljava/lang/Object;)Z
    .locals 1

    .line 41011
    sget-object v0, Lcom/facebook/ads/redexgen/X/KT;->A00:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
