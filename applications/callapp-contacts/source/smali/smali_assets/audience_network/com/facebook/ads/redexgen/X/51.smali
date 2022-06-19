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

    .line 12711
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12712
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/51;->A01:Lcom/facebook/ads/AudienceNetworkActivity;

    .line 12713
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    .line 12714
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    .line 12715
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

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x47

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

    const/16 v0, 0x31

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/51;->A04:[B

    return-void

    :array_0
    .array-data 1
        0xct
        0x8t
        0x7t
        0x3bt
        0x2at
        0x2ft
        0x2bt
        0x34t
        0x29t
        0x2bt
        0x14t
        0x2bt
        0x3at
        0x3dt
        0x35t
        0x38t
        0x31t
        0x13t
        0x2ct
        0x23t
        0x36t
        0x2et
        0x23t
        0x21t
        0x32t
        0x23t
        0x22t
        -0x22t
        0x23t
        0x36t
        0x21t
        0x23t
        0x2et
        0x32t
        0x27t
        0x2dt
        0x2ct
        -0x14t
        -0x46t
        -0x39t
        -0x48t
        -0x46t
        -0x44t
        -0x33t
        -0x3et
        -0x31t
        -0x3et
        -0x33t
        -0x2et
    .end array-data
.end method

.method public static A02()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "kVVxbIvKBpFLpNMn249evg7U1t5DMrkR"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "HNBIISUKPJt5lzvo"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "tha"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "s0U2IqORDUirQkjYFZUhzDbmHPDS66DK"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "4XQ6Ra6x1CsG5mP0jlsGo4Oc8x5GsOh7"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "mYQ1yQiLRLlGaSwEYEmmcgt3b9ncmm6M"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "URRMMekVjcz4ECsO2XmiMnA4WEVCe5QQ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "lW2qNIOuJVr9bvm7hZsN45J1F7Bnv3JY"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    return-void
.end method

.method private A03(Ljava/lang/Throwable;)V
    .locals 6

    .line 12716
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    .line 12717
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0K()V

    .line 12718
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->finish(I)V

    .line 12719
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->A0J()Lcom/facebook/ads/redexgen/X/XJ;

    move-result-object v0

    .line 12720
    .local p0, "logContext":Lcom/facebook/ads/redexgen/X/8D;
    if-eqz v0, :cond_0

    .line 12721
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A04:I

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, p1}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/Throwable;)V

    .line 12722
    const/16 v2, 0x26

    const/16 v1, 0xb

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 12723
    :goto_0
    return-void

    .line 12724
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0x11

    const/16 v0, 0x7f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v5

    const/16 v4, 0x11

    const/16 v3, 0x15

    sget-object v1, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v1, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x30

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "roakWe6n8CepWvGQKms2st32sM0MtJhe"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const/16 v0, 0x77

    invoke-static {v4, v3, v0}, Lcom/facebook/ads/redexgen/X/51;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public final finish(I)V
    .locals 1

    .line 12725
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->finish(I)V

    .line 12726
    return-void
.end method

.method public final onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 12727
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12728
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 12729
    return-void

    .line 12730
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/50;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12731
    :catchall_0
    move-exception v0

    .line 12732
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12733
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1, p2, p3}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 12734
    return-void
.end method

.method public final onBackPressed()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12735
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12736
    return-void

    .line 12737
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onBackPressed()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12738
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 12739
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "o2QAVIvbVP3X0FiUaWNt1f6t7dHcTRBl"

    const/4 v0, 0x7

    aput-object v1, v2, v0

    const-string v1, "vmYtMIbIQwew4451MpW2UPrO9wIbxS87"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12740
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12741
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12742
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12743
    return-void

    .line 12744
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12745
    :catchall_0
    move-exception v0

    .line 12746
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12747
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 12748
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12749
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onCreate(Landroid/os/Bundle;)V

    .line 12750
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12751
    :catchall_0
    move-exception v0

    .line 12752
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12753
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onDestroy()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12754
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12755
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 12756
    return-void

    .line 12757
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onDestroy()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12758
    :catchall_0
    move-exception v0

    .line 12759
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12760
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onDestroy()V

    .line 12761
    return-void
.end method

.method public final onPause()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12762
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12763
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 12764
    return-void

    .line 12765
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onPause()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12766
    :catchall_0
    move-exception v0

    .line 12767
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12768
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onPause()V

    .line 12769
    return-void
.end method

.method public final onResume()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12770
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onResume()V

    .line 12771
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12772
    return-void

    .line 12773
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onResume()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12774
    :catchall_0
    move-exception v0

    .line 12775
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12776
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12777
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 12778
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12779
    return-void

    .line 12780
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12781
    :catchall_0
    move-exception v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v2, v2, v0

    const/16 v0, 0x18

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    .line 12782
    .local p0, "t":Ljava/lang/Throwable;
    sget-object v2, Lcom/facebook/ads/redexgen/X/51;->A05:[Ljava/lang/String;

    const-string v1, "46sQaeWUXFUhhsRkoBzMlxezgaVtku4l"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12783
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final onStart()V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .line 12784
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStart()V

    .line 12785
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12786
    return-void

    .line 12787
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onStart()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12788
    :catchall_0
    move-exception v0

    .line 12789
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12790
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

    .line 12791
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onStop()V

    .line 12792
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12793
    return-void

    .line 12794
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/50;->onStop()V

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12795
    :catchall_0
    move-exception v0

    .line 12796
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12797
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

    .line 12798
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/51;->A00:Z

    if-eqz v0, :cond_0

    .line 12799
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 12800
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A03:Lcom/facebook/ads/redexgen/X/50;

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/50;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12801
    :catchall_0
    move-exception v0

    .line 12802
    .local p0, "t":Ljava/lang/Throwable;
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/51;->A03(Ljava/lang/Throwable;)V

    .line 12803
    .end local p0    # "t":Ljava/lang/Throwable;
    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/51;->A02:Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;

    invoke-interface {v0, p1}, Lcom/facebook/ads/internal/api/AudienceNetworkActivityApi;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
