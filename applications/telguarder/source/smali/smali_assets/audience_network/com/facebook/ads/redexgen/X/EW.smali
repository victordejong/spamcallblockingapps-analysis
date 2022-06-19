.class public final Lcom/facebook/ads/redexgen/X/EW;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ee;->A0B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ee;

.field public final synthetic A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/EW;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ee;[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V
    .locals 0

    .line 29491
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/EW;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/EW;->A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/EW;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x6

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

    const/16 v0, 0x29

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/EW;->A02:[B

    return-void

    :array_0
    .array-data 1
        0x29t
        0x2t
        0x1at
        0x3t
        0x1t
        0x2t
        0xct
        0x9t
        0x20t
        0xct
        0x3t
        0xct
        0xat
        0x8t
        0x1ft
        0x1dt
        0x28t
        0x3ft
        0x3et
        0x24t
        0x3et
        0x39t
        0x24t
        0x23t
        0x2at
        0x6dt
        0x2ct
        0x2et
        0x39t
        0x24t
        0x22t
        0x23t
        0x3et
        0x6dt
        0x2bt
        0x2ct
        0x24t
        0x21t
        0x28t
        0x29t
        0x63t
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

    .line 29492
    .local p0, "this":Lcom/facebook/ads/redexgen/X/EW;
    :try_start_0
    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/EW;->A00:Lcom/facebook/ads/redexgen/X/Ee;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ee;->A01(Lcom/facebook/ads/redexgen/X/Ee;)Lcom/facebook/ads/redexgen/X/EK;

    move-result-object v1

    iget-object v0, v5, Lcom/facebook/ads/redexgen/X/EW;->A01:[Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/EK;->A03([Lcom/facebook/ads/internal/exoplayer2/offline/DownloadAction;)V

    goto :goto_0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29493
    :catch_0
    move-exception v4

    .line 29494
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const/4 v2, 0x0

    const/16 v1, 0xf

    const/16 v0, 0x6b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EW;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0xf

    const/16 v1, 0x1a

    const/16 v0, 0x4b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/EW;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 29495
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/EW;
    :catchall_0
    move-exception v0

    invoke-static {v0, v5}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
