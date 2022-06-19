.class public final Lcom/facebook/ads/redexgen/X/bb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/KF;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/Ey;,
        Lcom/facebook/ads/redexgen/X/1p;
    }
.end annotation


# static fields
.field public static A0E:[B

.field public static A0F:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/1p;

.field public A01:Lcom/facebook/ads/redexgen/X/8w;

.field public A02:Ljava/lang/String;

.field public A03:Z

.field public final A04:I

.field public final A05:Landroid/os/Handler;

.field public final A06:Lcom/facebook/ads/AdSize;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/0s;

.field public final A08:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A09:Lcom/facebook/ads/redexgen/X/JC;

.field public final A0A:Lcom/facebook/ads/redexgen/X/Jt;

.field public final A0B:Lcom/facebook/ads/redexgen/X/KG;

.field public final A0C:Ljava/lang/Runnable;

.field public final A0D:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    .line 69824
    invoke-static {}, Lcom/facebook/ads/redexgen/X/bb;->A06()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bb;->A05()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Ll;->A02()V

    .line 69825
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;Lcom/facebook/ads/AdSize;I)V
    .locals 2
    .param p4    # Lcom/facebook/ads/AdSize;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 69826
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69827
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69828
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Ljava/lang/String;

    .line 69829
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/Jt;

    .line 69830
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Lcom/facebook/ads/AdSize;

    .line 69831
    iput p5, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:I

    .line 69832
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v0, Lcom/facebook/ads/redexgen/X/KG;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/KG;-><init>(Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/KG;

    .line 69833
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/KG;

    invoke-virtual {v0, p0}, Lcom/facebook/ads/redexgen/X/KG;->A0Q(Lcom/facebook/ads/redexgen/X/KF;)V

    .line 69834
    new-instance v0, Lcom/facebook/ads/redexgen/X/0s;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/0s;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/0s;

    .line 69835
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    .line 69836
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Landroid/os/Handler;

    .line 69837
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ey;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ey;-><init>(Lcom/facebook/ads/redexgen/X/bb;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Ljava/lang/Runnable;

    .line 69838
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 69839
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoaderFactory;->makeLoader(Landroid/content/Context;)Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/internal/dynamicloading/DynamicLoader;->getInitApi()Lcom/facebook/ads/internal/api/InitApi;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-interface {v1, v0}, Lcom/facebook/ads/internal/api/InitApi;->onAdLoadInvoked(Landroid/content/Context;)V

    .line 69840
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/bb;)Landroid/os/Handler;
    .locals 0

    .line 69841
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/bb;)Lcom/facebook/ads/redexgen/X/Wm;
    .locals 0

    .line 69842
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/bb;)Ljava/lang/Runnable;
    .locals 0

    .line 69843
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static A03(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bb;->A0E:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x51

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method private A04()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/c9;",
            ">;"
        }
    .end annotation

    .line 69844
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/8w;

    .line 69845
    .local p0, "currentPlacement":Lcom/facebook/ads/redexgen/X/8w;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v4

    .line 69846
    .local v2, "placementAd":Lcom/facebook/ads/redexgen/X/8u;
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A03()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69847
    .local v4, "validAdapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :goto_0
    if-eqz v4, :cond_1

    .line 69848
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A07:Lcom/facebook/ads/redexgen/X/0s;

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/0s;->A01(Lcom/facebook/ads/internal/protocol/AdPlacementType;)Lcom/facebook/ads/redexgen/X/0n;

    move-result-object v5

    .line 69849
    .local v0, "adapter":Lcom/facebook/ads/redexgen/X/0n;
    if-eqz v5, :cond_0

    invoke-interface {v5}, Lcom/facebook/ads/redexgen/X/0n;->A6x()Lcom/facebook/ads/internal/protocol/AdPlacementType;

    move-result-object v3

    sget-object v0, Lcom/facebook/ads/internal/protocol/AdPlacementType;->NATIVE:Lcom/facebook/ads/internal/protocol/AdPlacementType;

    if-ne v3, v0, :cond_0

    .line 69850
    new-instance v9, Lcom/facebook/ads/redexgen/X/1n;

    .line 69851
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/8u;->A04()Lorg/json/JSONObject;

    move-result-object v10

    .line 69852
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v11

    iget-object v12, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Ljava/lang/String;

    .line 69853
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0C()J

    move-result-wide v13

    invoke-direct/range {v9 .. v14}, Lcom/facebook/ads/redexgen/X/1n;-><init>(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/8x;Ljava/lang/String;J)V

    .line 69854
    .local v9, "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    check-cast v5, Lcom/facebook/ads/redexgen/X/c9;

    .line 69855
    .local v1, "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    new-instance v7, Lcom/facebook/ads/redexgen/X/bc;

    invoke-direct {v7, p0, v1, v5}, Lcom/facebook/ads/redexgen/X/bc;-><init>(Lcom/facebook/ads/redexgen/X/bb;Ljava/util/List;Lcom/facebook/ads/redexgen/X/c9;)V

    iget-object v8, p0, Lcom/facebook/ads/redexgen/X/bb;->A09:Lcom/facebook/ads/redexgen/X/JC;

    .line 69856
    invoke-static {}, Lcom/facebook/ads/redexgen/X/T6;->A0I()Lcom/facebook/ads/redexgen/X/JZ;

    move-result-object v10

    .line 69857
    invoke-virtual/range {v5 .. v10}, Lcom/facebook/ads/redexgen/X/c9;->A0a(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/11;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/JZ;)V

    .line 69858
    .end local v1    # "nativeAdapter":Lcom/facebook/ads/redexgen/X/c9;
    .end local v9    # "loadConfig":Lcom/facebook/ads/redexgen/X/1n;
    :cond_0
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/8w;->A05()Lcom/facebook/ads/redexgen/X/8u;

    move-result-object v4

    .line 69859
    .end local v0    # "adapter":Lcom/facebook/ads/redexgen/X/0n;
    goto :goto_0

    .line 69860
    :cond_1
    return-object v1
.end method

.method public static A05()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bb;->A0E:[B

    return-void

    :array_0
    .array-data 1
        -0x2ft
        -0x2et
        -0x7dt
        -0x2dt
        -0x31t
        -0x3ct
        -0x3at
        -0x38t
        -0x30t
        -0x38t
        -0x2ft
        -0x29t
        -0x7dt
        -0x34t
        -0x2ft
        -0x7dt
        -0x2bt
        -0x38t
        -0x2at
        -0x2dt
        -0x2et
        -0x2ft
        -0x2at
        -0x38t
    .end array-data
.end method

.method public static A06()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "gvO2SkJ6judPPNAAbU10EdMFrysfMOoq"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "C8fayNw08H03MAMa0MYSKK0pyo1qSvcR"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "zD"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "tQ435k35SGtCPZ"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "PU5xmRYaUesfDikXgdcM0c"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "Sj"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "IzP0LuOvX3krWKzZjoX9w767Mf8waFqk"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "fiC8qpcDm8TluoxAfEpO8PomLrdxugFO"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 2

    .line 69861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    .line 69862
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 69863
    return-void
.end method

.method public final A08()V
    .locals 15

    .line 69864
    :try_start_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    const/4 v5, 0x0

    new-instance v11, Lcom/facebook/ads/redexgen/X/Jy;

    invoke-direct {v11, v0, v5, v5, v5}, Lcom/facebook/ads/redexgen/X/Jy;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/Jt;)V
    :try_end_0
    .catch Lcom/facebook/ads/redexgen/X/Jo; {:try_start_0 .. :try_end_0} :catch_0

    .line 69865
    .local v0, "bidPayload":Lcom/facebook/ads/redexgen/X/Jy;
    new-instance v2, Lcom/facebook/ads/redexgen/X/KD;

    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bb;->A0D:Ljava/lang/String;

    .line 69866
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Lcom/facebook/ads/AdSize;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getHeight()I

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A06:Lcom/facebook/ads/AdSize;

    invoke-virtual {v0}, Lcom/facebook/ads/AdSize;->getWidth()I

    move-result v0

    new-instance v5, Lcom/facebook/ads/redexgen/X/LM;

    invoke-direct {v5, v1, v0}, Lcom/facebook/ads/redexgen/X/LM;-><init>(II)V

    :cond_0
    iget-object v6, p0, Lcom/facebook/ads/redexgen/X/bb;->A0A:Lcom/facebook/ads/redexgen/X/Jt;

    const/4 v7, 0x0

    iget v8, p0, Lcom/facebook/ads/redexgen/X/bb;->A04:I

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69867
    invoke-static {v0}, Lcom/facebook/ads/AdSettings;->isTestMode(Landroid/content/Context;)Z

    move-result v9

    .line 69868
    invoke-static {}, Lcom/facebook/ads/AdSettings;->isMixedAudience()Z

    move-result v10

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A08:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69869
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/J4;->A0H(Landroid/content/Context;)I

    move-result v0

    .line 69870
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LS;->A01(I)Ljava/lang/String;

    move-result-object v12

    iget-object v13, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/facebook/ads/redexgen/X/KD;-><init>(Lcom/facebook/ads/redexgen/X/8D;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/LM;Lcom/facebook/ads/redexgen/X/Jt;Ljava/lang/String;IZZLcom/facebook/ads/redexgen/X/Jy;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/ads/AdExperienceType;)V

    .line 69871
    .local p0, "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KD;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0B:Lcom/facebook/ads/redexgen/X/KG;

    invoke-virtual {v0, v2}, Lcom/facebook/ads/redexgen/X/KG;->A0P(Lcom/facebook/ads/redexgen/X/KD;)V

    .line 69872
    return-void

    .line 69873
    .end local p0    # "adEnvironmentData":Lcom/facebook/ads/redexgen/X/KD;
    .end local v0    # "bidPayload":Lcom/facebook/ads/redexgen/X/Jy;
    :catch_0
    move-exception v0

    .line 69874
    .local p0, "e":Lcom/facebook/ads/redexgen/X/Jo;
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jn;->A03(Lcom/facebook/ads/redexgen/X/Jo;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/bb;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69875
    return-void
.end method

.method public final A09(Lcom/facebook/ads/redexgen/X/1p;)V
    .locals 0

    .line 69876
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Lcom/facebook/ads/redexgen/X/1p;

    .line 69877
    return-void
.end method

.method public final A0A(Ljava/lang/String;)V
    .locals 0

    .line 69878
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bb;->A02:Ljava/lang/String;

    .line 69879
    return-void
.end method

.method public final A0B()Z
    .locals 1

    .line 69880
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/8w;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8w;->A0B()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final AA6(Lcom/facebook/ads/redexgen/X/Jn;)V
    .locals 4

    .line 69881
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    if-eqz v0, :cond_0

    .line 69882
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Landroid/os/Handler;

    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Ljava/lang/Runnable;

    const-wide/32 v0, 0x1b7740

    invoke-virtual {v3, v2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69883
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Lcom/facebook/ads/redexgen/X/1p;

    if-eqz v0, :cond_1

    .line 69884
    invoke-interface {v0, p1}, Lcom/facebook/ads/redexgen/X/1p;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69885
    :cond_1
    return-void
.end method

.method public final ABk(Lcom/facebook/ads/redexgen/X/St;)V
    .locals 7

    .line 69886
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/St;->A00()Lcom/facebook/ads/redexgen/X/8w;

    move-result-object v6

    .line 69887
    .local p0, "placement":Lcom/facebook/ads/redexgen/X/8w;
    if-eqz v6, :cond_5

    .line 69888
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A03:Z

    if-eqz v0, :cond_1

    .line 69889
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/8w;->A06()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A0A()J

    move-result-wide v2

    .line 69890
    .local p1, "refreshInterval":J
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 69891
    const-wide/32 v2, 0x1b7740

    .line 69892
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bb;->A05:Landroid/os/Handler;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A0C:Ljava/lang/Runnable;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 69893
    .end local p1    # "refreshInterval":J
    :cond_1
    iput-object v6, p0, Lcom/facebook/ads/redexgen/X/bb;->A01:Lcom/facebook/ads/redexgen/X/8w;

    .line 69894
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/bb;->A04()Ljava/util/List;

    move-result-object v4

    .line 69895
    .local p1, "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Lcom/facebook/ads/redexgen/X/1p;

    if-eqz v0, :cond_4

    .line 69896
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x6

    aget-object v2, v2, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/bb;->A0F:[Ljava/lang/String;

    const-string v1, "Ma8ASQR7F1ZvPn5hHoXinNcVvjUetiuh"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v3, :cond_3

    .line 69897
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Lcom/facebook/ads/redexgen/X/1p;

    sget-object v3, Lcom/facebook/ads/internal/protocol/AdErrorType;->NO_FILL:Lcom/facebook/ads/internal/protocol/AdErrorType;

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/16 v0, 0x3f

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A03(III)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/facebook/ads/redexgen/X/Jn;->A02(Lcom/facebook/ads/internal/protocol/AdErrorType;Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/Jn;

    move-result-object v0

    invoke-interface {v4, v0}, Lcom/facebook/ads/redexgen/X/1p;->AA6(Lcom/facebook/ads/redexgen/X/Jn;)V

    .line 69898
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69899
    :cond_3
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bb;->A00:Lcom/facebook/ads/redexgen/X/1p;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/1p;->AAw(Ljava/util/List;)V

    .line 69900
    :cond_4
    return-void

    .line 69901
    .end local p1    # "adapters":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adapters/FacebookNativeAdapter;>;"
    :cond_5
    const/4 v2, 0x0

    const/16 v1, 0x18

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bb;->A03(III)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
