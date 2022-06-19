.class public final Lcom/facebook/ads/redexgen/X/N0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/N1;->A02()Landroid/view/ViewGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/2B;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Mn;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/N1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/N1;Lcom/facebook/ads/redexgen/X/Mn;Lcom/facebook/ads/redexgen/X/2B;)V
    .locals 0

    .line 44509
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/N1;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/N0;->A01:Lcom/facebook/ads/redexgen/X/Mn;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/N0;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 44510
    .local p0, "this":Lcom/facebook/ads/redexgen/X/N0;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/N0;->A01:Lcom/facebook/ads/redexgen/X/Mn;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mn;->A01()V

    .line 44511
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/N0;->A02:Lcom/facebook/ads/redexgen/X/N1;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/N1;->A03(Lcom/facebook/ads/redexgen/X/N1;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/N0;->A00:Lcom/facebook/ads/redexgen/X/2B;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Ml;->AAy(Lcom/facebook/ads/redexgen/X/2B;)V

    .line 44512
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/N0;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
