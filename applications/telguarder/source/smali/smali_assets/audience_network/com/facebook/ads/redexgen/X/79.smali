.class public final Lcom/facebook/ads/redexgen/X/79;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FileDownloaderCallable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static A02:[B


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/7C;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/7D;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/79;->A02()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7D;Lcom/facebook/ads/redexgen/X/7C;)V
    .locals 0

    .line 16090
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/79;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16091
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    .line 16092
    return-void
.end method

.method private final A00()Ljava/lang/Boolean;
    .locals 12

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    return-object v4

    :cond_0
    move-object v3, p0

    .line 16093
    .local p0, "this":Lcom/facebook/ads/redexgen/X/79;
    const v0, 0xf00d

    :try_start_0
    invoke-static {v0}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 16094
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    if-eqz v0, :cond_2

    .line 16095
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/79;->A01(III)Ljava/lang/String;

    move-result-object v9

    .line 16096
    .local v2, "creativeType":Ljava/lang/String;
    :goto_0
    new-instance v5, Lcom/facebook/ads/redexgen/X/06;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/7C;->A08:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v7, v0, Lcom/facebook/ads/redexgen/X/7C;->A07:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v8, v0, Lcom/facebook/ads/redexgen/X/7C;->A06:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v10, v0, Lcom/facebook/ads/redexgen/X/7C;->A02:Ljava/lang/String;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-boolean v11, v0, Lcom/facebook/ads/redexgen/X/7C;->A05:Z

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/06;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16097
    .local v4, "cacheModuleFileData":Lcom/facebook/ads/redexgen/X/06;
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/06;->A04:Ljava/lang/String;

    .line 16098
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7C;->A01:Ljava/lang/Integer;

    iput-object v0, v5, Lcom/facebook/ads/redexgen/X/06;->A02:Ljava/lang/Integer;

    .line 16099
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-boolean v0, v0, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    iput-boolean v0, v5, Lcom/facebook/ads/redexgen/X/06;->A05:Z

    .line 16100
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7G;->A07(Lcom/facebook/ads/redexgen/X/8D;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16101
    invoke-static {}, Lcom/facebook/ads/redexgen/X/7D;->A0A()Ljava/util/Map;

    move-result-object v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A00:Lcom/facebook/ads/redexgen/X/7C;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/7C;->A08:Ljava/lang/String;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16102
    :cond_1
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/79;->A01:Lcom/facebook/ads/redexgen/X/7D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A07(Lcom/facebook/ads/redexgen/X/7D;)Lcom/facebook/ads/redexgen/X/8D;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A00()Lcom/facebook/ads/redexgen/X/Wl;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7D;->A02(Lcom/facebook/ads/redexgen/X/Wl;)Lcom/facebook/ads/redexgen/X/00;

    move-result-object v0

    invoke-interface {v0, v5}, Lcom/facebook/ads/redexgen/X/00;->ADL(Lcom/facebook/ads/redexgen/X/06;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 16103
    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/79;
    :cond_2
    const/4 v2, 0x6

    const/4 v1, 0x5

    const/16 v0, 0x48

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/79;->A01(III)Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 16104
    :goto_1
    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "cacheModuleFileData":Lcom/facebook/ads/redexgen/X/06;
    .end local v2    # "creativeType":Ljava/lang/String;
    :catchall_0
    move-exception v0

    invoke-static {v0, v3}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v4
.end method

.method public static A01(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/79;->A02:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x29

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A02()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/79;->A02:[B

    return-void

    :array_0
    .array-data 1
        -0x22t
        -0x2et
        -0x1dt
        -0x24t
        -0x1at
        -0x1ft
        -0x19t
        -0x26t
        -0x2bt
        -0x2at
        -0x20t
    .end array-data
.end method


# virtual methods
.method public final bridge synthetic call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/ads/redexgen/X/KV;->A02(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    move-object v1, p0

    .line 16105
    .local p0, "this":Lcom/facebook/ads/redexgen/X/79;
    :try_start_0
    invoke-direct {v1}, Lcom/facebook/ads/redexgen/X/79;->A00()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local p0    # "this":Lcom/facebook/ads/redexgen/X/79;
    :catchall_0
    move-exception v0

    invoke-static {v0, v1}, Lcom/facebook/ads/redexgen/X/KV;->A00(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method
