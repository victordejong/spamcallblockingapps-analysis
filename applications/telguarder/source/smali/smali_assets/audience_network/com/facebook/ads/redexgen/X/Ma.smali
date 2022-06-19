.class public final Lcom/facebook/ads/redexgen/X/Ma;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Md;->A01(Lcom/facebook/ads/redexgen/X/Mc;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Md;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Md;)V
    .locals 0

    .line 44092
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Md;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 44093
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ma;
    .local v1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Md;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Md;->A03(Lcom/facebook/ads/redexgen/X/Md;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44094
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Md;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Md;->A02(Lcom/facebook/ads/redexgen/X/Md;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mg;->A3z()V

    goto :goto_0

    .line 44095
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ma;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Ma;->A00:Lcom/facebook/ads/redexgen/X/Md;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Md;->A02(Lcom/facebook/ads/redexgen/X/Md;)Lcom/facebook/ads/redexgen/X/Mg;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Mg;->A40()V

    .line 44096
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
