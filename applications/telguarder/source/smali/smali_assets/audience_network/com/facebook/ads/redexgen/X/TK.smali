.class public final Lcom/facebook/ads/redexgen/X/TK;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NW;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TH;->A0J(Lcom/facebook/ads/redexgen/X/T6;Lcom/facebook/ads/redexgen/X/JT;)V
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

    .line 53960
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAI(Z)V
    .locals 1

    .line 53961
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A08(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 53962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A07(Lcom/facebook/ads/redexgen/X/TH;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 53963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TK;->A00:Lcom/facebook/ads/redexgen/X/TH;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TH;->A00(Lcom/facebook/ads/redexgen/X/TH;)Lcom/facebook/ads/redexgen/X/JT;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/JT;->AB3(Z)V

    .line 53964
    :cond_0
    return-void
.end method
