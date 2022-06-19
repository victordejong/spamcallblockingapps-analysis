.class public final Lcom/facebook/ads/redexgen/X/az;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/3S;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Eq;->A9A(Lcom/facebook/ads/redexgen/X/3Q;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A02:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Eq;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/3Q;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/az;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Eq;Lcom/facebook/ads/redexgen/X/3Q;)V
    .locals 0

    .line 69020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/az;->A00:Lcom/facebook/ads/redexgen/X/Eq;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "BxeCSXrFaRj"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "IWeOsMGsO3rBvyiTuJXWjMqB2n5POdot"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "NGgDVvJhpCyddRCxf5O6"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "v7dseD2N"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "b08ux26"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "fg5WsruxE6pK3fVhNLQH97P2VsWOQFn1"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "RDjE3tUyFXCJEzmAXOjq2W6VFZ2zcAes"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "Fn45yaemrdjcOolPakoXMsDmphHClKxa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/az;->A02:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A4A(I)Ljava/lang/Object;
    .locals 1

    .line 69021
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    .line 69022
    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/3Q;->A00(I)Lcom/facebook/ads/redexgen/X/3O;

    move-result-object v0

    .line 69023
    .local p0, "compatInfo":Lcom/facebook/ads/redexgen/X/3O;
    if-nez v0, :cond_0

    .line 69024
    const/4 v0, 0x0

    return-object v0

    .line 69025
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/3O;->A0N()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    return-object v0
.end method

.method public final A5I(Ljava/lang/String;I)Ljava/util/List;
    .locals 8
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

    .line 69026
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    .line 69027
    invoke-virtual {v0, p1, p2}, Lcom/facebook/ads/redexgen/X/3Q;->A03(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v6

    .line 69028
    .local p0, "compatInfos":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/androidx/support/v4/view/accessibility/AccessibilityNodeInfoCompat;>;"
    if-nez v6, :cond_1

    .line 69029
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/az;->A02:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0xb

    if-eq v1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 69030
    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 69031
    .local p1, "infos":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 69032
    .local p2, "infoCount":I
    const/4 v3, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 69033
    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/ads/redexgen/X/3O;

    sget-object v2, Lcom/facebook/ads/redexgen/X/az;->A02:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v2, v2, v0

    const/16 v0, 0x17

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_0

    .line 69034
    .local v6, "infoCompat":Lcom/facebook/ads/redexgen/X/3O;
    sget-object v2, Lcom/facebook/ads/redexgen/X/az;->A02:[Ljava/lang/String;

    const-string v1, "3GGS2FgfxS9PdCMsSIgMeheOLZnf3MlZ"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "aJbfA8b3NLiXQBSk9lndmf25pj9B4jE7"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    invoke-virtual {v7}, Lcom/facebook/ads/redexgen/X/3O;->A0N()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69035
    .end local v6    # "infoCompat":Lcom/facebook/ads/redexgen/X/3O;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    sget-object v2, Lcom/facebook/ads/redexgen/X/az;->A02:[Ljava/lang/String;

    const-string v1, "atS9tmOPh4Y1RWGDtCP1b0ECIDkAYM0P"

    const/4 v0, 0x5

    aput-object v1, v2, v0

    const-string v1, "WZrNDLg8WSJodQHinSBZlHZp62izmcoM"

    const/4 v0, 0x1

    aput-object v1, v2, v0

    return-object v3

    .line 69036
    .end local v0    # "i":I
    :cond_3
    return-object v5
.end method

.method public final ACO(IILandroid/os/Bundle;)Z
    .locals 1

    .line 69037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/az;->A01:Lcom/facebook/ads/redexgen/X/3Q;

    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/3Q;->A04(IILandroid/os/Bundle;)Z

    move-result v0

    return v0
.end method
