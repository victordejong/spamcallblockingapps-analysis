.class public final Lcom/facebook/ads/redexgen/X/51;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;


# static fields
.field public static A04:[B

.field public static A05:[Ljava/lang/String;


# instance fields
.field public A00:Z

.field public final A01:Lcom/facebook/ads/AudienceNetworkActivity;

.field public final A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

.field public final A03:Lcom/facebook/ads/redexgen/X/50;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/51;->A02()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/51;->A01()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/AudienceNetworkActivity;Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;Lcom/facebook/ads/redexgen/X/50;)V
    .locals 0

    .line 12803
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12804
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/51;->A01:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12805
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 12806
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    .line 12807
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/51;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    xor-int/lit8 v0, v0, 0x29

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
    .locals 4

    const/16 v0, 0x31

    new-array v3, v0, [B

    sget-object v1, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_0

    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "H3o2ukg7PoWSfztBPt1oK5BMl3p36c0G"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "tZaZcqIYCt5A5bsZPeypVNujsThHJ9sw"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    fill-array-data v3, :array_0

    sput-object v3, Lcom/facebook/ads/redexgen/X/51;->A04:[B

    return-void

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    nop

    :array_0
    .array-data 1
        0x65t
        0x61t
        0x62t
        0x56t
        0x47t
        0x4at
        0x46t
        0x4dt
        0x40t
        0x46t
        0x6dt
        0x46t
        0x57t
        0x54t
        0x4ct
        0x51t
        0x48t
        0x13t
        0x28t
        0x23t
        0x3et
        0x36t
        0x23t
        0x25t
        0x32t
        0x23t
        0x22t
        0x66t
        0x23t
        0x3et
        0x25t
        0x23t
        0x36t
        0x32t
        0x2ft
        0x29t
        0x28t
        0x68t
        0x3ct
        0x33t
        0x2t
        0x3ct
        0x3et
        0x29t
        0x34t
        0x2bt
        0x34t
        0x29t
        0x24t
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "npa5fyfDyBgpHwGfwNiqfHEj4F8LEiZf"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "OqeETugh9"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "5goSJATWOcVItDjddk"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "82BqGjCZsQ5KSOXOW0A0KlOfyUV9N54d"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "DC8qTi6RH4AT7G9O"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9IwTeKuU2aT5NbzWtfQwCWqg5E0PczVH"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "CnGxzoUQk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "OIUpXP34AuomSZv"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/lang/Throwable;)V
    .locals 6

    .line 12808
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    .line 12809
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12810
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->finish(I)V

    .line 12811
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0J()Lcom/facebook/ads/redexgen/X/Wm;

    move-result-object v0

    .line 12812
    .local p0, "logContext":Lcom/facebook/ads/redexgen/X/8D;
    if-eqz v0, :cond_0

    .line 12813
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A04:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 12814
    const/16 v2, 0x26

    const/16 v1, 0xb

    const/16 v0, 0x74

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8X(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 12815
    :goto_0
    return-void

    .line 12816
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0xa

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x11

    const/16 v1, 0x15

    const/16 v0, 0x6f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final finish(I)V
    .locals 1

    .line 12817
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12818
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 12819
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12820
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 12821
    return-void

    .line 12822
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/50;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12823
    :catchall_0
    move-exception v0

    .line 12824
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12825
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 12826
    return-void
.end method

.method public final onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12827
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12828
    return-void

    .line 12829
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onBackPressed()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12830
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v1, v0

    const/4 v0, 0x6

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x49

    if-eq v1, v0, :cond_1

    .line 12831
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "nPADpKrXuoueUGX"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "T13akIzntQNSUZag"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12832
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12833
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12834
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12835
    return-void

    .line 12836
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12837
    :catchall_0
    move-exception v0

    .line 12838
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12839
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 12840
    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "Q1wJ3SQKEGYG95X"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "AvO5pGxADzIyCHUj"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12841
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    .line 12842
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12843
    :catchall_0
    move-exception v0

    .line 12844
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12845
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12846
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12847
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 12848
    return-void

    .line 12849
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onDestroy()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12850
    :catchall_0
    move-exception v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x2

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xc

    if-eq v1, v0, :cond_1

    .line 12851
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "3CPJLXRae2337PFMI"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12852
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 12853
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onPause()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12854
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12855
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 12856
    return-void

    .line 12857
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onPause()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12858
    :catchall_0
    move-exception v0

    .line 12859
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12860
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 12861
    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12862
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    .line 12863
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12864
    return-void

    .line 12865
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onResume()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12866
    :catchall_0
    move-exception v0

    .line 12867
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12868
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12869
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 12870
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12871
    return-void

    .line 12872
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12873
    :catchall_0
    move-exception v0

    .line 12874
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12875
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onStart()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12876
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    .line 12877
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12878
    return-void

    .line 12879
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onStart()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12880
    :catchall_0
    move-exception v0

    .line 12881
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12882
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onStop()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12883
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    .line 12884
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12885
    return-void

    .line 12886
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onStop()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12887
    :catchall_0
    move-exception v0

    .line 12888
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12889
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12890
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12891
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 12892
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12893
    :catchall_0
    move-exception v0

    .line 12894
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12895
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
