.class public final Lcom/facebook/ads/redexgen/X/YJ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/Nb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/9g;
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
            "Lcom/facebook/ads/redexgen/X/9g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/9g;)V
    .locals 1

    .line 59313
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59314
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Ljava/lang/ref/WeakReference;

    .line 59315
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 0

    .line 59316
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/YJ;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    return-void
.end method


# virtual methods
.method public final AAJ(Z)V
    .locals 1

    .line 59317
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/YJ;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9g;

    .line 59318
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9g;
    if-eqz v0, :cond_0

    .line 59319
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9g;->A05(Lcom/facebook/ads/redexgen/X/9g;Z)Z

    .line 59320
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9g;->A03(Lcom/facebook/ads/redexgen/X/9g;)V

    .line 59321
    :cond_0
    return-void
.end method
