.class public final Lcom/facebook/ads/redexgen/X/Xo;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/8H;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Xs;->A76(Lcom/facebook/ads/redexgen/X/8D;)Lcom/facebook/ads/redexgen/X/8H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/8D;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Xs;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Xs;Lcom/facebook/ads/redexgen/X/8D;)V
    .locals 0

    .line 58133
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/Xo;->A01:Lcom/facebook/ads/redexgen/X/Xs;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/Xo;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final A6V()Ljava/lang/String;
    .locals 1

    .line 58134
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Xo;->A00:Lcom/facebook/ads/redexgen/X/8D;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/KI;->A04(Lcom/facebook/ads/redexgen/X/8D;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final A7x()Z
    .locals 1

    .line 58135
    invoke-static {}, Lcom/facebook/ads/internal/api/BuildConfigApi;->isDebug()Z

    move-result v0

    return v0
.end method
