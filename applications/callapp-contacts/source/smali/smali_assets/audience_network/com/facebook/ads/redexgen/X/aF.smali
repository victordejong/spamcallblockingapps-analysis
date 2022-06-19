.class public final Lcom/facebook/ads/redexgen/X/aF;
.super Lcom/facebook/ads/redexgen/X/Kb;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/aD;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ViewabilityCheckerPostRunnable"
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/QE;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/QE;)V
    .locals 1

    .line 67136
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    .line 67137
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Ljava/lang/ref/WeakReference;

    .line 67138
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/QE;",
            ">;)V"
        }
    .end annotation

    .line 67139
    .local p1, "viewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kb;-><init>()V

    .line 67140
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Ljava/lang/ref/WeakReference;

    .line 67141
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 67142
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/aF;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/QE;

    .line 67143
    .local p0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/QE;
    if-eqz v0, :cond_0

    .line 67144
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/QE;->A0V()V

    .line 67145
    :cond_0
    return-void
.end method
