.class public final Lcom/facebook/ads/redexgen/X/M8;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ck;->setUpSkipDialog(Lcom/facebook/ads/redexgen/X/ci;Lcom/facebook/ads/redexgen/X/MT;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ci;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/ck;

.field public final synthetic A02:Lcom/facebook/ads/redexgen/X/MT;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ck;Lcom/facebook/ads/redexgen/X/MT;Lcom/facebook/ads/redexgen/X/ci;)V
    .locals 0

    .line 43558
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/M8;->A01:Lcom/facebook/ads/redexgen/X/ck;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/M8;->A02:Lcom/facebook/ads/redexgen/X/MT;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/M8;->A00:Lcom/facebook/ads/redexgen/X/ci;

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

    .line 43559
    .local p0, "this":Lcom/facebook/ads/redexgen/X/M8;
    .local v1, "v":Landroid/view/View;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/M8;->A02:Lcom/facebook/ads/redexgen/X/MT;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/MT;->A9M()V

    .line 43560
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/M8;->A00:Lcom/facebook/ads/redexgen/X/ci;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ci;->hide()V

    .line 43561
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/M8;
    .end local v1    # "v":Landroid/view/View;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
