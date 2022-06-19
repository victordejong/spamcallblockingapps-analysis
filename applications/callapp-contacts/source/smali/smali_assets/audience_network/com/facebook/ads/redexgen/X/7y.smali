.class public final Lcom/facebook/ads/redexgen/X/7y;
.super Lcom/facebook/ads/redexgen/X/MQ;
.source ""


# instance fields
.field public A00:I

.field public A01:Z

.field public final A02:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/7w;",
            ">;"
        }
    .end annotation
.end field

.field public final A03:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/7v;",
            ">;"
        }
    .end annotation
.end field

.field public final A04:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/KU;",
            ">;"
        }
    .end annotation
.end field

.field public final A05:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/7s;",
            ">;"
        }
    .end annotation
.end field

.field public final A06:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/K8;",
            ">;"
        }
    .end annotation
.end field

.field public final A07:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/K6;",
            ">;"
        }
    .end annotation
.end field

.field public final A08:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/K5;",
            ">;"
        }
    .end annotation
.end field

.field public final A09:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/K0;",
            ">;"
        }
    .end annotation
.end field

.field public final A0A:Lcom/facebook/ads/redexgen/X/9G;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/9G<",
            "Lcom/facebook/ads/redexgen/X/Jy;",
            ">;"
        }
    .end annotation
.end field

.field public final A0B:Lcom/facebook/ads/redexgen/X/PD;

.field public final A0C:Lcom/facebook/ads/redexgen/X/KL;

.field public final A0D:Lcom/facebook/ads/redexgen/X/K1;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;)V
    .locals 6

    .line 16869
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v5, p4

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;)V

    .line 16870
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 8
    .param p5    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 16871
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v7, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v6, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 16872
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/lang/String;Ljava/util/Map;)V
    .locals 8
    .param p5    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16873
    .local v7, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    move-object v3, p3

    move-object v7, p5

    move-object v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/ads/redexgen/X/7y;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V

    .line 16874
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16875
    .local v9, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    move-object v8, p3

    invoke-virtual {v8}, Lcom/facebook/ads/redexgen/X/PD;->A0e()Z

    move-result v0

    .line 16876
    const/4 v4, 0x1

    xor-int/lit8 v11, v0, 0x1

    move-object v5, p0

    move-object v7, p2

    move-object v6, p1

    move-object/from16 v10, p5

    move-object/from16 v9, p4

    invoke-direct/range {v5 .. v11}, Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PI;Ljava/util/List;Ljava/lang/String;Z)V

    .line 16877
    new-instance v0, Lcom/facebook/ads/redexgen/X/7z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7z;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    .line 16878
    new-instance v0, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A07:Lcom/facebook/ads/redexgen/X/9G;

    .line 16879
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nt;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Lcom/facebook/ads/redexgen/X/9G;

    .line 16880
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Lcom/facebook/ads/redexgen/X/9G;

    .line 16881
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ne;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Lcom/facebook/ads/redexgen/X/9G;

    .line 16882
    new-instance v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/9G;

    .line 16883
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A06:Lcom/facebook/ads/redexgen/X/9G;

    .line 16884
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A09:Lcom/facebook/ads/redexgen/X/9G;

    .line 16885
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0A:Lcom/facebook/ads/redexgen/X/9G;

    .line 16886
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A08:Lcom/facebook/ads/redexgen/X/9G;

    .line 16887
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/81;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    .line 16888
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Z

    .line 16889
    iput-object v8, p0, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    .line 16890
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    .line 16891
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v3

    const/16 v0, 0xb

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v4

    const/4 v1, 0x2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A07:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A06:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A09:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0A:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    aput-object v0, v2, v1

    const/16 v1, 0xa

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A08:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    .line 16892
    invoke-virtual {v3, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16893
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PD;Ljava/util/List;Ljava/lang/String;Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 15
    .param p6    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/ads/redexgen/X/XJ;",
            "Lcom/facebook/ads/redexgen/X/JC;",
            "Lcom/facebook/ads/redexgen/X/PD;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 16894
    .local v9, "adQualityRules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    .local v13, "extraParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v3, p0

    .line 16895
    move-object/from16 v9, p3

    invoke-virtual {v9}, Lcom/facebook/ads/redexgen/X/PD;->A0e()Z

    move-result v0

    .line 16896
    const/4 v5, 0x1

    xor-int/lit8 v12, v0, 0x1

    move-object v6, p0

    move-object/from16 v13, p6

    move-object/from16 v8, p2

    move-object/from16 v14, p7

    move-object/from16 v7, p1

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v6 .. v14}, Lcom/facebook/ads/redexgen/X/MQ;-><init>(Lcom/facebook/ads/redexgen/X/XJ;Lcom/facebook/ads/redexgen/X/JC;Lcom/facebook/ads/redexgen/X/PI;Ljava/util/List;Ljava/lang/String;ZLandroid/os/Bundle;Ljava/util/Map;)V

    .line 16897
    new-instance v0, Lcom/facebook/ads/redexgen/X/7z;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/7z;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    .line 16898
    new-instance v0, Lcom/facebook/ads/redexgen/X/O9;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/O9;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A07:Lcom/facebook/ads/redexgen/X/9G;

    .line 16899
    new-instance v0, Lcom/facebook/ads/redexgen/X/Nt;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Nt;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A03:Lcom/facebook/ads/redexgen/X/9G;

    .line 16900
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ns;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ns;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A04:Lcom/facebook/ads/redexgen/X/9G;

    .line 16901
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ne;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ne;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A05:Lcom/facebook/ads/redexgen/X/9G;

    .line 16902
    new-instance v0, Lcom/facebook/ads/redexgen/X/NL;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/NL;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/9G;

    .line 16903
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mm;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mm;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A06:Lcom/facebook/ads/redexgen/X/9G;

    .line 16904
    new-instance v0, Lcom/facebook/ads/redexgen/X/Mb;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Mb;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A09:Lcom/facebook/ads/redexgen/X/9G;

    .line 16905
    new-instance v0, Lcom/facebook/ads/redexgen/X/Ma;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Ma;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0A:Lcom/facebook/ads/redexgen/X/9G;

    .line 16906
    new-instance v0, Lcom/facebook/ads/redexgen/X/Op;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Op;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A08:Lcom/facebook/ads/redexgen/X/9G;

    .line 16907
    new-instance v0, Lcom/facebook/ads/redexgen/X/81;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/81;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    iput-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    .line 16908
    const/4 v1, 0x0

    iput-boolean v1, v3, Lcom/facebook/ads/redexgen/X/7y;->A01:Z

    .line 16909
    iput-object v9, v3, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    .line 16910
    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    .line 16911
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getEventBus()Lcom/facebook/ads/redexgen/X/9F;

    move-result-object v4

    const/16 v0, 0xa

    new-array v2, v0, [Lcom/facebook/ads/redexgen/X/9G;

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    aput-object v0, v2, v1

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A05:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v5

    const/4 v1, 0x2

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A07:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x3

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A04:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x4

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A03:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x5

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x6

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A06:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/4 v1, 0x7

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A09:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/16 v1, 0x8

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A0A:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    const/16 v1, 0x9

    iget-object v0, v3, Lcom/facebook/ads/redexgen/X/7y;->A08:Lcom/facebook/ads/redexgen/X/9G;

    aput-object v0, v2, v1

    .line 16912
    invoke-virtual {v4, v2}, Lcom/facebook/ads/redexgen/X/9F;->A04([Lcom/facebook/ads/redexgen/X/9G;)V

    .line 16913
    return-void
.end method

.method public static synthetic A00(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16914
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0A:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A01(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16915
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A08:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A02(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16916
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A05:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A03(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16917
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A07:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A04(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16918
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A04:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A05(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16919
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A03:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A06(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16920
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A02:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A07(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16921
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A06:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A08(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/9G;
    .locals 0

    .line 16922
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A09:Lcom/facebook/ads/redexgen/X/9G;

    return-object p0
.end method

.method public static synthetic A09(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/PD;
    .locals 0

    .line 16923
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    return-object p0
.end method

.method public static synthetic A0A(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/KL;
    .locals 0

    .line 16924
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0C:Lcom/facebook/ads/redexgen/X/KL;

    return-object p0
.end method

.method public static synthetic A0B(Lcom/facebook/ads/redexgen/X/7y;)Lcom/facebook/ads/redexgen/X/K1;
    .locals 0

    .line 16925
    iget-object p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0D:Lcom/facebook/ads/redexgen/X/K1;

    return-object p0
.end method

.method public static synthetic A0C(Lcom/facebook/ads/redexgen/X/7y;)Z
    .locals 0

    .line 16926
    iget-boolean p0, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Z

    return p0
.end method

.method public static synthetic A0D(Lcom/facebook/ads/redexgen/X/7y;Z)Z
    .locals 0

    .line 16927
    iput-boolean p1, p0, Lcom/facebook/ads/redexgen/X/7y;->A01:Z

    return p1
.end method


# virtual methods
.method public final A0h()V
    .locals 2

    .line 16928
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7y;->A0B:Lcom/facebook/ads/redexgen/X/PD;

    .line 16929
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/PD;->getStateHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v0, Lcom/facebook/ads/redexgen/X/Oo;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/Oo;-><init>(Lcom/facebook/ads/redexgen/X/7y;)V

    .line 16930
    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 16931
    return-void
.end method
