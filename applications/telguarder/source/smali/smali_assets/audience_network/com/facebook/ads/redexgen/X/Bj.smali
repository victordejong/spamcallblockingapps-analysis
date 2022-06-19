.class public final Lcom/facebook/ads/redexgen/X/Bj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Bn;->A05(Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Bn;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Bo;

.field public final synthetic A02:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Bn;Lcom/facebook/ads/redexgen/X/Bo;Ljava/lang/Exception;)V
    .locals 0

    .line 23970
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Bj;->A00:Lcom/facebook/ads/redexgen/X/Bn;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Bj;->A02:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    move-object v2, p0

    .line 23971
    .local p0, "this":Lcom/facebook/ads/redexgen/X/Bj;
    :try_start_0
    iget-object v1, v2, Lcom/facebook/ads/redexgen/X/Bj;->A01:Lcom/facebook/ads/redexgen/X/Bo;

    iget-object v0, v2, Lcom/facebook/ads/redexgen/X/Bj;->A02:Ljava/lang/Exception;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/Bo;->AA1(Ljava/lang/Exception;)V

    .line 23972
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/Bj;
    :catchall_0
    move-exception v0

    invoke-static {v0, v2}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
