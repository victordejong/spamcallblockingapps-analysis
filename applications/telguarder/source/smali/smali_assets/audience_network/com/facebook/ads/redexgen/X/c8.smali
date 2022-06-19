.class public final Lcom/facebook/ads/redexgen/X/c8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/OL;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/F5;->A01(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/F5;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/F5;)V
    .locals 0

    .line 70701
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/c8;->A00:Lcom/facebook/ads/redexgen/X/F5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ACB()V
    .locals 2

    .line 70702
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c8;->A00:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A04(Lcom/facebook/ads/redexgen/X/F4;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 70703
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c8;->A00:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F5;->A00:Lcom/facebook/ads/redexgen/X/F4;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/F4;->A00(Lcom/facebook/ads/redexgen/X/F4;)Lcom/facebook/ads/redexgen/X/12;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/c8;->A00:Lcom/facebook/ads/redexgen/X/F5;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/F5;->A01:Lcom/facebook/ads/redexgen/X/c2;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/12;->ABV(Lcom/facebook/ads/redexgen/X/c2;)V

    .line 70704
    return-void
.end method
