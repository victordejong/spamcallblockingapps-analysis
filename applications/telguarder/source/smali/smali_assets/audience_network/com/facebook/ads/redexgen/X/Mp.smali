.class public final Lcom/facebook/ads/redexgen/X/Mp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/SD;->A0L()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mi;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/SD;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/SD;Lcom/facebook/ads/redexgen/X/Mi;)V
    .locals 0

    .line 44417
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mp;->A01:Lcom/facebook/ads/redexgen/X/SD;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Mp;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 44418
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mp;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mp;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A01()V

    .line 44419
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Mp;->A01:Lcom/facebook/ads/redexgen/X/SD;

    iget-object v1, v0, Lcom/facebook/ads/redexgen/X/Me;->A0A:Lcom/facebook/ads/redexgen/X/Mg;

    sget-object v0, Lcom/facebook/ads/redexgen/X/29;->A05:Lcom/facebook/ads/redexgen/X/29;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Mg;->AAp(Lcom/facebook/ads/redexgen/X/29;)V

    .line 44420
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Mp;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
