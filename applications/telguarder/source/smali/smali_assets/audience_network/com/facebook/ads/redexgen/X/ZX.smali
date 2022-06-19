.class public final Lcom/facebook/ads/redexgen/X/ZX;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/6e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/ZM;->A0H()Lcom/facebook/ads/redexgen/X/6e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/ZM;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/ZM;)V
    .locals 0

    .line 66364
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A5D()Lcom/facebook/ads/redexgen/X/6t;
    .locals 2

    .line 66365
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/ZM;->A03(Lcom/facebook/ads/redexgen/X/ZM;)Lcom/facebook/ads/redexgen/X/5v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5v;->A0g()Ljava/lang/String;

    move-result-object v1

    .line 66366
    .local p0, "advertisingId":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 66367
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    invoke-virtual {v0, v1}, Lcom/facebook/ads/redexgen/X/6V;->A09(Ljava/lang/String;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    .line 66368
    :goto_0
    return-object v0

    .line 66369
    :cond_0
    iget-object v1, p0, Lcom/facebook/ads/redexgen/X/ZX;->A00:Lcom/facebook/ads/redexgen/X/ZM;

    sget-object v0, Lcom/facebook/ads/redexgen/X/6p;->A07:Lcom/facebook/ads/redexgen/X/6p;

    invoke-virtual {v1, v0}, Lcom/facebook/ads/redexgen/X/6V;->A08(Lcom/facebook/ads/redexgen/X/6p;)Lcom/facebook/ads/redexgen/X/6t;

    move-result-object v0

    goto :goto_0
.end method
