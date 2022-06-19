.class public final Lcom/facebook/ads/redexgen/X/Rc;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Oe;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rb;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rb;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rb;)V
    .locals 0

    .line 50307
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAV()V
    .locals 3

    .line 50308
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A04(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0L:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 50309
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A02(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A4v()V

    .line 50310
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rc;->A00:Lcom/facebook/ads/redexgen/X/Rb;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rb;->A09(Lcom/facebook/ads/redexgen/X/Rb;)Lcom/facebook/ads/redexgen/X/ON;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ON;->A0V()V

    .line 50311
    return-void
.end method
