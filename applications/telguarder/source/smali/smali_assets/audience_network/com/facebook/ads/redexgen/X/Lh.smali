.class public Lcom/facebook/ads/redexgen/X/Lh;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LT;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/PD;,
        Lcom/facebook/ads/redexgen/X/PE;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/LT<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A0D:[B

.field public static A0E:[Ljava/lang/String;


# instance fields
.field public A00:I

.field public A01:I

.field public A02:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A03:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public A04:Z

.field public final A05:Lcom/facebook/ads/redexgen/X/bF;

.field public final A06:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A07:Lcom/facebook/ads/redexgen/X/JC;

.field public final A08:Lcom/facebook/ads/redexgen/X/PD;

.field public final A09:Lcom/facebook/ads/redexgen/X/PI;

.field public final A0A:Ljava/lang/Object;

.field public final A0B:Ljava/lang/String;

.field public final A0C:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A0P()V

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Lh;->A0O()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 42933
    .local v4, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    const/4 v7, 0x0

    move-object v0, p0

    move v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;)V

    .line 42934
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;)V
    .locals 9
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 42935
    .local v4, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    const/4 v8, 0x0

    move-object v0, p0

    move-object/from16 v7, p7

    move v6, p6

    move-object v5, p5

    move-object v4, p4

    move-object v3, p3

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/ads/redexgen/X/Lh;-><init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V

    .line 42936
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V
    .locals 19
    .param p7    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Ljava/lang/String;",
            "Z",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42937
    .local v8, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local v12, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 42938
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A0A:Ljava/lang/Object;

    .line 42939
    const/4 v1, 0x0

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    .line 42940
    iput v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    .line 42941
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Ljava/lang/String;

    .line 42942
    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A03:Ljava/lang/String;

    .line 42943
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 42944
    move-object/from16 v2, p2

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    .line 42945
    move-object/from16 v2, p3

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    .line 42946
    move-object/from16 v3, p5

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    .line 42947
    move-object/from16 v3, p8

    iput-object v3, v0, Lcom/facebook/ads/redexgen/X/Lh;->A0C:Ljava/util/Map;

    .line 42948
    move/from16 v3, p6

    iput-boolean v3, v0, Lcom/facebook/ads/redexgen/X/Lh;->A04:Z

    .line 42949
    new-instance v4, Lcom/facebook/ads/redexgen/X/ML;

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object v3, v4

    invoke-direct/range {v4 .. v12}, Lcom/facebook/ads/redexgen/X/ML;-><init>(Lcom/facebook/ads/redexgen/X/Lh;DDDZ)V

    move-object/from16 v4, p4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42950
    new-instance v10, Lcom/facebook/ads/redexgen/X/MK;

    const-wide v12, 0x3e7ad7f29abcaf48L    # 1.0E-7

    const-wide v16, 0x3f50624dd2f1a9fcL    # 0.001

    const/16 v18, 0x0

    move-object v3, v10

    move-object v11, v5

    move-wide v14, v8

    invoke-direct/range {v10 .. v18}, Lcom/facebook/ads/redexgen/X/MK;-><init>(Lcom/facebook/ads/redexgen/X/Lh;DDDZ)V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42951
    move-object/from16 v5, p7

    if-eqz v5, :cond_0

    .line 42952
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/PD;->getView()Landroid/view/View;

    move-result-object v7

    .line 42953
    const/4 v6, 0x6

    const/16 v3, 0x10

    const/16 v2, 0x39

    invoke-static {v6, v3, v2}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/bF;

    invoke-direct {v2, v7, v4, v3, v1}, Lcom/facebook/ads/redexgen/X/bF;-><init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    .line 42954
    const/16 v3, 0x39

    const/16 v2, 0x12

    const/16 v1, 0x41

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    .line 42955
    const/16 v3, 0x27

    const/16 v2, 0x12

    const/16 v1, 0x24

    invoke-static {v3, v2, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    .line 42956
    :goto_0
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/facebook/ads/redexgen/X/PI;

    invoke-direct {v1, v2, v0}, Lcom/facebook/ads/redexgen/X/PI;-><init>(Landroid/os/Handler;Lcom/facebook/ads/redexgen/X/Lh;)V

    iput-object v1, v0, Lcom/facebook/ads/redexgen/X/Lh;->A09:Lcom/facebook/ads/redexgen/X/PI;

    .line 42957
    return-void

    .line 42958
    :cond_0
    invoke-interface {v2}, Lcom/facebook/ads/redexgen/X/PD;->getView()Landroid/view/View;

    move-result-object v3

    new-instance v2, Lcom/facebook/ads/redexgen/X/bF;

    invoke-direct {v2, v3, v4, v1}, Lcom/facebook/ads/redexgen/X/bF;-><init>(Landroid/view/View;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V

    iput-object v2, v0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    goto :goto_0
.end method

.method private final A0E()F
    .locals 2

    .line 42959
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Lf;->A00(Landroid/content/Context;)F

    move-result v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVolume()F

    move-result v0

    mul-float/2addr v1, v0

    return v1
.end method

.method public static synthetic A0F(Lcom/facebook/ads/redexgen/X/Lh;)Lcom/facebook/ads/redexgen/X/JC;
    .locals 0

    .line 42960
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    return-object p0
.end method

.method public static A0G(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/Lh;->A0D:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x31

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static synthetic A0H(Lcom/facebook/ads/redexgen/X/Lh;)Ljava/lang/String;
    .locals 0

    .line 42961
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    return-object p0
.end method

.method private A0I(I)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42962
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 42963
    .local p0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    .line 42964
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getVideoStartReason()Lcom/facebook/ads/redexgen/X/PJ;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/PJ;->A03:Lcom/facebook/ads/redexgen/X/PJ;

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    .line 42965
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->A86()Z

    move-result v0

    .line 42966
    xor-int/2addr v0, v2

    invoke-static {v3, v1, v0}, Lcom/facebook/ads/redexgen/X/Lf;->A03(Ljava/util/Map;ZZ)V

    .line 42967
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0S(Ljava/util/Map;)V

    .line 42968
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0R(Ljava/util/Map;)V

    .line 42969
    invoke-direct {p0, v3, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0U(Ljava/util/Map;I)V

    .line 42970
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0T(Ljava/util/Map;)V

    .line 42971
    invoke-direct {p0, v3}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Ljava/util/HashMap;)V

    .line 42972
    return-object v3

    .line 42973
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/PE;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42974
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getCurrentPositionInMillis()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Lcom/facebook/ads/redexgen/X/PE;I)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private A0K(Lcom/facebook/ads/redexgen/X/PE;I)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/PE;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42975
    invoke-direct {p0, p2}, Lcom/facebook/ads/redexgen/X/Lh;->A0I(I)Ljava/util/Map;

    move-result-object v4

    .line 42976
    .local p0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p1, Lcom/facebook/ads/redexgen/X/PE;->A00:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v1, 0x6

    const/16 v0, 0x18

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42977
    return-object v4
.end method

.method public static synthetic A0L(Lcom/facebook/ads/redexgen/X/Lh;Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;
    .locals 0

    .line 42978
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method private A0M()V
    .locals 3

    .line 42979
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A04:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 42980
    return-void
.end method

.method private A0N()V
    .locals 3

    .line 42981
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A0A:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 42982
    return-void
.end method

.method public static A0O()V
    .locals 1

    const/16 v0, 0xa2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/Lh;->A0D:[B

    return-void

    :array_0
    .array-data 1
        -0x56t
        -0x54t
        -0x43t
        -0x4et
        -0x48t
        -0x49t
        -0x35t
        -0x32t
        -0x45t
        -0x21t
        -0x35t
        -0x2at
        -0x2dt
        -0x22t
        -0x1dt
        -0x49t
        -0x35t
        -0x28t
        -0x35t
        -0x2ft
        -0x31t
        -0x24t
        -0x4bt
        -0x38t
        -0x43t
        -0x3ft
        -0x47t
        -0x4dt
        -0x3ft
        -0x39t
        -0x3ft
        -0x2ct
        -0x35t
        -0x34t
        -0x38t
        -0x43t
        -0x2bt
        -0x3ft
        -0x32t
        -0x3ft
        -0x4at
        -0x38t
        -0x37t
        -0x69t
        -0x3ct
        -0x36t
        -0x3dt
        -0x47t
        -0x4at
        -0x39t
        -0x32t
        -0x57t
        -0x42t
        -0x3et
        -0x46t
        -0x5et
        -0x58t
        -0x22t
        -0x2dt
        -0x1bt
        -0x1at
        -0x3et
        -0x1ct
        -0x1ft
        -0x27t
        -0x1ct
        -0x29t
        -0x1bt
        -0x1bt
        -0x3at
        -0x25t
        -0x21t
        -0x29t
        -0x41t
        -0x3bt
        -0x29t
        -0x33t
        -0x35t
        -0x22t
        -0x37t
        -0x29t
        -0x23t
        -0x3dt
        -0x47t
        -0x34t
        -0x36t
        -0x4bt
        -0x3dt
        -0x37t
        0xdt
        0x5t
        -0x15t
        -0x19t
        -0x2bt
        -0x29t
        -0x36t
        -0x2bt
        -0xet
        -0xat
        -0x26t
        -0x22t
        -0x2dt
        -0x29t
        -0x31t
        -0x23t
        -0x1ct
        -0x1t
        -0xct
        -0x8t
        -0x10t
        0x1t
        -0x9t
        -0x14t
        -0x38t
        -0x42t
        -0x41t
        -0x26t
        -0x30t
        -0x2ft
        -0x3bt
        -0x24t
        0x8t
        0x2t
        -0x6t
        -0x1et
        -0x24t
        -0x1dt
        -0x12t
        -0x14t
        -0x1ft
        -0x1bt
        -0x23t
        -0x29t
        -0x1bt
        -0x15t
        -0x4t
        -0x3t
        -0x1bt
        -0x16t
        -0x6t
        -0x5t
        -0x1dt
        -0xat
        -0x9t
        -0xet
        -0xdt
        -0xct
        -0x22t
        -0x1ct
        -0x1bt
        -0x25t
        -0x55t
        -0x54t
        -0x5et
        -0x6at
        -0x53t
        0x20t
        0x12t
        0x17t
        0xdt
        0x18t
        0x20t
    .end array-data
.end method

.method public static A0P()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "pLRRT7xfKKmC"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "sDjB9WgW1E6gHf8gwZURHsTrfoUrQz1T"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "uiJP8xmaVv"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "5XKoBHy1xynVgVvyT837PyBbXD1HwArb"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "BpJCepaU8WbBulVTB"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "9USxYKvyty1bKFarGQoBTCJfC9"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "y9X2NkRV2raN2WQBQaXrllWfrJ"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "7FHQr1tSmfn5NF7ZWaBxZ9Q6x0"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Lh;->A0E:[Ljava/lang/String;

    return-void
.end method

.method private A0Q(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42983
    .local v0, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0C:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 42984
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 42985
    :cond_0
    return-void
.end method

.method private A0R(Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 42986
    .local v1, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A03()Lcom/facebook/ads/redexgen/X/27;

    move-result-object v7

    .line 42987
    .local p0, "stats":Lcom/facebook/ads/redexgen/X/27;
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/27;->A00()Lcom/facebook/ads/redexgen/X/26;

    move-result-object v4

    .line 42988
    .local p1, "viewability":Lcom/facebook/ads/redexgen/X/26;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x91

    const/4 v1, 0x3

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42989
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A05()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x94

    const/4 v1, 0x3

    const/16 v0, 0x3d

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42990
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A02()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x97

    const/4 v1, 0x5

    const/4 v0, 0x4

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42991
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A01()D

    move-result-wide v0

    const-wide v5, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7f

    const/16 v1, 0x8

    const/16 v0, 0x47

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42992
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A03()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x52

    const/4 v1, 0x7

    const/16 v0, 0x25

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42993
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A02:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 42994
    const/16 v2, 0x87

    const/4 v1, 0x4

    const/16 v0, 0x55

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42995
    :cond_0
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A03:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 42996
    const/16 v2, 0x8b

    const/4 v1, 0x6

    const/16 v0, 0x53

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42997
    :cond_1
    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/27;->A01()Lcom/facebook/ads/redexgen/X/26;

    move-result-object v4

    .line 42998
    .local v0, "volume":Lcom/facebook/ads/redexgen/X/26;
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A00()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6e

    const/4 v1, 0x3

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42999
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A05()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x71

    const/4 v1, 0x3

    const/16 v0, 0x21

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43000
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A02()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x74

    const/4 v1, 0x5

    const/16 v0, 0x33

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lh;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_2

    .line 43001
    sget-object v2, Lcom/facebook/ads/redexgen/X/Lh;->A0E:[Ljava/lang/String;

    const-string v1, "qNaIZIEXrl3ko55G9QA5APdgqZzshDAu"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    const-string v1, "tEN7kz4o1Stz3bsNWDN9FoXl5dOCX1Lo"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A01()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x16

    const/16 v1, 0x8

    const/16 v0, 0x23

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43002
    invoke-virtual {v4}, Lcom/facebook/ads/redexgen/X/26;->A03()D

    move-result-wide v0

    mul-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x4b

    const/4 v1, 0x7

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43003
    return-void

    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method private A0S(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43004
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->A83()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x1e

    const/16 v1, 0x9

    const/16 v0, 0x2b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43005
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getInitialBufferTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5d

    const/4 v1, 0x4

    const/16 v0, 0x34

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43006
    return-void
.end method

.method private A0T(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 43007
    .local v2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 43008
    .local p0, "rect":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0, v4}, Lcom/facebook/ads/redexgen/X/PD;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 43009
    iget v0, v4, Landroid/graphics/Rect;->top:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x61

    const/4 v1, 0x2

    const/16 v0, 0x51

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43010
    iget v0, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x5b

    const/4 v1, 0x2

    const/16 v0, 0x4a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43011
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x59

    const/4 v1, 0x2

    const/16 v0, 0x6c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43012
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A08:Lcom/facebook/ads/redexgen/X/PD;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/PD;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x68

    const/4 v1, 0x2

    const/16 v0, 0x3c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43013
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    const/16 v2, 0x9c

    const/4 v1, 0x6

    const/16 v0, 0x78

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/ads/redexgen/X/Wm;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 43014
    .local p1, "wm":Landroid/view/WindowManager;
    new-instance v4, Landroid/util/DisplayMetrics;

    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 43015
    .local v4, "metrics":Landroid/util/DisplayMetrics;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 43016
    iget v0, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x79

    const/4 v1, 0x3

    const/16 v0, 0x61

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43017
    iget v0, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x7c

    const/4 v1, 0x3

    const/16 v0, 0x3b

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43018
    return-void
.end method

.method private A0U(Ljava/util/Map;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 43019
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    int-to-float v0, v0

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x63

    const/4 v1, 0x5

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43020
    int-to-float v0, p2

    div-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    const/16 v2, 0x6a

    const/4 v1, 0x4

    const/16 v0, 0x5a

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43021
    return-void
.end method


# virtual methods
.method public final A0V()I
    .locals 1

    .line 43022
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    return v0
.end method

.method public final A0W()Landroid/os/Bundle;
    .locals 5

    .line 43023
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0V()I

    move-result v1

    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0V()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0f(II)V

    .line 43024
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 43025
    .local p0, "bundle":Landroid/os/Bundle;
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    const/16 v2, 0x39

    const/16 v1, 0x12

    const/16 v0, 0x41

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43026
    iget v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    const/16 v2, 0x27

    const/16 v1, 0x12

    const/16 v0, 0x24

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 43027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A02()Landroid/os/Bundle;

    move-result-object v3

    const/4 v2, 0x6

    const/16 v1, 0x10

    const/16 v0, 0x39

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0G(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 43028
    return-object v4
.end method

.method public final A0X()V
    .locals 3

    .line 43029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A04()V

    .line 43030
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A05:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43031
    return-void
.end method

.method public final A0Y()V
    .locals 3

    .line 43032
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A07:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43033
    return-void
.end method

.method public final A0Z()V
    .locals 3

    .line 43034
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A08:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0J(Lcom/facebook/ads/redexgen/X/PE;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43035
    return-void
.end method

.method public final A0a()V
    .locals 5

    .line 43036
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0E()F

    move-result v0

    float-to-double v3, v0

    const-wide v1, 0x3fa999999999999aL    # 0.05

    cmpg-double v0, v3, v1

    if-gez v0, :cond_1

    .line 43037
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0A:Ljava/lang/Object;

    monitor-enter v1

    .line 43038
    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A04:Z

    if-eqz v0, :cond_0

    .line 43039
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0M()V

    .line 43040
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A04:Z

    .line 43041
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 43042
    :cond_1
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0A:Ljava/lang/Object;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lh;->A0E:[Ljava/lang/String;

    const/4 v0, 0x3

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0xc

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Lh;->A0E:[Ljava/lang/String;

    const-string v1, "VuRTqAbKehm0ieCCc97FMO7JRtU"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    monitor-enter v3

    .line 43043
    :try_start_1
    iget-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A04:Z

    if-nez v0, :cond_2

    .line 43044
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0N()V

    .line 43045
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A04:Z

    .line 43046
    :cond_2
    monitor-exit v3

    .line 43047
    :goto_0
    return-void

    .line 43048
    :catchall_1
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method

.method public final A0b()V
    .locals 4

    .line 43049
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    .line 43050
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A09:Lcom/facebook/ads/redexgen/X/PI;

    .line 43051
    const/4 v0, 0x1

    invoke-virtual {v3, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 43052
    return-void
.end method

.method public final A0c()V
    .locals 2

    .line 43053
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A06:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Wm;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A09:Lcom/facebook/ads/redexgen/X/PI;

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 43054
    return-void
.end method

.method public final A0d(I)V
    .locals 1

    .line 43055
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0g(IZZ)V

    .line 43056
    return-void
.end method

.method public final A0e(I)V
    .locals 2

    .line 43057
    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/facebook/ads/redexgen/X/Lh;->A0g(IZZ)V

    .line 43058
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    .line 43059
    iput v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    .line 43060
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A05()V

    .line 43061
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A04()V

    .line 43062
    return-void
.end method

.method public final A0f(II)V
    .locals 2

    .line 43063
    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0g(IZZ)V

    .line 43064
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    .line 43065
    iput p2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    .line 43066
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A05()V

    .line 43067
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A04()V

    .line 43068
    return-void
.end method

.method public final A0g(IZZ)V
    .locals 5

    .line 43069
    int-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v0, v1, v3

    if-lez v0, :cond_0

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    if-ge p1, v0, :cond_1

    .line 43070
    :cond_0
    return-void

    .line 43071
    :cond_1
    if-le p1, v0, :cond_3

    .line 43072
    iget-object v4, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    sub-int v0, p1, v0

    int-to-float v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr v1, v0

    float-to-double v2, v1

    .line 43073
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Lh;->A0E()F

    move-result v0

    float-to-double v0, v0

    .line 43074
    invoke-virtual {v4, v2, v3, v0, v1}, Lcom/facebook/ads/redexgen/X/bF;->A06(DD)V

    .line 43075
    iput p1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    .line 43076
    if-nez p3, :cond_2

    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    sub-int v1, p1, v0

    const/16 v0, 0x1388

    if-lt v1, v0, :cond_3

    .line 43077
    :cond_2
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A09:Lcom/facebook/ads/redexgen/X/PE;

    .line 43078
    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Lcom/facebook/ads/redexgen/X/PE;I)Ljava/util/Map;

    move-result-object v0

    .line 43079
    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43080
    iget v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A01:I

    iput v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A00:I

    .line 43081
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Lh;->A05:Lcom/facebook/ads/redexgen/X/bF;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bF;->A05()V

    .line 43082
    return-void

    .line 43083
    :cond_3
    if-eqz p2, :cond_4

    .line 43084
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Lh;->A07:Lcom/facebook/ads/redexgen/X/JC;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Lh;->A0B:Ljava/lang/String;

    sget-object v0, Lcom/facebook/ads/redexgen/X/PE;->A09:Lcom/facebook/ads/redexgen/X/PE;

    invoke-direct {p0, v0, p1}, Lcom/facebook/ads/redexgen/X/Lh;->A0K(Lcom/facebook/ads/redexgen/X/PE;I)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JC;->A8w(Ljava/lang/String;Ljava/util/Map;)V

    .line 43085
    :cond_4
    return-void
.end method
