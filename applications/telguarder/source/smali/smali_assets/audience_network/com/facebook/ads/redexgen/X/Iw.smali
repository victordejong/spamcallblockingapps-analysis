.class public final Lcom/facebook/ads/redexgen/X/Iw;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Iz;->A01(IIIF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:F

.field public final synthetic A01:I

.field public final synthetic A02:I

.field public final synthetic A03:I

.field public final synthetic A04:Lcom/facebook/ads/redexgen/X/Iz;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Iz;IIIF)V
    .locals 0

    .line 39228
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Iw;->A04:Lcom/facebook/ads/redexgen/X/Iz;

    iput p2, p0, Lcom/facebook/ads/redexgen/X/Iw;->A03:I

    iput p3, p0, Lcom/facebook/ads/redexgen/X/Iw;->A01:I

    iput p4, p0, Lcom/facebook/ads/redexgen/X/Iw;->A02:I

    iput p5, p0, Lcom/facebook/ads/redexgen/X/Iw;->A00:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v5, p0

    .line 39229
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Iw;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/Iw;->A04:Lcom/facebook/ads/redexgen/X/Iz;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Iz;->A00(Lcom/facebook/ads/redexgen/X/Iz;)Lcom/facebook/ads/redexgen/X/J0;

    move-result-object v4

    iget v3, v5, Lcom/facebook/ads/redexgen/X/Iw;->A03:I

    iget v2, v5, Lcom/facebook/ads/redexgen/X/Iw;->A01:I

    iget v1, v5, Lcom/facebook/ads/redexgen/X/Iw;->A02:I

    iget v0, v5, Lcom/facebook/ads/redexgen/X/Iw;->A00:F

    invoke-interface {v4, v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/J0;->AC7(IIIF)V

    .line 39230
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Iw;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
