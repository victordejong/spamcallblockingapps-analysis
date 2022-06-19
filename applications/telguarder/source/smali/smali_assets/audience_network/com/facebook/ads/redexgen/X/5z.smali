.class public final Lcom/facebook/ads/redexgen/X/5z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IntervalRunnable"
.end annotation


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/6f;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zw;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zw;Lcom/facebook/ads/redexgen/X/6f;)V
    .locals 0

    .line 14286
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/5z;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14287
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/5z;->A00:Lcom/facebook/ads/redexgen/X/6f;

    .line 14288
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

    .line 14289
    .local p0, "this":Lcom/facebook/ads/redexgen/X/5z;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/5z;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zw;->A01(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/6Q;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/6h;->A03:Lcom/facebook/ads/redexgen/X/6h;

    iget-object v1, v5, Lcom/facebook/ads/redexgen/X/5z;->A00:Lcom/facebook/ads/redexgen/X/6f;

    const/4 v0, 0x0

    invoke-virtual {v3, v2, v1, v0}, Lcom/facebook/ads/redexgen/X/6Q;->A04(Lcom/facebook/ads/redexgen/X/6h;Lcom/facebook/ads/redexgen/X/6f;Ljava/lang/String;)V

    .line 14290
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/5z;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zw;->A02(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/73;

    move-result-object v4

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/5z;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    .line 14291
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zw;->A03(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/74;

    move-result-object v3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/5z;->A01:Lcom/facebook/ads/redexgen/X/Zw;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zw;->A00(Lcom/facebook/ads/redexgen/X/Zw;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0U()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    .line 14292
    invoke-virtual {v4, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/73;->A02(Lcom/facebook/ads/redexgen/X/74;J)Z

    .line 14293
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/5z;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
