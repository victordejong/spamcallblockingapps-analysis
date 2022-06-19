.class public abstract Lcom/facebook/ads/redexgen/X/Sf;
.super Lcom/facebook/ads/redexgen/X/Kd;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/facebook/ads/redexgen/X/Kd;"
    }
.end annotation


# instance fields
.field public final A00:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 52730
    .local p1, "this":Lcom/facebook/ads/redexgen/X/Sf;, "Lcom/facebook/ads/internal/util/common/WeakRunnable<TT;>;"
    .local v0, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Lcom/facebook/ads/redexgen/X/Kd;-><init>()V

    .line 52731
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/ref/WeakReference;

    .line 52732
    return-void
.end method


# virtual methods
.method public final A08()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 52733
    .local v0, "this":Lcom/facebook/ads/redexgen/X/Sf;, "Lcom/facebook/ads/internal/util/common/WeakRunnable<TT;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/Sf;->A00:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
