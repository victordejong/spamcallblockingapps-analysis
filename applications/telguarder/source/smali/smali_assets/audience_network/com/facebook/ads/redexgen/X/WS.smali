.class public final Lcom/facebook/ads/redexgen/X/WS;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8G;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/WN;->A6M(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8G;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/WN;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/WN;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 64365
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/WS;->A01:Lcom/facebook/ads/redexgen/X/WN;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/WS;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A4Q()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64366
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/WS;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/94;->A01(Lcom/facebook/ads/redexgen/X/8D;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A5b()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64367
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A02()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final A6f()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 64368
    invoke-static {}, Lcom/facebook/ads/redexgen/X/8n;->A00()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A6h()Ljava/lang/String;
    .locals 1

    .line 64369
    invoke-static {}, Lcom/facebook/ads/redexgen/X/5b;->A00()Lcom/facebook/ads/redexgen/X/5Z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/5Z;->A03()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A85()Z
    .locals 1

    .line 64370
    invoke-static {}, Lcom/facebook/ads/redexgen/X/Kx;->A00()Lcom/facebook/ads/redexgen/X/Kx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Kx;->A03()Z

    move-result v0

    return v0
.end method
