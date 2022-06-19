.class public final Lcom/facebook/ads/redexgen/X/W6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WM;->A0V()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WM;)V
    .locals 0

    .line 56821
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 4

    .line 56822
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A0D(Lcom/facebook/ads/redexgen/X/WM;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56823
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 56824
    .local p0, "listOfRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    .line 56825
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A0D(Lcom/facebook/ads/redexgen/X/WM;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    .line 56826
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A05(Lcom/facebook/ads/redexgen/X/WM;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0U()I

    move-result v0

    .line 56827
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 56828
    .local v0, "loopCount":I
    const/4 v1, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 56829
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WM;->A0D(Lcom/facebook/ads/redexgen/X/WM;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v1

    .line 56830
    .local v3, "requestedPermissionName":Ljava/lang/String;
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56831
    .end local v3    # "requestedPermissionName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 56832
    .end local v0    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    invoke-virtual {v0, v3}, Lcom/facebook/ads/redexgen/X/6V;->A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 56833
    .end local p0    # "listOfRequestedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v0
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/W6;->A00:Lcom/facebook/ads/redexgen/X/WM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0
.end method
