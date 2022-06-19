.class public final Lcom/facebook/ads/redexgen/X/UV;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Uj;->A0J()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Uj;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Uj;)V
    .locals 0

    .line 55967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5F()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 55968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A03(Lcom/facebook/ads/redexgen/X/Uj;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0a()Lcom/facebook/ads/redexgen/X/6i;

    move-result-object v1

    sget-object v0, Lcom/facebook/ads/redexgen/X/6i;->A0I:Lcom/facebook/ads/redexgen/X/6i;

    if-ne v1, v0, :cond_0

    .line 55969
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A04:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    return-object v0

    .line 55970
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Uj;->A06(Lcom/facebook/ads/redexgen/X/Uj;)Lcom/facebook/ads/redexgen/X/6y;

    move-result-object v1

    const/16 v0, 0x271a

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6y;->A07(I)Ljava/lang/String;

    move-result-object v1

    .line 55971
    .local p0, "appDexMd5":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 55972
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 55973
    :goto_0
    return-object v0

    .line 55974
    :cond_1
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/UV;->A00:Lcom/facebook/ads/redexgen/X/Uj;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
