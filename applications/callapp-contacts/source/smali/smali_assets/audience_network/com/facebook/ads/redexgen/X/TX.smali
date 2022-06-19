.class public final Lcom/facebook/ads/redexgen/X/TX;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ta;->A0D(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic A00:Lcom/facebook/ads/redexgen/X/Ta;


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Ta;)V
    .locals 0

    .line 54967
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TX;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 54968
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TX;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54969
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TX;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TX;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onAdLoaded(Lcom/facebook/ads/Ad;)V

    .line 54970
    :cond_0
    return-void
.end method
