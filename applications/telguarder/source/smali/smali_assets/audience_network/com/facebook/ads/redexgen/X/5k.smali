.class public final Lcom/facebook/ads/redexgen/X/5k;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static A00:Lcom/facebook/ads/redexgen/X/5l;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public static A01:Z

.field public static A02:[B


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 13807
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5k;->A02()V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/ads/redexgen/X/5k;->A01:Z

    .line 13808
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5l;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13809
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/5k;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x12

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
    .locals 6

    .line 13810
    const-class v1, Lcom/facebook/ads/redexgen/X/5k;

    monitor-enter v1

    .line 13811
    :try_start_0
    sget-object v0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5l;

    if-nez v0, :cond_0

    .line 13812
    monitor-exit v1

    return-void

    .line 13813
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13814
    sget-object v0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5l;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5l;->ADF()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 13815
    .local v1, "e":Lcom/facebook/ads/redexgen/X/8f;
    const/4 v0, 0x1

    invoke-virtual {v5, v0}, Lcom/facebook/ads/redexgen/X/8f;->A03(I)V

    .line 13816
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8C;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    .line 13817
    .local v0, "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    if-eqz v0, :cond_1

    .line 13818
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v4

    const/16 v3, 0xd49

    .line 13819
    const/4 v2, 0x0

    const/16 v1, 0x9

    const/16 v0, 0x31

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/5k;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3, v5}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 13820
    :cond_1
    sget-object v0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5l;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/5l;->reset()V

    .line 13821
    return-void

    .line 13822
    .end local v1    # "e":Lcom/facebook/ads/redexgen/X/8f;
    .end local v0    # "sdkContext":Lcom/facebook/ads/redexgen/X/Wl;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/5k;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x5bt
        -0x58t
        -0x4ft
        -0x5at
        -0x55t
        -0x50t
        -0x5ct
        -0x4bt
        -0x52t
    .end array-data
.end method

.method public static A03(J)V
    .locals 3

    .line 13823
    const-wide/16 v1, 0x0

    cmp-long v0, p0, v1

    if-lez v0, :cond_0

    .line 13824
    new-instance v0, Lcom/facebook/ads/redexgen/X/a6;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/a6;-><init>()V

    sput-object v0, Lcom/facebook/ads/redexgen/X/5k;->A00:Lcom/facebook/ads/redexgen/X/5l;

    .line 13825
    new-instance v0, Lcom/facebook/ads/redexgen/X/5m;

    invoke-direct {v0, p0, p1}, Lcom/facebook/ads/redexgen/X/5m;-><init>(J)V

    .line 13826
    :cond_0
    return-void
.end method
