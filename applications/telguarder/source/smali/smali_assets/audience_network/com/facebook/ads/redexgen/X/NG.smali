.class public final Lcom/facebook/ads/redexgen/X/NG;
.super Lcom/facebook/ads/redexgen/X/9G;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/7y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9G<",
        "Lcom/facebook/ads/redexgen/X/KP;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/7y;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/7y;)V
    .locals 0

    .line 44873
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/NG;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9G;-><init>()V

    return-void
.end method

.method private final A00(Lcom/facebook/ads/redexgen/X/KP;)V
    .locals 2

    .line 44874
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NG;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/7y;->A0C(Lcom/facebook/ads/redexgen/X/7y;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 44875
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/NG;->A00:Lcom/facebook/ads/redexgen/X/7y;

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/facebook/ads/redexgen/X/7y;->A0D(Lcom/facebook/ads/redexgen/X/7y;Z)Z

    .line 44876
    return-void

    .line 44877
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/NG;->A00:Lcom/facebook/ads/redexgen/X/7y;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Lh;->A0Y()V

    .line 44878
    return-void
.end method


# virtual methods
.method public final A02()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/facebook/ads/redexgen/X/KP;",
            ">;"
        }
    .end annotation

    .line 44879
    const-class v0, Lcom/facebook/ads/redexgen/X/KP;

    return-object v0
.end method

.method public final bridge synthetic A04(Lcom/facebook/ads/redexgen/X/9E;)V
    .locals 0

    .line 44880
    check-cast p1, Lcom/facebook/ads/redexgen/X/KP;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/NG;->A00(Lcom/facebook/ads/redexgen/X/KP;)V

    return-void
.end method
