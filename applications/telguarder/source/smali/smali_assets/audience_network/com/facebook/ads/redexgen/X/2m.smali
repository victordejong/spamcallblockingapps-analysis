.class public Lcom/facebook/ads/redexgen/X/2m;
.super Lcom/facebook/ads/redexgen/X/El;
.source ""


# static fields
.field public static A00:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2m;->A00()V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 0

    .line 6018
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/El;-><init>(Landroid/content/Context;)V

    .line 6019
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/2m;->setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/Wm;)V

    .line 6020
    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "4mrgyhu5NuMSfoRJ7wvth"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "0QrbVGKHuGc2eSGsbm7N10peHve4GVgP"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "Meba3O6SWeMBrZzPyfP10SBJe7jX"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "3Oa5wanHMWuCrkjHvXNfwyLB0ZtCKHr4"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "YOQh7xYBrfW2123ECT3lDkRgUFpenV07"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "JuO7BKBrPjkMVs4"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "5m"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "UWhmaXdvjdchgK72Wd2HML9QO634NCpp"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2m;->A00:[Ljava/lang/String;

    return-void
.end method

.method private setCarouselLayoutManager(Lcom/facebook/ads/redexgen/X/Wm;)V
    .locals 3

    .line 6026
    const/4 v0, 0x0

    new-instance v2, Lcom/facebook/ads/redexgen/X/at;

    invoke-direct {v2, p1, v0, v0}, Lcom/facebook/ads/redexgen/X/at;-><init>(Landroid/content/Context;IZ)V

    .line 6027
    .local p0, "linearLayoutManager":Lcom/facebook/ads/redexgen/X/at;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt v1, v0, :cond_0

    .line 6028
    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/facebook/ads/redexgen/X/4K;->A1W(Z)V

    .line 6029
    :cond_0
    invoke-super {p0, v2}, Lcom/facebook/ads/redexgen/X/El;->setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V

    .line 6030
    return-void
.end method


# virtual methods
.method public getFullscreenCarouselRecyclerViewAdapter()Lcom/facebook/ads/redexgen/X/RC;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 6021
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/El;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    instance-of v0, v0, Lcom/facebook/ads/redexgen/X/RC;

    if-eqz v0, :cond_0

    .line 6022
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/El;->getAdapter()Lcom/facebook/ads/redexgen/X/48;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/RC;

    return-object v0

    .line 6023
    :cond_0
    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/ads/redexgen/X/2m;->A00:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v0, v1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v0, 0x2

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2m;->A00:[Ljava/lang/String;

    const-string v1, "XAsjP5XwQSgGjSaOGRXjEIyXW47w"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    return-object v3
.end method

.method public bridge synthetic getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;
    .locals 1

    .line 6024
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2m;->getLayoutManager()Lcom/facebook/ads/redexgen/X/at;

    move-result-object v0

    return-object v0
.end method

.method public getLayoutManager()Lcom/facebook/ads/redexgen/X/at;
    .locals 1

    .line 6025
    invoke-super {p0}, Lcom/facebook/ads/redexgen/X/El;->getLayoutManager()Lcom/facebook/ads/redexgen/X/4K;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/at;

    return-object v0
.end method

.method public setLayoutManager(Lcom/facebook/ads/redexgen/X/4K;)V
    .locals 0

    .line 6031
    return-void
.end method
