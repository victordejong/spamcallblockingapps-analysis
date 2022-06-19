.class public final Lcom/facebook/ads/redexgen/X/Pb;
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

    .line 48454
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 48455
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Pb;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A02(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    if-nez v0, :cond_1

    .line 48456
    return-void

    .line 48457
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 48458
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A01(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/JK;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/JJ;->A0m:Lcom/facebook/ads/redexgen/X/JJ;

    const/4 v0, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JK;->A02(Lcom/facebook/ads/redexgen/X/JJ;Ljava/util/Map;)V

    .line 48459
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Pb;
    :cond_2
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A00(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->A0B()Lcom/facebook/ads/redexgen/X/0R;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/0R;->A2t()V

    .line 48460
    sget-object v1, Lcom/facebook/ads/redexgen/X/Pc;->A00:[I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A03(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Oj;->getState()Lcom/facebook/ads/redexgen/X/Q6;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q6;->ordinal()I

    move-result v0

    aget v1, v1, v0

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    goto :goto_0

    .line 48461
    :cond_3
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A04(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PJ;->A05:Lcom/facebook/ads/redexgen/X/PJ;

    const/16 v0, 0xc

    .line 48462
    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0Z(Lcom/facebook/ads/redexgen/X/PJ;I)V

    goto :goto_1

    .line 48463
    :goto_0
    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    const/4 v0, 0x3

    if-eq v1, v0, :cond_3

    const/4 v0, 0x4

    if-eq v1, v0, :cond_3

    const/4 v0, 0x5

    if-eq v1, v0, :cond_4

    .line 48464
    :goto_1
    return-void

    .line 48465
    :cond_4
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/Pb;->A00:Lcom/facebook/ads/redexgen/X/7L;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7L;->A05(Lcom/facebook/ads/redexgen/X/7L;)Lcom/facebook/ads/redexgen/X/Oj;

    move-result-object v1

    const/16 v0, 0x8

    invoke-virtual {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/Oj;->A0c(ZI)V

    goto :goto_1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48466
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
