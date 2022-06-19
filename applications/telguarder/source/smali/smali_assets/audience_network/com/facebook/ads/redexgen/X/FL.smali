.class public final Lcom/facebook/ads/redexgen/X/FL;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/FP;->A06()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/FP;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/FS;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/FP;Lcom/facebook/ads/redexgen/X/FS;)V
    .locals 0

    .line 32467
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/FL;->A01:Lcom/facebook/ads/redexgen/X/FS;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v3, p0

    .line 32468
    .local p0, "this":Lcom/facebook/ads/redexgen/X/FL;
    :try_start_0
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/FL;->A01:Lcom/facebook/ads/redexgen/X/FS;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget v1, v0, Lcom/facebook/ads/redexgen/X/FP;->A00:I

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/FL;->A00:Lcom/facebook/ads/redexgen/X/FP;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/FP;->A01:Lcom/facebook/ads/redexgen/X/FC;

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/FS;->ABM(ILcom/facebook/ads/redexgen/X/FC;)V

    .line 32469
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/FL;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
