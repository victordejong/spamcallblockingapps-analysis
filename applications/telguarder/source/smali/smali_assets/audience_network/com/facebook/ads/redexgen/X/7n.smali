.class public final Lcom/facebook/ads/redexgen/X/7n;
.super Lcom/facebook/ads/redexgen/X/K9;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/JG;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/JG;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/JG;)V
    .locals 0

    .line 16915
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/K9;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/7s;)V
    .locals 3

    .line 16916
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A09(Lcom/facebook/ads/redexgen/X/JG;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/JG;

    sget-object v0, Lcom/facebook/ads/redexgen/X/Pf;->A04:Lcom/facebook/ads/redexgen/X/Pf;

    .line 16917
    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A0B(Lcom/facebook/ads/redexgen/X/JG;Lcom/facebook/ads/redexgen/X/Pf;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16918
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/JG;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/JG;->A05(Lcom/facebook/ads/redexgen/X/JG;)V

    .line 16919
    iget-object v2, p0, Lcom/facebook/ads/redexgen/X/7n;->A00:Lcom/facebook/ads/redexgen/X/JG;

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-static {v2, v1, v0}, Lcom/facebook/ads/redexgen/X/JG;->A06(Lcom/facebook/ads/redexgen/X/JG;ZZ)V

    .line 16920
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 16921
    check-cast p1, Lcom/facebook/ads/redexgen/X/7s;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/7n;->A00(Lcom/facebook/ads/redexgen/X/7s;)V

    return-void
.end method
