.class public final Lcom/facebook/ads/redexgen/X/ZR;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlaceholderDownloadListener"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/9o;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9o;)V
    .locals 1

    .line 64609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64610
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:Ljava/lang/ref/WeakReference;

    .line 64611
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9t;)V
    .locals 0

    .line 64612
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/ZR;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    return-void
.end method


# virtual methods
.method public final AAJ(Z)V
    .locals 1

    .line 64613
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/ZR;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9o;

    .line 64614
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9o;
    if-eqz v0, :cond_0

    .line 64615
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9o;->A09(Lcom/facebook/ads/redexgen/X/9o;Z)Z

    .line 64616
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A07(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 64617
    :cond_0
    return-void
.end method
