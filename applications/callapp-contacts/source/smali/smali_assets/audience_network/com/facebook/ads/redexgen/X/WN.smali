.class public final Lcom/facebook/ads/redexgen/X/WN;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WQ;->A0I()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/WQ;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WQ;)V
    .locals 0

    .line 57026
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 57027
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/WQ;->A01(Lcom/facebook/ads/redexgen/X/WQ;)Landroid/os/PowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x7

    if-lt v1, v0, :cond_0

    .line 57028
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    invoke-static {v1}, Lcom/facebook/ads/redexgen/X/WQ;->A05(Lcom/facebook/ads/redexgen/X/WQ;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A0G(Z)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 57029
    :goto_0
    return-object v0

    .line 57030
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/WN;->A00:Lcom/facebook/ads/redexgen/X/WQ;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
