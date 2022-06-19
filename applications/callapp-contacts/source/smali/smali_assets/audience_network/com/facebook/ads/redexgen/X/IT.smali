.class public final Lcom/facebook/ads/redexgen/X/IT;
.super Ljava/io/BufferedOutputStream;
.source ""


# instance fields
.field public A00:Z


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 38438
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38439
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 38440
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 38441
    return-void
.end method


# virtual methods
.method public final A00(Ljava/io/OutputStream;)V
    .locals 1

    .line 38442
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38443
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IT;->out:Ljava/io/OutputStream;

    .line 38444
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IT;->count:I

    .line 38445
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    .line 38446
    return-void
.end method

.method public final close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38447
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    .line 38448
    const/4 v1, 0x0

    .line 38449
    .local p0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IT;->flush()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38450
    :catchall_0
    move-exception v1

    .line 38451
    .local v0, "e":Ljava/lang/Throwable;
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IT;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38452
    :catchall_1
    move-exception v0

    .line 38453
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v1, :cond_0

    .line 38454
    move-object v1, v0

    .line 38455
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    .line 38456
    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/Ic;->A0Z(Ljava/lang/Throwable;)V

    .line 38457
    :cond_1
    return-void
.end method
