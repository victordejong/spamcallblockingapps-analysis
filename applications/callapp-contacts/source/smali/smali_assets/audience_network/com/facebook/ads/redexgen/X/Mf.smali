.class public final Lcom/facebook/ads/redexgen/X/Mf;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Mi;->A01(Lcom/facebook/ads/redexgen/X/Mh;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Mi;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Mi;)V
    .locals 0

    .line 44138
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Mf;->A00:Lcom/facebook/ads/redexgen/X/Mi;

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

    .line 44139
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Mf;
    .local v1, "view":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mf;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A03(Lcom/facebook/ads/redexgen/X/Mi;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44140
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mf;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A02(Lcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A43()V

    goto :goto_0

    .line 44141
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Mf;
    :cond_1
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/Mf;->A00:Lcom/facebook/ads/redexgen/X/Mi;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Mi;->A02(Lcom/facebook/ads/redexgen/X/Mi;)Lcom/facebook/ads/redexgen/X/Ml;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/Ml;->A44()V

    .line 44142
    :goto_0
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "view":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
