.class public final Lcom/facebook/ads/redexgen/X/TW;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ta;->A0F(Lcom/facebook/ads/redexgen/X/Jl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ta;

.field public final synthetic A01:Lcom/facebook/ads/redexgen/X/Jl;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ta;Lcom/facebook/ads/redexgen/X/Jl;)V
    .locals 0

    .line 54961
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    iput-object p2, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 3

    .line 54962
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54963
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    .line 54964
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v2

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    .line 54965
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TW;->A01:Lcom/facebook/ads/redexgen/X/Jl;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Jl;->A00(Lcom/facebook/ads/redexgen/X/Jl;)Lcom/facebook/ads/AdError;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Lcom/facebook/ads/AdListener;->onError(Lcom/facebook/ads/Ad;Lcom/facebook/ads/AdError;)V

    .line 54966
    :cond_0
    return-void
.end method
