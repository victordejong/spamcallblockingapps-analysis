.class public final Lcom/facebook/ads/redexgen/X/S9;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/0w;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/1a;
    }
.end annotation


# static fields
.field public static A05:[B

.field public static A06:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/7D;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/Nd;

.field public A02:Lcom/facebook/ads/redexgen/X/OS;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/S1;

.field public final A04:Lcom/facebook/ads/redexgen/X/1a;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S9;->A08()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/S9;->A07()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1n;Lcom/facebook/ads/redexgen/X/1a;Ljava/lang/String;)V
    .locals 1
    .param p4    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51903
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51904
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nd;->A06:Lcom/facebook/ads/redexgen/X/Nd;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Lcom/facebook/ads/redexgen/X/Nd;

    .line 51905
    invoke-virtual {p2}, Lcom/facebook/ads/redexgen/X/1n;->A03()Lorg/json/JSONObject;

    move-result-object v0

    .line 51906
    .local p0, "dataObject":Lorg/json/JSONObject;
    invoke-static {p1, p2, p4, v0}, Lcom/facebook/ads/redexgen/X/S9;->A02(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1n;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51907
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    .line 51908
    return-void
.end method

.method private A00(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/AdError;
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 51909
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51910
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A04()Lcom/facebook/ads/redexgen/X/8d;

    move-result-object v5

    sget v4, Lcom/facebook/ads/redexgen/X/8e;->A0O:I

    const/4 v2, 0x5

    const/16 v1, 0x2b

    const/4 v0, 0x6

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/8f;

    invoke-direct {v3, v0}, Lcom/facebook/ads/redexgen/X/8f;-><init>(Ljava/lang/String;)V

    .line 51911
    const/16 v2, 0x3e

    const/4 v1, 0x3

    const/16 v0, 0x12

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v4, v3}, Lcom/facebook/ads/redexgen/X/8d;->A8V(Ljava/lang/String;ILcom/facebook/ads/redexgen/X/8f;)V

    .line 51912
    const/16 v0, 0x7d6

    invoke-static {v0}, Lcom/facebook/ads/AdError;->internalError(I)Lcom/facebook/ads/AdError;

    move-result-object v0

    return-object v0

    .line 51913
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/S1;
    .locals 0

    .line 51914
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    return-object p0
.end method

.method public static A02(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/1n;Ljava/lang/String;Lorg/json/JSONObject;)Lcom/facebook/ads/redexgen/X/S1;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 51915
    invoke-static {p3, p0}, Lcom/facebook/ads/redexgen/X/S1;->A02(Lorg/json/JSONObject;Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/S1;

    move-result-object p0

    .line 51916
    .local p0, "adDataBundle":Lcom/facebook/ads/redexgen/X/S1;
    invoke-virtual {p0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0f(Ljava/lang/String;)V

    .line 51917
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/1n;->A01()Lcom/facebook/ads/redexgen/X/8x;

    move-result-object v0

    .line 51918
    .local p1, "definition":Lcom/facebook/ads/redexgen/X/8x;
    if-eqz v0, :cond_0

    .line 51919
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/8x;->A06()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/facebook/ads/redexgen/X/16;->A0d(I)V

    .line 51920
    :cond_0
    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/S9;)Lcom/facebook/ads/redexgen/X/1a;
    .locals 0

    .line 51921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    return-object p0
.end method

.method private A04(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/7D;
    .locals 1

    .line 51922
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A00:Lcom/facebook/ads/redexgen/X/7D;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v0, p1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    goto :goto_0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/S9;Lcom/facebook/ads/redexgen/X/OS;)Lcom/facebook/ads/redexgen/X/OS;
    .locals 0

    .line 51923
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S9;->A02:Lcom/facebook/ads/redexgen/X/OS;

    return-object p1
.end method

.method public static A06(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/S9;->A05:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x60

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static A07()V
    .locals 1

    const/16 v0, 0x4d

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/S9;->A05:[B

    return-void

    :array_0
    .array-data 1
        -0x61t
        -0x27t
        -0x1bt
        -0x22t
        -0x23t
        -0x51t
        -0x2ct
        -0x26t
        -0x35t
        -0x28t
        -0x2ct
        -0x39t
        -0x2et
        -0x7at
        -0x55t
        -0x28t
        -0x28t
        -0x2bt
        -0x28t
        -0x7at
        -0x68t
        -0x6at
        -0x6at
        -0x64t
        -0x7at
        -0x23t
        -0x31t
        -0x26t
        -0x32t
        -0x2bt
        -0x25t
        -0x26t
        -0x7at
        -0x39t
        -0x7at
        -0x24t
        -0x39t
        -0x2et
        -0x31t
        -0x36t
        -0x7at
        -0x59t
        -0x36t
        -0x51t
        -0x2ct
        -0x34t
        -0x2bt
        -0x6ct
        0x1ft
        0x22t
        0x1dt
        0x22t
        0x1ft
        0x32t
        0x1ft
        0x1dt
        0x20t
        0x33t
        0x2ct
        0x22t
        0x2at
        0x23t
        -0x2dt
        -0x1et
        -0x25t
        -0x35t
        -0x30t
        -0x2at
        -0x39t
        -0x2ct
        -0x2bt
        -0x2at
        -0x35t
        -0x2at
        -0x35t
        -0x3dt
        -0x32t
    .end array-data
.end method

.method public static A08()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "jJreqFAWfQsm2UlBXjWleQZy51A8w9r3"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "B5vxrqY9e1pfFDILbPSJEQZe5Zep9JAF"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "7hwRhDIA2xM98ucsNVPICP0872"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "8yYdfjKxcW1uK5E8nS4F9bT"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "cwoTvwLLOWGZrFwonmn2qn9xu"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "wuc4L"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "VoE60CbUCih"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "1JGxuEjawtyxaKItdz1AQ1lnM"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    return-void
.end method

.method private A09(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 51924
    .local v6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    .line 51925
    .local p0, "playableData":Lcom/facebook/ads/redexgen/X/1U;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1U;->A0B()Lcom/facebook/ads/redexgen/X/Nd;

    move-result-object v0

    .line 51926
    :goto_0
    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/S9;->A0B(Lcom/facebook/ads/redexgen/X/Nd;)V

    .line 51927
    new-instance v4, Lcom/facebook/ads/redexgen/X/S8;

    invoke-direct {v4, p0}, Lcom/facebook/ads/redexgen/X/S8;-><init>(Lcom/facebook/ads/redexgen/X/S9;)V

    .line 51928
    .local p1, "playablePreCacheListener":Lcom/facebook/ads/redexgen/X/1i;
    new-instance v6, Lcom/facebook/ads/redexgen/X/7D;

    invoke-direct {v6, p1}, Lcom/facebook/ads/redexgen/X/7D;-><init>(Lcom/facebook/ads/redexgen/X/8D;)V

    .line 51929
    .local p2, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    const/16 v2, 0x41

    const/16 v1, 0xc

    const/4 v0, 0x2

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, p0, v5, v0, v6}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 51930
    .local v0, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51931
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51932
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 51933
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    invoke-virtual {v6, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 51934
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 51935
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    :goto_1
    return-void

    .line 51936
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    sget-object v1, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x5

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "kxumv"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, v3, v0, v4}, Lcom/facebook/ads/redexgen/X/1k;->A03(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/16;ZLcom/facebook/ads/redexgen/X/1i;)V

    goto :goto_1

    .line 51937
    :cond_2
    sget-object v0, Lcom/facebook/ads/redexgen/X/Nd;->A06:Lcom/facebook/ads/redexgen/X/Nd;

    goto :goto_0
.end method

.method private A0A(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 51938
    .local v6, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    move-object/from16 v0, p0

    move-object v0, v0

    move-object/from16 v5, p1

    invoke-direct {v0, v5}, Lcom/facebook/ads/redexgen/X/S9;->A04(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/redexgen/X/7D;

    move-result-object v1

    .line 51939
    .local v6, "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51940
    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5}, Lcom/facebook/ads/redexgen/X/8D;->A06()Lcom/facebook/ads/redexgen/X/JC;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/JJ;

    invoke-direct {v2, v4, v3}, Lcom/facebook/ads/redexgen/X/JJ;-><init>(Ljava/lang/String;Lcom/facebook/ads/redexgen/X/JC;)V

    .line 51941
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    invoke-virtual {v1, v2}, Lcom/facebook/ads/redexgen/X/7D;->A0Z(Lcom/facebook/ads/redexgen/X/JJ;)V

    .line 51942
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    const/16 v4, 0x41

    const/16 v3, 0xc

    const/4 v2, 0x2

    invoke-static {v4, v3, v2}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v4

    new-instance v3, Lcom/facebook/ads/redexgen/X/1f;

    invoke-direct {v3, v0, v6, v4, v1}, Lcom/facebook/ads/redexgen/X/1f;-><init>(Lcom/facebook/ads/redexgen/X/0w;Lcom/facebook/ads/redexgen/X/16;Ljava/lang/String;Lcom/facebook/ads/redexgen/X/7D;)V

    .line 51943
    .local v5, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A09()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51944
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1f;->A08()V

    .line 51945
    .end local v1
    .end local v4
    .end local v2
    .end local v6    # "cacheManager":Lcom/facebook/ads/redexgen/X/7D;
    :goto_0
    return-void

    .line 51946
    :cond_0
    iget-object v2, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v2}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v2

    .line 51947
    .local v1, "isDSL":Z
    if-eqz v2, :cond_1

    .line 51948
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51949
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0U()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51950
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v3

    new-instance v8, Lcom/facebook/ads/redexgen/X/7C;

    invoke-direct {v8, v6, v3, v4}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 51951
    .local v4, "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v3, 0x1

    iput-boolean v3, v8, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 51952
    const/4 v7, 0x0

    const/4 v6, 0x5

    const/16 v3, 0x11

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/facebook/ads/redexgen/X/7C;->A03:Ljava/lang/String;

    .line 51953
    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 51954
    .end local v4    # "cacheFileData":Lcom/facebook/ads/redexgen/X/7C;
    :cond_1
    new-instance v8, Lcom/facebook/ads/redexgen/X/7A;

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51955
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Q()Lcom/facebook/ads/redexgen/X/1S;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1S;->A01()Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    sget v11, Lcom/facebook/ads/redexgen/X/Os;->A04:I

    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51956
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v12

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/4 v3, 0x2

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v13

    invoke-direct/range {v8 .. v13}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 51957
    invoke-virtual {v1, v8}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 51958
    sget-object v3, Lcom/facebook/ads/CacheFlag;->VIDEO:Lcom/facebook/ads/CacheFlag;

    move-object/from16 v6, p2

    invoke-virtual {v6, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v13

    .line 51959
    .local v4, "cacheVideos":Z
    const/4 v12, 0x0

    .line 51960
    .local v2, "i":I
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Py;->A04()Z

    move-result v3

    invoke-static {v5, v3}, Lcom/facebook/ads/redexgen/X/J4;->A1t(Landroid/content/Context;Z)Z

    move-result v11

    .line 51961
    .local v6, "useExoPlayerCacheForDSL":Z
    iget-object v3, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/ads/redexgen/X/19;

    .line 51962
    .local v3, "adInfo":Lcom/facebook/ads/redexgen/X/19;
    new-instance v14, Lcom/facebook/ads/redexgen/X/7A;

    .line 51963
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A07()Ljava/lang/String;

    move-result-object v15

    .line 51964
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1g;->A00(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v16

    .line 51965
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/ads/redexgen/X/1g;->A01(Lcom/facebook/ads/redexgen/X/1C;)I

    move-result v17

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51966
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v18

    const/16 v8, 0x41

    const/16 v7, 0xc

    const/4 v6, 0x2

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 51967
    .local v2, "imageData":Lcom/facebook/ads/redexgen/X/7A;
    if-nez v12, :cond_7

    .line 51968
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0T(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 51969
    :goto_2
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0H()Lcom/facebook/ads/redexgen/X/1K;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1K;->A00()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 51970
    .local v3, "endCardUrl":Ljava/lang/String;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .local v3, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    new-instance v14, Lcom/facebook/ads/redexgen/X/7A;

    const/16 v16, -0x1

    const/16 v17, -0x1

    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .local v8, "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51971
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v18

    const/16 v8, 0x41

    const/16 v7, 0xc

    const/4 v6, 0x2

    invoke-static {v8, v7, v6}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7A;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 51972
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    .line 51973
    .end local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    goto :goto_3

    .line 51974
    .end local v3
    .end local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .restart local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .restart local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    :cond_2
    if-eqz v13, :cond_3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 51975
    new-instance v14, Lcom/facebook/ads/redexgen/X/7C;

    .line 51976
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v15

    iget-object v6, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51977
    invoke-virtual {v6}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v16

    .line 51978
    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/ads/redexgen/X/1C;->A05()J

    move-result-wide v18

    const/16 v7, 0x41

    const/16 v6, 0xc

    const/4 v3, 0x2

    invoke-static {v7, v6, v3}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v14 .. v19}, Lcom/facebook/ads/redexgen/X/7C;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 51979
    .local v0, "videoData":Lcom/facebook/ads/redexgen/X/7C;
    const/4 v3, 0x0

    iput-boolean v3, v14, Lcom/facebook/ads/redexgen/X/7C;->A04:Z

    .line 51980
    if-nez v12, :cond_5

    .line 51981
    if-eqz v2, :cond_4

    if-nez v11, :cond_4

    .line 51982
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0V(Lcom/facebook/ads/redexgen/X/7C;)V

    .line 51983
    .end local v0    # "videoData":Lcom/facebook/ads/redexgen/X/7C;
    .end local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .end local v2    # "imageData":Lcom/facebook/ads/redexgen/X/7A;
    :cond_3
    :goto_4
    add-int/lit8 v12, v12, 0x1

    .line 51984
    goto/16 :goto_1

    .line 51985
    :cond_4
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0Y(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 51986
    :cond_5
    if-eqz v2, :cond_6

    if-nez v11, :cond_6

    .line 51987
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0W(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 51988
    :cond_6
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0X(Lcom/facebook/ads/redexgen/X/7C;)V

    goto :goto_4

    .line 51989
    :cond_7
    invoke-virtual {v1, v14}, Lcom/facebook/ads/redexgen/X/7D;->A0U(Lcom/facebook/ads/redexgen/X/7A;)V

    goto/16 :goto_2

    .line 51990
    .end local v3
    .end local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .local v0, "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .restart local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .end local v0    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .end local v5    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    .restart local v3    # "funnelLoggingHandler":Lcom/facebook/ads/redexgen/X/JJ;
    .restart local v8    # "cacheHelper":Lcom/facebook/ads/redexgen/X/1f;
    :cond_8
    new-instance v3, Lcom/facebook/ads/redexgen/X/S7;

    invoke-direct {v3, v0, v5, v2}, Lcom/facebook/ads/redexgen/X/S7;-><init>(Lcom/facebook/ads/redexgen/X/S9;Lcom/facebook/ads/redexgen/X/XJ;Z)V

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    .line 51991
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0Y()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Lcom/facebook/ads/redexgen/X/76;

    invoke-direct {v0, v2, v4}, Lcom/facebook/ads/redexgen/X/76;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51992
    invoke-virtual {v1, v3, v0}, Lcom/facebook/ads/redexgen/X/7D;->A0S(Lcom/facebook/ads/redexgen/X/75;Lcom/facebook/ads/redexgen/X/76;)V

    goto/16 :goto_0
.end method

.method private A0B(Lcom/facebook/ads/redexgen/X/Nd;)V
    .locals 0

    .line 51993
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Lcom/facebook/ads/redexgen/X/Nd;

    .line 51994
    return-void
.end method


# virtual methods
.method public final A0C()Lcom/facebook/ads/redexgen/X/KK;
    .locals 4

    .line 51995
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0m()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51996
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A03:Lcom/facebook/ads/redexgen/X/KK;

    return-object v0

    .line 51997
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_2

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "f4kXngrP8CD5dz"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const/4 v0, 0x1

    if-le v3, v0, :cond_1

    .line 51998
    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A06:Lcom/facebook/ads/redexgen/X/KK;

    return-object v0

    .line 51999
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A06()Lcom/facebook/ads/redexgen/X/1U;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 52000
    sget-object v3, Lcom/facebook/ads/redexgen/X/KK;->A08:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v2, v0

    const/4 v0, 0x4

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3
    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "ny"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    .line 52001
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S9;->A0I()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52002
    sget-object v3, Lcom/facebook/ads/redexgen/X/KK;->A09:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_5

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "JH"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 52003
    :cond_6
    sget-object v3, Lcom/facebook/ads/redexgen/X/KK;->A07:Lcom/facebook/ads/redexgen/X/KK;

    sget-object v1, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x20

    if-eq v1, v0, :cond_7

    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "93R6MUXHMTxUt8WfLt1oZ3ea5zubl3sl"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const-string v1, "9xXPI1nVQC4CSUB4soKlPH985bh9DAt9"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    return-object v3

    :cond_7
    sget-object v2, Lcom/facebook/ads/redexgen/X/S9;->A06:[Ljava/lang/String;

    const-string v1, "ySAy4b6nQ"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    return-object v3
.end method

.method public final A0D()Lcom/facebook/ads/redexgen/X/Nd;
    .locals 1

    .line 52004
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A01:Lcom/facebook/ads/redexgen/X/Nd;

    return-object v0
.end method

.method public final A0E()Ljava/lang/String;
    .locals 1

    .line 52005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0T()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A0F()V
    .locals 1

    .line 52006
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->AEP()V

    .line 52007
    return-void
.end method

.method public final A0G(Landroid/content/Intent;Lcom/facebook/ads/RewardData;Ljava/lang/String;)V
    .locals 4

    .line 52008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0, p2}, Lcom/facebook/ads/redexgen/X/16;->A0e(Lcom/facebook/ads/RewardData;)V

    .line 52009
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0, p3}, Lcom/facebook/ads/redexgen/X/16;->A0h(Ljava/lang/String;)V

    .line 52010
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    const/16 v2, 0x30

    const/16 v1, 0xe

    const/16 v0, 0x5e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/S9;->A06(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 52011
    return-void
.end method

.method public final A0H(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Ljava/util/EnumSet<",
            "Lcom/facebook/ads/CacheFlag;",
            ">;)V"
        }
    .end annotation

    .line 52012
    .local v0, "cacheFlags":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Lcom/facebook/ads/CacheFlag;>;"
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/S9;->A00(Lcom/facebook/ads/redexgen/X/XJ;)Lcom/facebook/ads/AdError;

    move-result-object v1

    .line 52013
    .local p0, "adError":Lcom/facebook/ads/AdError;
    if-eqz v1, :cond_0

    .line 52014
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0, v1}, Lcom/facebook/ads/redexgen/X/1a;->A9J(Lcom/facebook/ads/AdError;)V

    .line 52015
    return-void

    .line 52016
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->ACw()V

    .line 52017
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/S9;->A0C()Lcom/facebook/ads/redexgen/X/KK;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/KK;->A08:Lcom/facebook/ads/redexgen/X/KK;

    if-ne v1, v0, :cond_1

    .line 52018
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/S9;->A09(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V

    .line 52019
    :goto_0
    return-void

    .line 52020
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/S9;->A0A(Lcom/facebook/ads/redexgen/X/XJ;Ljava/util/EnumSet;)V

    goto :goto_0
.end method

.method public final A0I()Z
    .locals 1

    .line 52021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0N()Lcom/facebook/ads/redexgen/X/19;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/19;->A0E()Lcom/facebook/ads/redexgen/X/1C;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/1C;->A08()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final A0J()Z
    .locals 1

    .line 52022
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A03:Lcom/facebook/ads/redexgen/X/S1;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/16;->A0k()Z

    move-result v0

    return v0
.end method

.method public final A9g()V
    .locals 1

    .line 52023
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/1a;->A9K()V

    .line 52024
    return-void
.end method

.method public final A9h()V
    .locals 2

    .line 52025
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/S9;->A04:Lcom/facebook/ads/redexgen/X/1a;

    sget-object v0, Lcom/facebook/ads/AdError;->CACHE_ERROR:Lcom/facebook/ads/AdError;

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/1a;->A9J(Lcom/facebook/ads/AdError;)V

    .line 52026
    return-void
.end method
