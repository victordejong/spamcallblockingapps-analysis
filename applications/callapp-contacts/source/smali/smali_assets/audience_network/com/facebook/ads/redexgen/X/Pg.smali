.class public final Lcom/facebook/ads/redexgen/X/Pg;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/7L;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7L;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7L;)V
    .locals 0

    .line 48419
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 48420
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Pg;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48421
    return-void

    .line 48422
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48423
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/JJ;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JI;->A0l:Lcom/facebook/ads/redexgen/X/JI;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JJ;->A03(Lcom/facebook/ads/redexgen/X/JI;Ljava/util/Map;)V

    .line 48424
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Pg;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/XJ;->A0A()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2x()V

    .line 48425
    sget-object v1, Lcom/facebook/ads/redexgen/X/Ph;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getState()Lcom/facebook/ads/redexgen/X/QB;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QB;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 48426
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A05:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0xc

    .line 48427
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    goto :goto_1

    .line 48428
    :goto_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 48429
    :goto_1
    return-void

    .line 48430
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pg;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0b(ZI)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48431
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
