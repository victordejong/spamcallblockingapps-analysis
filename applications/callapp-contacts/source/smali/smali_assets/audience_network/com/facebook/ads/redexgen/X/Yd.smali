.class public final Lcom/facebook/ads/redexgen/X/Yd;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NM;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0P(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/YV;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/YV;)V
    .locals 0

    .line 61261
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final AAz(Ljava/lang/String;)V
    .locals 2

    .line 61262
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0T(Lcom/facebook/ads/redexgen/X/YV;Z)Z

    .line 61263
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A06(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NF;->setProgress(I)V

    .line 61264
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A06(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 61265
    return-void
.end method

.method public final AB1(Ljava/lang/String;)V
    .locals 2

    .line 61266
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/YV;->A0T(Lcom/facebook/ads/redexgen/X/YV;Z)Z

    .line 61267
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A06(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Q(Landroid/view/View;I)V

    .line 61268
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A05(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NE;->setUrl(Ljava/lang/String;)V

    .line 61269
    return-void
.end method

.method public final ABI(I)V
    .locals 1

    .line 61270
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A0S(Lcom/facebook/ads/redexgen/X/YV;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61271
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A06(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NF;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NF;->setProgress(I)V

    .line 61272
    :cond_0
    return-void
.end method

.method public final ABN(Ljava/lang/String;)V
    .locals 1

    .line 61273
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A05(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/NE;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/NE;->setTitle(Ljava/lang/String;)V

    .line 61274
    return-void
.end method

.method public final ABP()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 61275
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Yd;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/YV;->A08(Lcom/facebook/ads/redexgen/X/YV;)Lcom/facebook/ads/redexgen/X/O1;

    move-result-object v0

    .line 61276
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/O1;->A09()Lcom/facebook/ads/redexgen/X/M9;

    move-result-object v1

    .line 61277
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M9;->A9e(I)V

    .line 61278
    return-void
.end method
