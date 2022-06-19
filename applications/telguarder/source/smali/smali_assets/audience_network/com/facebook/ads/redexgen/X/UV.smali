.class public final Lcom/facebook/ads/redexgen/X/UV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Ei;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HM;

.field public final A01:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A02:Lcom/facebook/ads/redexgen/X/Th;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hm;

.field public final A04:Lcom/facebook/ads/redexgen/X/IQ;

.field public final A05:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Ej;)V
    .locals 8

    .line 56484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56485
    new-instance v0, Lcom/facebook/ads/redexgen/X/HM;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v6, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/HM;-><init>(Landroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/HM;

    .line 56486
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Ej;->A00()Lcom/facebook/ads/redexgen/X/Hh;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    .line 56487
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/facebook/ads/redexgen/X/Ej;->A01(Z)Lcom/facebook/ads/redexgen/X/Th;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Th;

    .line 56488
    invoke-virtual {p3}, Lcom/facebook/ads/redexgen/X/Ej;->A02()Lcom/facebook/ads/redexgen/X/IQ;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    .line 56489
    new-instance v0, Lcom/facebook/ads/redexgen/X/Hm;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/Hm;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hm;

    .line 56490
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56491
    return-void
.end method


# virtual methods
.method public final A4q()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 56492
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    const/16 v2, -0x3e8

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IQ;->A00(I)V

    .line 56493
    :try_start_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/HM;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/UV;->A02:Lcom/facebook/ads/redexgen/X/Th;

    const/high16 v0, 0x20000

    new-array v6, v0, [B

    iget-object v7, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    const/16 v8, -0x3e8

    iget-object v9, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hm;

    iget-object v10, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    invoke-static/range {v3 .. v11}, Lcom/facebook/ads/redexgen/X/Hn;->A03(Lcom/facebook/ads/redexgen/X/HM;Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/Th;[BLcom/facebook/ads/redexgen/X/IQ;ILcom/facebook/ads/redexgen/X/Hm;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56494
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IQ;->A03(I)V

    .line 56495
    return-void

    .line 56496
    :catchall_0
    move-exception v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/IQ;->A03(I)V

    .line 56497
    throw v1
.end method

.method public final A6G()F
    .locals 6

    .line 56498
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hm;

    iget-wide v4, v0, Lcom/facebook/ads/redexgen/X/Hm;->A01:J

    .line 56499
    .local p0, "contentLength":J
    const-wide/16 v1, -0x1

    cmp-long v0, v4, v1

    if-nez v0, :cond_0

    .line 56500
    const/high16 v1, -0x40800000    # -1.0f

    .line 56501
    :goto_0
    return v1

    .line 56502
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hm;->A00()J

    move-result-wide v2

    long-to-float v1, v2

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr v1, v0

    long-to-float v0, v4

    div-float/2addr v1, v0

    goto :goto_0
.end method

.method public final A6H()J
    .locals 2

    .line 56503
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A03:Lcom/facebook/ads/redexgen/X/Hm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Hm;->A00()J

    move-result-wide v0

    return-wide v0
.end method

.method public final cancel()V
    .locals 2

    .line 56504
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A05:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 56505
    return-void
.end method

.method public final remove()V
    .locals 2

    .line 56506
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A01:Lcom/facebook/ads/redexgen/X/Hh;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/HM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hn;->A02(Lcom/facebook/ads/redexgen/X/HM;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Hn;->A05(Lcom/facebook/ads/redexgen/X/Hh;Ljava/lang/String;)V

    .line 56507
    return-void
.end method
