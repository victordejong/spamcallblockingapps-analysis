.class public final Lcom/facebook/ads/redexgen/X/TZ;
.super Lcom/facebook/ads/redexgen/X/KO;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/ads/redexgen/X/Ta;->A0C()V
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

    .line 54975
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/KO;-><init>()V

    return-void
.end method


# virtual methods
.method public final A01()V
    .locals 2

    .line 54976
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 54977
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A07()Lcom/facebook/ads/AdListener;

    move-result-object v1

    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/TZ;->A00:Lcom/facebook/ads/redexgen/X/Ta;

    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/Ta;->A01(Lcom/facebook/ads/redexgen/X/Ta;)Lcom/facebook/ads/redexgen/X/4v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/4v;->A08()Lcom/facebook/ads/AdView;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/facebook/ads/AdListener;->onLoggingImpression(Lcom/facebook/ads/Ad;)V

    .line 54978
    :cond_0
    return-void
.end method
