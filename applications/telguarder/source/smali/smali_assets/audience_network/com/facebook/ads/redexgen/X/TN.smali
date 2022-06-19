.class public final Lcom/facebook/ads/redexgen/X/TN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/PG;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TH;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TH;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TH;)V
    .locals 0

    .line 53984
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AC1()V
    .locals 2

    .line 53985
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A07(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53986
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53987
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TN;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A08(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/JT;->AB3(Z)V

    .line 53988
    :cond_0
    return-void
.end method
