.class public final Lcom/facebook/ads/redexgen/X/IT;
.super Ljava/io/BufferedOutputStream;
.source ""


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public A00:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/IT;->A00()V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    .line 38578
    invoke-direct {p0, p1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 38579
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 0

    .line 38580
    invoke-direct {p0, p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 38581
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "EpFDbCBJudv4B9iJmfxonRHIU1U5m1jf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "3rqKbwPqdzacu9WGKgXtzAzrp683XlIR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NfZaT6vfcL6K6I8gp0mchudFqfTk6lgI"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "FaOzvS7bBLiKU5nIVSvk5DxD01nkDJDu"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "VuhM6ysoc3ej20jT7NoPpTDMbUKUqppa"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "6bnWTwa6gvTNvbszgQ0ctpJFGcrI8Bm3"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5ZM8ygBWpLt42qLkcYdHPlUHOZgFXN5k"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "DUVElHUho4xQYTCUd3OtWvefiPZcqlbG"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/IT;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A01(Ljava/io/OutputStream;)V
    .locals 1

    .line 38582
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Hx;->A04(Z)V

    .line 38583
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/IT;->out:Ljava/io/OutputStream;

    .line 38584
    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/ads/redexgen/X/IT;->count:I

    .line 38585
    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    .line 38586
    return-void
.end method

.method public final close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38587
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/IT;->A00:Z

    .line 38588
    const/4 v3, 0x0

    .line 38589
    .local p0, "thrown":Ljava/lang/Throwable;
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/IT;->flush()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38590
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/IT;->A01:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x19

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x50

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 38591
    .local v0, "e":Ljava/lang/Throwable;
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/IT;->A01:[Ljava/lang/String;

    const-string v1, "Pl3UboAdXJa4YzcfSRBTG3m7VP3hW76k"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    .line 38592
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/IT;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    goto :goto_1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 38593
    :catchall_1
    move-exception v0

    .line 38594
    .restart local v0    # "e":Ljava/lang/Throwable;
    if-nez v3, :cond_1

    .line 38595
    move-object v3, v0

    .line 38596
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 38597
    invoke-static {v3}, Lcom/facebook/ads/redexgen/X/Ic;->A0Z(Ljava/lang/Throwable;)V

    .line 38598
    :cond_2
    return-void
.end method
