.class public final Lcom/facebook/ads/redexgen/X/EV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ee;->A08()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ee;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EV;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ee;)V
    .locals 0

    .line 29483
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/EV;->A01:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x52

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A01()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/EV;->A01:[B

    return-void

    :array_0
    .array-data 1
        0x75t
        0x57t
        0x40t
        0x5dt
        0x5bt
        0x5at
        0x14t
        0x52t
        0x5dt
        0x58t
        0x51t
        0x14t
        0x58t
        0x5bt
        0x55t
        0x50t
        0x5dt
        0x5at
        0x53t
        0x14t
        0x52t
        0x55t
        0x5dt
        0x58t
        0x51t
        0x50t
        0x1at
        0x14t
        0x3ft
        0x27t
        0x3et
        0x3ct
        0x3ft
        0x31t
        0x34t
        0x1dt
        0x31t
        0x3et
        0x31t
        0x37t
        0x35t
        0x22t
    .end array-data
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

    .line 29484
    .local p0, "this":Lcom/facebook/ads/redexgen/X/EV;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Lcom/facebook/ads/redexgen/X/Ee;)Lcom/facebook/ads/redexgen/X/EK;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A0N(Lcom/facebook/ads/redexgen/X/Ee;)[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EK;->A04([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction$Deserializer;)[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    move-result-object v2

    .line 29485
    .local v0, "loadedActions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29486
    .end local v0    # "loadedActions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    :catchall_0
    move-exception v4

    .line 29487
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_1
    const/16 v2, 0x1b

    const/16 v1, 0xf

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EV;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0x1b

    const/16 v0, 0x66

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EV;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29488
    const/4 v0, 0x0

    new-array v2, v0, [Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    .line 29489
    .local v0, "loadedActions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .local v5, "actions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    :goto_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/EV;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A00(Lcom/facebook/ads/redexgen/X/Ee;)Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/EU;

    invoke-direct {v0, v5, v2}, Lcom/facebook/ads/redexgen/X/EU;-><init>(Lcom/facebook/ads/redexgen/X/EV;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 29490
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/EV;
    .end local v0    # "loadedActions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    .end local v5    # "actions":[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;
    :catchall_1
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
