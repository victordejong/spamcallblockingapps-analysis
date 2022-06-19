.class public final Lcom/facebook/ads/redexgen/X/46;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/El;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/El;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/El;)V
    .locals 0

    .line 10423
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/46;->A00:Lcom/facebook/ads/redexgen/X/El;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 10424
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    if-eqz v0, :cond_0

    .line 10425
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/46;->A00:Lcom/facebook/ads/redexgen/X/El;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/El;->A05:Lcom/facebook/ads/redexgen/X/4G;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4G;->A0D()V

    .line 10426
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/46;->A00:Lcom/facebook/ads/redexgen/X/El;

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/facebook/ads/redexgen/X/El;->A0K:Z

    .line 10427
    return-void
.end method
