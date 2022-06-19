.class public final Lcom/facebook/ads/redexgen/X/Zn;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/DU;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/Zp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PatReader"
.end annotation


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/IL;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Zp;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Zp;)V
    .locals 2

    .line 66020
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66021
    const/4 v0, 0x4

    new-array v1, v0, [B

    new-instance v0, Lcom/facebook/ads/redexgen/X/IL;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;-><init>([B)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    .line 66022
    return-void
.end method


# virtual methods
.method public final A49(Lcom/facebook/ads/redexgen/X/IM;)V
    .locals 7

    .line 66023
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A0F()I

    move-result v0

    .line 66024
    .local p0, "tableId":I
    if-eqz v0, :cond_0

    .line 66025
    return-void

    .line 66026
    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Lcom/facebook/ads/redexgen/X/IM;->A0a(I)V

    .line 66027
    invoke-virtual {p1}, Lcom/facebook/ads/redexgen/X/IM;->A05()I

    move-result v6

    const/4 v5, 0x4

    div-int/2addr v6, v5

    .line 66028
    .local p1, "programCount":I
    const/4 v4, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v4, v6, :cond_2

    .line 66029
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {p1, v0, v5}, Lcom/facebook/ads/redexgen/X/IM;->A0b(Lcom/facebook/ads/redexgen/X/IL;I)V

    .line 66030
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v2

    .line 66031
    .local v6, "programNumber":I
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 66032
    const/16 v1, 0xd

    if-nez v2, :cond_1

    .line 66033
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A09(I)V

    .line 66034
    .end local v6    # "programNumber":I
    .end local v5
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 66035
    :cond_1
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A00:Lcom/facebook/ads/redexgen/X/IL;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/IL;->A05(I)I

    move-result v3

    .line 66036
    .local v5, "pid":I
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A07(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseArray;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    new-instance v1, Lcom/facebook/ads/redexgen/X/Zo;

    invoke-direct {v1, v0, v3}, Lcom/facebook/ads/redexgen/X/Zo;-><init>(Lcom/facebook/ads/redexgen/X/Zp;I)V

    new-instance v0, Lcom/facebook/ads/redexgen/X/Zk;

    invoke-direct {v0, v1}, Lcom/facebook/ads/redexgen/X/Zk;-><init>(Lcom/facebook/ads/redexgen/X/DU;)V

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 66037
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A01(Lcom/facebook/ads/redexgen/X/Zp;)I

    goto :goto_1

    .line 66038
    .end local v0    # "i":I
    :cond_2
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A02(Lcom/facebook/ads/redexgen/X/Zp;)I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_3

    .line 66039
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Zn;->A01:Lcom/facebook/ads/redexgen/X/Zp;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Zp;->A07(Lcom/facebook/ads/redexgen/X/Zp;)Landroid/util/SparseArray;

    move-result-object v1

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 66040
    :cond_3
    return-void
.end method

.method public final A7s(Lcom/facebook/ads/redexgen/X/IY;Lcom/facebook/ads/redexgen/X/CI;Lcom/facebook/ads/redexgen/X/Da;)V
    .locals 0

    .line 66041
    return-void
.end method
