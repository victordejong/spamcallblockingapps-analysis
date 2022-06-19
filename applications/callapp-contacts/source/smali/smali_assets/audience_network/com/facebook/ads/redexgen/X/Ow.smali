.class public final Lcom/facebook/ads/redexgen/X/Ow;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Oz;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/Ox;Lcom/facebook/ads/redexgen/X/Oy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Oz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Oz;)V
    .locals 0

    .line 47314
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ow;->A00:Lcom/facebook/ads/redexgen/X/Oz;

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

    .line 47315
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Ow;
    .local v0, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ow;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A01(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Oy;

    move-result-object v1

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Ow;->A00:Lcom/facebook/ads/redexgen/X/Oz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Oz;->A00(Lcom/facebook/ads/redexgen/X/Oz;)Lcom/facebook/ads/redexgen/X/Ox;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Oy;->ABl(Lcom/facebook/ads/redexgen/X/Ox;)V

    .line 47316
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Ow;
    .end local v0    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
