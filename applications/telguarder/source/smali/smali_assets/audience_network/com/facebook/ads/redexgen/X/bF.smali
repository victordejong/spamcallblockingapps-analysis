.class public final Lcom/facebook/ads/redexgen/X/bF;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/LT;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/facebook/ads/redexgen/X/LT<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# static fields
.field public static A04:[B


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/27;

.field public final A01:Landroid/view/View;

.field public final A02:Lcom/facebook/ads/redexgen/X/Wm;

.field public final A03:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/bE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/bF;->A01()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Landroid/os/Bundle;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 69203
    .local v1, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69204
    iput-object p4, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69205
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/view/View;

    .line 69206
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    .line 69207
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 69208
    .local p0, "testStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const/4 v4, 0x0

    .local p1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 69209
    iget-object v3, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/25;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bE;

    invoke-direct {v0, v2, v1}, Lcom/facebook/ads/redexgen/X/bE;-><init>(Lcom/facebook/ads/redexgen/X/25;Landroid/os/Bundle;)V

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69210
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 69211
    .end local p1    # "i":I
    :cond_0
    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A00([B)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/27;

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    .line 69212
    return-void
.end method

.method public constructor <init>(Landroid/view/View;Ljava/util/List;Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/ads/redexgen/X/25;",
            ">;",
            "Lcom/facebook/ads/redexgen/X/Wm;",
            ")V"
        }
    .end annotation

    .line 69213
    .local v3, "rules":Ljava/util/List;, "Ljava/util/List<Lcom/facebook/ads/internal/adquality/AdQualityRule;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69214
    iput-object p3, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    .line 69215
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/view/View;

    .line 69216
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    .line 69217
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/ads/redexgen/X/25;

    .line 69218
    .local p1, "rule":Lcom/facebook/ads/redexgen/X/25;
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    new-instance v0, Lcom/facebook/ads/redexgen/X/bE;

    invoke-direct {v0, v2}, Lcom/facebook/ads/redexgen/X/bE;-><init>(Lcom/facebook/ads/redexgen/X/25;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69219
    .end local p1    # "rule":Lcom/facebook/ads/redexgen/X/25;
    goto :goto_0

    .line 69220
    :cond_0
    new-instance v0, Lcom/facebook/ads/redexgen/X/27;

    invoke-direct {v0}, Lcom/facebook/ads/redexgen/X/27;-><init>()V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    .line 69221
    return-void
.end method

.method public static A00(III)Ljava/lang/String;
    .locals 2

    sget-object v1, Lcom/facebook/ads/redexgen/X/bF;->A04:[B

    add-int v0, p0, p1

    invoke-static {v1, p0, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_0

    aget-byte v0, p0, v1

    sub-int/2addr v0, p2

    add-int/lit8 v0, v0, -0x24

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

    const/16 v0, 0xf

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/ads/redexgen/X/bF;->A04:[B

    return-void

    :array_0
    .array-data 1
        -0xbt
        -0xat
        -0x1dt
        -0xat
        -0x15t
        -0xbt
        -0xat
        -0x15t
        -0x1bt
        -0xbt
        -0x3ct
        -0x4bt
        -0x3dt
        -0x3ct
        -0x3dt
    .end array-data
.end method


# virtual methods
.method public final A02()Landroid/os/Bundle;
    .locals 5

    .line 69222
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 69223
    .local p0, "bundle":Landroid/os/Bundle;
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/LN;->A02(Ljava/io/Serializable;)[B

    move-result-object v3

    const/4 v2, 0x0

    const/16 v1, 0xa

    const/16 v0, 0x7e

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 69224
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 69225
    .local v4, "testStates":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Bundle;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bE;

    .line 69226
    .local v3, "test":Lcom/facebook/ads/redexgen/X/bE;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bE;->A06()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69227
    .end local v3    # "test":Lcom/facebook/ads/redexgen/X/bE;
    goto :goto_0

    .line 69228
    :cond_0
    const/16 v2, 0xa

    const/4 v1, 0x5

    const/16 v0, 0x4c

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/bF;->A00(III)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v3}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 69229
    return-object v4
.end method

.method public final A03()Lcom/facebook/ads/redexgen/X/27;
    .locals 1

    .line 69230
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    return-object v0
.end method

.method public final A04()V
    .locals 2

    .line 69231
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A03()V

    .line 69232
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bE;

    .line 69233
    .local v0, "test":Lcom/facebook/ads/redexgen/X/bE;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/bE;->A07()V

    .line 69234
    .end local v0    # "test":Lcom/facebook/ads/redexgen/X/bE;
    goto :goto_0

    .line 69235
    :cond_0
    return-void
.end method

.method public final A05()V
    .locals 1

    .line 69236
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/27;->A02()V

    .line 69237
    return-void
.end method

.method public final A06(DD)V
    .locals 4

    .line 69238
    const-wide/16 v1, 0x0

    cmpl-double v0, p3, v1

    if-ltz v0, :cond_0

    .line 69239
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/facebook/ads/redexgen/X/27;->A05(DD)V

    .line 69240
    :cond_0
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/bF;->A01:Landroid/view/View;

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A02:Lcom/facebook/ads/redexgen/X/Wm;

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0E(Landroid/view/View;ILcom/facebook/ads/redexgen/X/Wm;)Lcom/facebook/ads/redexgen/X/QA;

    move-result-object v0

    .line 69241
    .local p0, "result":Lcom/facebook/ads/redexgen/X/QA;
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QA;->A00()F

    move-result v0

    float-to-double v1, v0

    .line 69242
    .local p1, "viewableRatio":D
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A00:Lcom/facebook/ads/redexgen/X/27;

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/27;->A04(DD)V

    .line 69243
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/bF;->A03:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/bE;

    .line 69244
    .local p0, "test":Lcom/facebook/ads/redexgen/X/bE;
    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/facebook/ads/redexgen/X/bE;->A08(DD)V

    .line 69245
    .end local p0    # "test":Lcom/facebook/ads/redexgen/X/bE;
    goto :goto_0

    .line 69246
    :cond_1
    return-void
.end method
