.class public final Lcom/facebook/ads/redexgen/X/Ri;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/facebook/ads/redexgen/X/NW;


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

    .line 50346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50347
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Ljava/lang/ref/WeakReference;

    .line 50348
    return-void
.end method

.method public synthetic constructor <init>(Lcom/facebook/ads/redexgen/X/9g;Lcom/facebook/ads/redexgen/X/9l;)V
    .locals 0

    .line 50349
    invoke-direct {p0, p1}, Lcom/facebook/ads/redexgen/X/Ri;-><init>(Lcom/facebook/ads/redexgen/X/9g;)V

    return-void
.end method


# virtual methods
.method public final AAI(Z)V
    .locals 1

    .line 50350
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Ri;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/9g;

    .line 50351
    .local p0, "cardLayout":Lcom/facebook/ads/redexgen/X/9g;
    if-eqz v0, :cond_0

    .line 50352
    invoke-static {v0, p1}, Lcom/facebook/ads/redexgen/X/9g;->A06(Lcom/facebook/ads/redexgen/X/9g;Z)Z

    .line 50353
    invoke-static {v0}, Lcom/facebook/ads/redexgen/X/9g;->A04(Lcom/facebook/ads/redexgen/X/9g;)V

    .line 50354
    :cond_0
    return-void
.end method
