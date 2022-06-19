.class public final Lcom/facebook/ads/redexgen/X/TS;
.super Lcom/facebook/ads/redexgen/X/9H;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/TR;->A05(Lcom/facebook/ads/redexgen/X/J9;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/facebook/ads/redexgen/X/9H<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/J9;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/TR;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/TR;Lcom/facebook/ads/redexgen/X/J9;)V
    .locals 0

    .line 54454
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/TR;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/J9;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/9H;-><init>()V

    return-void
.end method

.method private final A00(Ljava/lang/String;)V
    .locals 1

    .line 54455
    invoke-super {p0, p1}, Lcom/facebook/ads/redexgen/X/9H;->A02(Ljava/lang/Object;)V

    .line 54456
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A00:Lcom/facebook/ads/redexgen/X/J9;

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/J9;->A0B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54457
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/TR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TR;->A00(Lcom/facebook/ads/redexgen/X/TR;)Lcom/facebook/ads/redexgen/X/JB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JB;->A4o()V

    .line 54458
    :goto_0
    return-void

    .line 54459
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TS;->A01:Lcom/facebook/ads/redexgen/X/TR;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/TR;->A00(Lcom/facebook/ads/redexgen/X/TR;)Lcom/facebook/ads/redexgen/X/JB;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/ads/redexgen/X/JB;->A4n()V

    goto :goto_0
.end method


# virtual methods
.method public final A01(ILjava/lang/String;)V
    .locals 0

    .line 54460
    invoke-super {p0, p1, p2}, Lcom/facebook/ads/redexgen/X/9H;->A01(ILjava/lang/String;)V

    .line 54461
    return-void
.end method

.method public final bridge synthetic A02(Ljava/lang/Object;)V
    .locals 0

    .line 54462
    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/TS;->A00(Ljava/lang/String;)V

    return-void
.end method
