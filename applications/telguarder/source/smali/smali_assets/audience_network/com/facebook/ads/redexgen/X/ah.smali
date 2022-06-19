.class public final Lcom/facebook/ads/redexgen/X/ah;
.super Lcom/facebook/ads/redexgen/X/2d;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/ag;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ItemDelegate"
.end annotation


# static fields
.field public static A01:[Ljava/lang/String;


# instance fields
.field public final A00:Lcom/facebook/ads/redexgen/X/ag;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/ah;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ag;)V
    .locals 0

    .line 67611
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/2d;-><init>()V

    .line 67612
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    .line 67613
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "TEi6qE8rkCQGgGy4v7NzSxsVq0pzva7O"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "YDOvw0rnr4UKw3Mnxoslotwc24p8"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "a0zjiBNZeYiCSuvwyHtYeell8KyTQ5xY"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "ogjV6WpDB35FLp8RKY"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "WANqVRIVKxhPnPWopei7e1k0CZWy62T"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "aZZWj5Yt51SqLR33GVZjsdPHZCc7cpWa"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "7MlacYU9Pwo9bfliYZC3slRrct3tH7Ko"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "0XE4m45s2Z74YdVCvJuFI2R02XTQtmXa"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/ah;->A01:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V
    .locals 4

    .line 67614
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/2d;->A08(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 67615
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    .line 67616
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67617
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/ah;->A01:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v0, 0x1c

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 67618
    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/ah;->A01:[Ljava/lang/String;

    const-string v1, "lLG2rM4BR6TSMRI6WEis0bH1e3aTZeM"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    invoke-virtual {v3, p1, p2}, Lcom/facebook/ads/redexgen/X/4K;->A1D(Landroid/view/View;Lcom/facebook/ads/redexgen/X/3O;)V

    .line 67619
    :cond_1
    return-void
.end method

.method public final A09(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    .line 67620
    invoke-super {p0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/2d;->A09(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67621
    const/4 v0, 0x1

    return v0

    .line 67622
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/ag;->A0B()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    .line 67623
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 67624
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ah;->A00:Lcom/facebook/ads/redexgen/X/ag;

    iget-object v0, v0, Lcom/facebook/ads/redexgen/X/ag;->A01:Lcom/facebook/ads/redexgen/X/El;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    .line 67625
    invoke-virtual {v0, p1, p2, p3}, Lcom/facebook/ads/redexgen/X/4K;->A1c(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    .line 67626
    return v0

    .line 67627
    :cond_1
    const/4 v0, 0x0

    return v0
.end method
