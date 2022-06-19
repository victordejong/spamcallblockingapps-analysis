.class public final Lcom/facebook/ads/redexgen/X/Ru;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NW;


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

    .line 51004
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51005
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A00:Ljava/lang/ref/WeakReference;

    .line 51006
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9o;Lcom/facebook/ads/redexgen/X/9t;)V
    .locals 0

    .line 51007
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ru;-><init>(Lcom/facebook/ads/redexgen/X/9o;)V

    return-void
.end method


# virtual methods
.method public final AAI(Z)V
    .locals 1

    .line 51008
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ru;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9o;

    .line 51009
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9o;
    if-eqz v0, :cond_0

    .line 51010
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9o;->A0B(Lcom/facebook/ads/redexgen/X/9o;Z)Z

    .line 51011
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9o;->A09(Lcom/facebook/ads/redexgen/X/9o;)V

    .line 51012
    :cond_0
    return-void
.end method
