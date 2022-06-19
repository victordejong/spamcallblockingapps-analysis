.class public final Lcom/facebook/ads/redexgen/X/TW;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/TU;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/TU;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TU;)V
    .locals 0

    .line 54583
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 5

    .line 54584
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A00(Lcom/facebook/ads/redexgen/X/TU;)I

    .line 54585
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A01(Lcom/facebook/ads/redexgen/X/TU;)J

    move-result-wide v3

    const-wide/16 v1, 0x0

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    .line 54586
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TU;->A01(Lcom/facebook/ads/redexgen/X/TU;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 54587
    :catch_0
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/TU;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/TU;->A0C()V

    .line 54588
    return-void
.end method
