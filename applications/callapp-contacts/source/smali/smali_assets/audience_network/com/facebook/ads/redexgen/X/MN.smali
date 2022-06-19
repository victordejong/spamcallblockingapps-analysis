.class public final Lcom/facebook/ads/redexgen/X/MN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ah;->A0N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/MI;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ah;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ah;Lcom/facebook/ads/redexgen/X/MI;)V
    .locals 0

    .line 43847
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/ah;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/MN;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 43848
    .local p0, "this":Lcom/facebook/ads/redexgen/X/MN;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MN;->A00:Lcom/facebook/ads/redexgen/X/MI;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 43849
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A03(Lcom/facebook/ads/redexgen/X/ah;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 43850
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A09(Lcom/facebook/ads/redexgen/X/ah;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 43851
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/MN;->A01:Lcom/facebook/ads/redexgen/X/ah;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ah;->A0Z(Lcom/facebook/ads/redexgen/X/ah;)V

    .line 43852
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/MN;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
