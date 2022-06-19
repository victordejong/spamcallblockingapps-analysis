.class public final Lcom/facebook/ads/redexgen/X/NT;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/NU;->onMainAssetLoaded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/NU;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/NV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/NU;Lcom/facebook/ads/redexgen/X/NV;)V
    .locals 0

    .line 45151
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NT;->A00:Lcom/facebook/ads/redexgen/X/NU;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/NT;->A01:Lcom/facebook/ads/redexgen/X/NV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KT;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v1, p0

    .line 45152
    .local p0, "this":Lcom/facebook/ads/redexgen/X/NT;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/NT;->A01:Lcom/facebook/ads/redexgen/X/NV;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/NV;->A9R()V

    .line 45153
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/NT;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
