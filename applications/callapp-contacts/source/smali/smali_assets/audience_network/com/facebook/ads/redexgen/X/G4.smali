.class public final Lcom/facebook/ads/redexgen/X/G4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/QL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/G1;->A04()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/G1;

.field public final synthetic A01:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic A02:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic A03:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/G1;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 33274
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/G4;->A00:Lcom/facebook/ads/redexgen/X/G1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A9m(Lcom/facebook/ads/redexgen/X/QJ;)V
    .locals 3

    .line 33275
    invoke-interface {p1}, Lcom/facebook/ads/redexgen/X/QJ;->A5i()Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/G4;->A03:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/G1;->A08(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/atomic/AtomicReference;)V

    .line 33276
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33277
    return-void
.end method

.method public final AA8(Ljava/lang/Exception;)V
    .locals 1

    .line 33278
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A02:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 33279
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/G4;->A01:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 33280
    return-void
.end method
