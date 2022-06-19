.class public final Lcom/facebook/ads/redexgen/X/4l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/4m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/4m;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/4m;)V
    .locals 0

    .line 12254
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/4l;->A00:Lcom/facebook/ads/redexgen/X/4m;

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

    .line 12255
    .local p0, "this":Lcom/facebook/ads/redexgen/X/4l;
    :try_start_0
    iget-object v2, v3, Lcom/facebook/ads/redexgen/X/4l;->A00:Lcom/facebook/ads/redexgen/X/4m;

    const-wide/16 v0, 0x0

    invoke-static {v2, v0, v1}, Lcom/facebook/ads/redexgen/X/4m;->A00(Lcom/facebook/ads/redexgen/X/4m;J)J

    .line 12256
    iget-object v1, v3, Lcom/facebook/ads/redexgen/X/4l;->A00:Lcom/facebook/ads/redexgen/X/4m;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/4m;->A03(Lcom/facebook/ads/redexgen/X/4m;Z)Z

    .line 12257
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/4l;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
