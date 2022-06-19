.class public final Lcom/facebook/ads/redexgen/X/Yp;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/YV;->A0V()Lcom/facebook/ads/redexgen/X/6e;
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

    .line 66007
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66008
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-ge v1, v0, :cond_0

    .line 66009
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A05:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 66010
    :cond_0
    sget-object v0, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    .line 66011
    .local p0, "supportedAbis":[Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 66012
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:Lcom/facebook/ads/redexgen/X/YV;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0F(Ljava/util/List;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66013
    :goto_0
    return-object v0

    .line 66014
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/Yp;->A00:Lcom/facebook/ads/redexgen/X/YV;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
