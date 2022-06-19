.class public final Lcom/facebook/ads/redexgen/X/6w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/6x;->A02(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/6x;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/6x;)V
    .locals 0

    .line 15691
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/6w;->A00:Lcom/facebook/ads/redexgen/X/6x;

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

    .line 15692
    .local p0, "this":Lcom/facebook/ads/redexgen/X/6w;
    :try_start_0
    iget-object v0, v1, Lcom/facebook/ads/redexgen/X/6w;->A00:Lcom/facebook/ads/redexgen/X/6x;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/6x;->A03()V

    .line 15693
    return-void
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/6w;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KT;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
