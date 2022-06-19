.class public final Lcom/facebook/ads/redexgen/X/Ej;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/HF;

.field public final A01:Lcom/facebook/ads/redexgen/X/HH;

.field public final A02:Lcom/facebook/ads/redexgen/X/HH;

.field public final A03:Lcom/facebook/ads/redexgen/X/Hh;

.field public final A04:Lcom/facebook/ads/redexgen/X/IQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;)V
    .locals 6

    .line 29778
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/facebook/ads/redexgen/X/Ej;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HF;Lcom/facebook/ads/redexgen/X/IQ;)V

    .line 29779
    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HH;Lcom/facebook/ads/redexgen/X/HF;Lcom/facebook/ads/redexgen/X/IQ;)V
    .locals 0
    .param p3    # Lcom/facebook/ads/redexgen/X/HH;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/facebook/ads/redexgen/X/HF;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/ads/redexgen/X/IQ;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 29780
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29781
    invoke-static {p2}, Lcom/facebook/ads/redexgen/X/Hx;->A01(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29782
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Ej;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    .line 29783
    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Ej;->A02:Lcom/facebook/ads/redexgen/X/HH;

    .line 29784
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/Ej;->A01:Lcom/facebook/ads/redexgen/X/HH;

    .line 29785
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/HF;

    .line 29786
    iput-object p5, p0, Lcom/facebook/ads/redexgen/X/Ej;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    .line 29787
    return-void
.end method


# virtual methods
.method public final A00()Lcom/facebook/ads/redexgen/X/Hh;
    .locals 1

    .line 29788
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    return-object v0
.end method

.method public final A01(Z)Lcom/facebook/ads/redexgen/X/Th;
    .locals 11

    .line 29789
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A01:Lcom/facebook/ads/redexgen/X/HH;

    if-eqz v0, :cond_0

    .line 29790
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v3

    .line 29791
    .local v3, "cacheReadDataSource":Lcom/facebook/ads/redexgen/X/HI;
    :goto_0
    if-eqz p1, :cond_1

    .line 29792
    new-instance v0, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Ej;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    sget-object v2, Lcom/facebook/ads/redexgen/X/Tv;->A03:Lcom/facebook/ads/redexgen/X/Tv;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/facebook/ads/redexgen/X/Th;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V

    return-object v0

    .line 29793
    :cond_0
    new-instance v3, Lcom/facebook/ads/redexgen/X/Tu;

    invoke-direct {v3}, Lcom/facebook/ads/redexgen/X/Tu;-><init>()V

    goto :goto_0

    .line 29794
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A00:Lcom/facebook/ads/redexgen/X/HF;

    if-eqz v0, :cond_3

    .line 29795
    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HF;->createDataSink()Lcom/facebook/ads/redexgen/X/HG;

    move-result-object v8

    .line 29796
    .local v5, "cacheWriteDataSink":Lcom/facebook/ads/redexgen/X/HG;
    :goto_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A02:Lcom/facebook/ads/redexgen/X/HH;

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/HH;->A4B()Lcom/facebook/ads/redexgen/X/HI;

    move-result-object v6

    .line 29797
    .local p0, "upstream":Lcom/facebook/ads/redexgen/X/HI;
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ej;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    if-nez v2, :cond_2

    .line 29798
    .end local p0    # "upstream":Lcom/facebook/ads/redexgen/X/HI;
    .local v2, "upstream":Lcom/facebook/ads/redexgen/X/HI;
    :goto_2
    new-instance v4, Lcom/facebook/ads/redexgen/X/Th;

    iget-object v5, p0, Lcom/facebook/ads/redexgen/X/Ej;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v7, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/ads/redexgen/X/Th;-><init>(Lcom/facebook/ads/redexgen/X/Hh;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/HG;ILcom/facebook/ads/redexgen/X/Hj;)V

    return-object v4

    .line 29799
    :cond_2
    const/16 v1, -0x3e8

    new-instance v0, Lcom/facebook/ads/redexgen/X/Tm;

    invoke-direct {v0, v6, v2, v1}, Lcom/facebook/ads/redexgen/X/Tm;-><init>(Lcom/facebook/ads/redexgen/X/HI;Lcom/facebook/ads/redexgen/X/IQ;I)V

    move-object v6, v0

    goto :goto_2

    .line 29800
    :cond_3
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/Ej;->A03:Lcom/facebook/ads/redexgen/X/Hh;

    const-wide/32 v0, 0x200000

    new-instance v8, Lcom/facebook/ads/redexgen/X/Ti;

    invoke-direct {v8, v2, v0, v1}, Lcom/facebook/ads/redexgen/X/Ti;-><init>(Lcom/facebook/ads/redexgen/X/Hh;J)V

    goto :goto_1
.end method

.method public final A02()Lcom/facebook/ads/redexgen/X/IQ;
    .locals 1

    .line 29801
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ej;->A04:Lcom/facebook/ads/redexgen/X/IQ;

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/IQ;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/IQ;-><init>()V

    goto :goto_0
.end method
