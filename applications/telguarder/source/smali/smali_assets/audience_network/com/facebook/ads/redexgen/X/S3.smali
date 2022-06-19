.class public final Lcom/facebook/ads/redexgen/X/S3;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/ads/redexgen/X/S1;
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
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/ads/redexgen/X/Q9;)V
    .locals 1

    .line 51239
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    .line 51240
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Ljava/lang/ref/WeakReference;

    .line 51241
    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/facebook/ads/redexgen/X/Q9;",
            ">;)V"
        }
    .end annotation

    .line 51242
    .local p1, "viewabilityChecker":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lcom/facebook/ads/internal/viewability/AdViewabilityChecker;>;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    .line 51243
    iput-object p1, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Ljava/lang/ref/WeakReference;

    .line 51244
    return-void
.end method


# virtual methods
.method public final A07()V
    .locals 1

    .line 51245
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/S3;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/ads/redexgen/X/Q9;

    .line 51246
    .local p0, "viewabilityChecker":Lcom/facebook/ads/redexgen/X/Q9;
    if-eqz v0, :cond_0

    .line 51247
    invoke-virtual {v0}, Lcom/facebook/ads/redexgen/X/Q9;->A0V()V

    .line 51248
    :cond_0
    return-void
.end method
