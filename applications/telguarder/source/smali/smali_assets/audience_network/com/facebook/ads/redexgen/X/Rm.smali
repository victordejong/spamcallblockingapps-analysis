.class public final Lcom/facebook/ads/redexgen/X/Rm;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NH;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Rk;->A0P(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Rk;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/Rm;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Rk;)V
    .locals 0

    .line 50658
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "0IWxVXXRRyrfXituMG0MKZUDuIqsl0nS"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "iFEkP7lMlSb3MIrpBEe"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "bHzXbMjeFinYdGjc7Qm9qOqrIF16GyDh"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ANnZEUiVfg4v9RDBv3oIeuyzfP1L1ilL"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "ZHlzkbulXb9oJiJFwG5A8v0"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "3vvTaLxNjakLC6qh447"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "j3NWNduKZlhZmebd8qlRDQkoWxEby4gW"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "sf0StmPc2fytlEzrCllY7m7wK7XZq6H2"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final AAz(Ljava/lang/String;)V
    .locals 2

    .line 50659
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0T(Lcom/facebook/ads/redexgen/X/Rk;Z)Z

    .line 50660
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A06(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    const/16 v0, 0x64

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/NA;->setProgress(I)V

    .line 50661
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A06(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    const/16 v0, 0x8

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 50662
    return-void
.end method

.method public final AB1(Ljava/lang/String;)V
    .locals 2

    .line 50663
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0T(Lcom/facebook/ads/redexgen/X/Rk;Z)Z

    .line 50664
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A06(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/Lj;->A0P(Landroid/view/View;I)V

    .line 50665
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A05(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N9;->setUrl(Ljava/lang/String;)V

    .line 50666
    return-void
.end method

.method public final ABI(I)V
    .locals 4

    .line 50667
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A0S(Lcom/facebook/ads/redexgen/X/Rk;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 50668
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A06(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/NA;

    move-result-object v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v1, v2, v0

    const/4 v0, 0x5

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/Rm;->A01:[Ljava/lang/String;

    const-string v1, "YQO4kpCP8qhQ8LJxgGrEet7g6BIE6a7Y"

    const/4 v0, 0x3

    aput-object v1, v2, v0

    invoke-virtual {v3, p1}, Lcom/facebook/ads/redexgen/X/NA;->setProgress(I)V

    .line 50669
    :cond_1
    return-void
.end method

.method public final ABN(Ljava/lang/String;)V
    .locals 1

    .line 50670
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A05(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/N9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/facebook/ads/redexgen/X/N9;->setTitle(Ljava/lang/String;)V

    .line 50671
    return-void
.end method

.method public final ABP()V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 50672
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Rm;->A00:Lcom/facebook/ads/redexgen/X/Rk;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Rk;->A08(Lcom/facebook/ads/redexgen/X/Rk;)Lcom/facebook/ads/redexgen/X/Nw;

    move-result-object v0

    .line 50673
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Nw;->A09()Lcom/facebook/ads/redexgen/X/M7;

    move-result-object v1

    .line 50674
    const/16 v0, 0xe

    invoke-interface {v1, v0}, Lcom/facebook/ads/redexgen/X/M7;->A9d(I)V

    .line 50675
    return-void
.end method
