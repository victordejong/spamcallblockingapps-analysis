.class public final Lcom/facebook/ads/redexgen/X/O2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/9m;->A07()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/9m;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9m;)V
    .locals 0

    .line 46131
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

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

    .line 46132
    .local p0, "this":Lcom/facebook/ads/redexgen/X/O2;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/9m;->A0H(Lcom/facebook/ads/redexgen/X/9m;Z)Z

    .line 46133
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A01(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46134
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A01(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/M4;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0O(Landroid/view/View;)V

    .line 46135
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/O2;
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A03(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 46136
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A05(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/IB;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 46137
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Ym;->getAdDetailsView()Lcom/facebook/ads/redexgen/X/Nf;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 46138
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A00(Lcom/facebook/ads/redexgen/X/9m;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M(Landroid/view/View;)V

    .line 46139
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/O2;->A00:Lcom/facebook/ads/redexgen/X/9m;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9m;->A03(Lcom/facebook/ads/redexgen/X/9m;)Lcom/facebook/ads/redexgen/X/PD;

    move-result-object v2

    sget-object v1, Lcom/facebook/ads/redexgen/X/PO;->A03:Lcom/facebook/ads/redexgen/X/PO;

    const/16 v0, 0xe

    invoke-virtual {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/PD;->A0Y(Lcom/facebook/ads/redexgen/X/PO;I)V

    .line 46140
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
