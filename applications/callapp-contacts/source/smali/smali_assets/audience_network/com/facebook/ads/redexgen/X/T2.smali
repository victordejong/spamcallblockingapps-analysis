.class public final Lcom/facebook/ads/redexgen/X/T2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ev;->A98(Lcom/facebook/ads/redexgen/X/3Q;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ev;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3Q;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ev;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 0

    .line 53297
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/T2;->A00:Lcom/facebook/ads/redexgen/X/Ev;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/T2;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4D(I)Ljava/lang/Object;
    .locals 1

    .line 53298
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    .line 53299
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3Q;->A00(I)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 53300
    .local p0, "compatInfo":Lcom/facebook/ads/redexgen/X/3O;
    if-nez v0, :cond_0

    .line 53301
    const/4 v0, 0x0

    return-object v0

    .line 53302
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3O;->A0N()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A5K(Ljava/lang/String;I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 53303
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    .line 53304
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3Q;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    .line 53305
    .local p0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v4, :cond_0

    .line 53306
    const/4 v0, 0x0

    return-object v0

    .line 53307
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 53308
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 53309
    .local p2, "infoCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 53310
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/3O;

    .line 53311
    .local v4, "infoCompat":Lcom/facebook/ads/redexgen/X/3O;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3O;->A0N()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53312
    .end local v4    # "infoCompat":Lcom/facebook/ads/redexgen/X/3O;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53313
    .end local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method public final ACO(IILandroid/os/Bundle;)Z
    .locals 1

    .line 53314
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/T2;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3Q;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
